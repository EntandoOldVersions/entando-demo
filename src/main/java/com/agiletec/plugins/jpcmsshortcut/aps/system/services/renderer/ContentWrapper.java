/*
*
* Copyright 2012 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
* This file is part of Entando software.
* Entando is a free software; 
* you can redistribute it and/or modify it
* under the terms of the GNU General Public License (GPL) as published by the Free Software Foundation; version 2.
* 
* See the file License for the specific language governing permissions   
* and limitations under the License
* 
* 
* 
* Copyright 2012 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
*/
package com.agiletec.plugins.jpcmsshortcut.aps.system.services.renderer;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.services.authorization.IAuthorizationManager;
import com.agiletec.aps.system.services.baseconfig.ConfigInterface;
import com.agiletec.aps.system.services.user.UserDetails;
import com.agiletec.aps.util.ApsWebApplicationUtils;
import com.agiletec.plugins.jacms.aps.system.services.content.model.Content;

/**
 * @author E.Santoboni
 */
public class ContentWrapper extends com.agiletec.plugins.jacms.aps.system.services.renderer.ContentWrapper {
    
    public ContentWrapper(Content content, ConfigInterface configManager, String langCode, RequestContext reqCtx) {
        super(content);
        this.setConfigManager(configManager);
        this.setReqCtx(reqCtx);
        this.setLangCode(langCode);
    }
    
    public boolean isUserAllowed(String permissionName) {
        try {
            IAuthorizationManager authManager = 
                (IAuthorizationManager) ApsWebApplicationUtils.getBean(SystemConstants.AUTHORIZATION_SERVICE, this.getReqCtx().getRequest());
            UserDetails currentUser = (UserDetails) this.getReqCtx().getRequest().getSession().getAttribute(SystemConstants.SESSIONPARAM_CURRENT_USER);
            if (null == currentUser) return false;
            if (!authManager.isAuthOnGroup(currentUser, this.getEntity().getMainGroup())) return false;
            if (null != permissionName && permissionName.trim().length() > 0 && !authManager.isAuthOnPermission(currentUser, permissionName)) return false;
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "isUserAllowed", "Error checking authority - permission " + permissionName);
        }
        return true;
    }
    
    public String getConfigParameter(String paramName) {
        return this.getConfigManager().getParam(paramName);
    }
    
    protected ConfigInterface getConfigManager() {
        return _configManager;
    }
    protected void setConfigManager(ConfigInterface configManager) {
        this._configManager = configManager;
    }
    
    protected RequestContext getReqCtx() {
        return _reqCtx;
    }
    protected void setReqCtx(RequestContext reqCtx) {
        this._reqCtx = reqCtx;
    }
    
    public String getLangCode() {
        return _langCode;
    }
    public void setLangCode(String langCode) {
        this._langCode = langCode;
    }
    
    private ConfigInterface _configManager;
    private RequestContext _reqCtx;
    private String _langCode;
    
}
