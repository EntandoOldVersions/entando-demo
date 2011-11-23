/*
*
* Copyright 2005 AgileTec s.r.l. (http://www.agiletec.it) All rights reserved.
*
* This file is part of jAPS software.
* jAPS is a free software; 
* you can redistribute it and/or modify it
* under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; version 2.
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2005 AgileTec s.r.l. (http://www.agiletec.it) All rights reserved.
*
*/
package com.agiletec.plugins.jpcmsshortcut.aps.system.services.dispenser;

import java.util.ArrayList;
import java.util.List;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.common.entity.model.attribute.AttributeRole;
import com.agiletec.aps.system.services.authorization.IApsAuthority;
import com.agiletec.aps.system.services.group.Group;
import com.agiletec.aps.system.services.role.Role;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.content.ContentManager;
import com.agiletec.plugins.jacms.aps.system.services.content.model.Content;
import com.agiletec.plugins.jacms.aps.system.services.dispenser.BaseContentDispenser;
import com.agiletec.plugins.jacms.aps.system.services.dispenser.ContentAuthorizationInfo;
import com.agiletec.plugins.jacms.aps.system.services.dispenser.ContentRenderizationInfo;
import java.util.Collections;

/**
 * Fornisce i contenuti formattati.
 * Il compito del servizio, in fase di richiesta di un contenuto formattato, è quello di 
 * controllare preliminarmente le autorizzazzioni dell'utente corrente all'accesso al contenuto;
 * successivamente (in caso di autorizzazioni valide) restituisce il contenuto formattato.
 * @author M.Diana - E.Santoboni
 */
public class ContentDispenser extends BaseContentDispenser {
	
	protected ContentRenderizationInfo getRenderizationInfo(ContentAuthorizationInfo authInfo, Content contentToRender,
			String contentId, long modelId, String langCode, RequestContext reqCtx) {
		ContentRenderizationInfo renderInfo = null;
		try {
			UserDetails currentUser = (null != reqCtx) ? (UserDetails) reqCtx.getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER) : null;
			List<Group> userGroups = (null != currentUser) ? this.getAuthorizationManager().getUserGroups(currentUser) : new ArrayList<Group>();
			if (authInfo.isUserAllowed(userGroups)) {
				String cacheKey = this.getRenderizationInfoCacheKey(contentId, modelId, langCode, reqCtx);//ContentManager.getRenderedContentCacheKey(contentId, modelId, langCode);
				if (null != this.getCacheManager()) {
					renderInfo = (ContentRenderizationInfo) this.getCacheManager().getFromCache(cacheKey);
				}
				if (null == renderInfo) {
					if (contentToRender == null) {
						contentToRender = this.getPublicContent(contentId);
					}
					String renderedContent = this.buildRenderedContent(contentToRender, modelId, langCode, reqCtx);
					if (null != renderedContent && renderedContent.trim().length() > 0 && null != this.getCacheManager()) {
						String contentGroupId = "Single_Content_" + contentToRender.getId();
						String modelGroupId = JacmsSystemConstants.CONTENT_MODEL_CACHE_GROUP_PREFIX + modelId;
						String typeGroupId = JacmsSystemConstants.CONTENTS_TYPE_CACHE_GROUP_PREFIX + authInfo.getContentType();
						String[] groups = {contentGroupId, modelGroupId, typeGroupId };
						List<AttributeRole> roles = this.getContentManager().getAttributeRoles();
						renderInfo = new ContentRenderizationInfo(contentToRender, renderedContent, modelId, langCode, roles);
						this.getCacheManager().putInCache(cacheKey, renderInfo, groups);
					}
				}
				if (null == renderInfo) {
					return null;
				}
			} else {
				String renderedContent = "Current user '" + currentUser.getUsername() + "' can't view this content";
				renderInfo = new ContentRenderizationInfo(contentToRender, renderedContent, modelId, langCode, null);
				renderInfo.setRenderedContent(renderedContent);
				return renderInfo;
			}
			String finalRenderedContent = this.getLinkResolverManager().resolveLinks(renderInfo.getCachedRenderedContent(), reqCtx);
			renderInfo.setRenderedContent(finalRenderedContent);
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "getRenderedContent", "Error while rendering content " + contentId);
			return null;
		}
		return renderInfo;
	}
        
        protected String getRenderizationInfoCacheKey(String contentId, long modelId, String langCode, RequestContext reqCtx) {
            StringBuffer key = new StringBuffer();
            key.append(ContentManager.getRenderedContentCacheKey(contentId, modelId, langCode));
            UserDetails currentUser = (null != reqCtx) ? (UserDetails) reqCtx.getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER) : null;
            if (null != currentUser && !currentUser.getUsername().equals(SystemConstants.GUEST_USER_NAME)) {
                List<Group> userGroups = this.getAuthorizationManager().getUserGroups(currentUser);
                if (null != userGroups && !userGroups.isEmpty()) {
                    List<String> codes = this.getAuthCodes(userGroups);
                    key.append("_GROUPS:");
                    this.appendCodes(codes, key);
                }
                List<Role> userRoles = this.getAuthorizationManager().getUserRoles(currentUser);
                if (null != userRoles && !userRoles.isEmpty()) {
                    List<String> codes = this.getAuthCodes(userRoles);
                    key.append("_ROLES:");
                    this.appendCodes(codes, key);
                }
            }
            return key.toString();
        }
        
        private List<String> getAuthCodes(List autorities) {
            List<String> codes = new ArrayList<String>();
            for (int i = 0; i < autorities.size(); i++) {
                IApsAuthority auth = (IApsAuthority) autorities.get(i);
                if (null != auth) codes.add(auth.getAuthority());
            }
            Collections.sort(codes);
            return codes;
        }
        
        private void appendCodes(List<String> codes, StringBuffer key) {
            for (int i = 0; i < codes.size(); i++) {
                if (i>0) key.append("-");
                key.append(codes.get(i));
            }
        }
	
	/**
	 * Restituisce il contenuto renderizzato.
	 * @param authInfo Le informazioni di autorizzazione sul contenuto.
	 * @param contentToRender Il contenuto da renderizzare.
	 * @param contentId L'Identificativo del contenuto da renderizzare. 
	 * Il parametro viene utilizzato nel caso il parametro contenuto sia nullo.
	 * @param modelId Identificatore del modello di contenuto.
	 * @param langCode Codice della lingua di renderizzazione richiesta.
	 * @param reqCtx Il contesto della richiesta.
	 * @return Il contenuto renderizzato.
	 * @deprecated From jAPS 2.0 version 2.0.12, use getRenderizationInfo method
	 */
	protected String getRenderedContent(ContentAuthorizationInfo authInfo, 
			Content contentToRender, String contentId, long modelId, String langCode, RequestContext reqCtx) {
		String renderedContent = null;
		try {
			UserDetails currentUser = (null != reqCtx) ? (UserDetails) reqCtx.getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER) : null;
			List<Group> userGroups = (null != currentUser) ? this.getAuthorizationManager().getUserGroups(currentUser) : new ArrayList<Group>();
			//verifica autorizzazione
			if (authInfo.isUserAllowed(userGroups)) {
				String cacheKey = this.getRenderizationInfoCacheKey(contentId, modelId, langCode, reqCtx);//ContentManager.getRenderedContentCacheKey(contentId, modelId, langCode);
				if (null != this.getCacheManager()) {
					renderedContent = (String) this.getCacheManager().getFromCache(cacheKey);
				}
				if (null == renderedContent) {
					if (contentToRender == null) {
						contentToRender = this.getPublicContent(contentId);
					}
					renderedContent = this.buildRenderedContent(contentToRender, modelId, langCode, reqCtx);
					if (null != renderedContent && renderedContent.trim().length() > 0 && null != this.getCacheManager()) {
						String contentGroupId = "Single_Content_" + contentToRender.getId();
						String modelGroupId = JacmsSystemConstants.CONTENT_MODEL_CACHE_GROUP_PREFIX + modelId;
						String typeGroupId = JacmsSystemConstants.CONTENTS_TYPE_CACHE_GROUP_PREFIX + authInfo.getContentType();
						String[] groups = { contentGroupId, modelGroupId, typeGroupId };
						this.getCacheManager().putInCache(cacheKey, renderedContent, groups);
					}
				}
				if (null == renderedContent) {
					return "";
				}
			} else {
				renderedContent = "Current user '" + currentUser.getUsername() + "' can't view this content";
			}
			renderedContent = this.getLinkResolverManager().resolveLinks(renderedContent, reqCtx);
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "getRenderedContent", "Error while rendering content " + contentId);
			return "";
		}
		return renderedContent;
	}
	
}