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
package com.agiletec.plugins.jpcmsshortcut.aps.system.services.cache;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.services.lang.Lang;
import com.agiletec.plugins.jacms.aps.system.JacmsSystemConstants;
import com.agiletec.plugins.jacms.aps.system.services.content.ContentManager;
import com.agiletec.plugins.jacms.aps.system.services.content.event.PublicContentChangedEvent;
import com.agiletec.plugins.jacms.aps.system.services.content.model.Content;
import com.agiletec.plugins.jacms.aps.system.services.contentmodel.ContentModel;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Cache Wrapper Manager for plugin jacms
 * @author E.Santoboni
 */
public class CmsCacheWrapperManager extends com.agiletec.plugins.jacms.aps.system.services.cache.CmsCacheWrapperManager {
	
	@Override
	public void updateFromPublicContentChanged(PublicContentChangedEvent event) {
		try {
			Content content = event.getContent();
			Logger log = ApsSystemUtils.getLogger();
			if (log.isLoggable(Level.FINEST)) {
				log.info("Notified public content update : type " + content.getId());
			}
			this.releaseRelatedItems(content);
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "updateFromPublicContentChanged", 
					"Error notifing event " + PublicContentChangedEvent.class.getName());
		}
	}
	
	private void releaseRelatedItems(Content content) {
		String authInfokey = ContentManager.getContentAuthInfoCacheKey(content.getId());
		
                String contentGroupId = "Single_Content_" + content.getId();
                this.getCacheManager().flushGroup(contentGroupId);
                
                this.getCacheManager().flushEntry(authInfokey);
		this.getCacheManager().flushGroup(JacmsSystemConstants.CONTENTS_ID_CACHE_GROUP_PREFIX + content.getTypeCode());
		this.getCacheManager().flushEntry(JacmsSystemConstants.CONTENT_CACHE_PREFIX + content.getId());
		List<Lang> langs = this.getLangManager().getLangs();
		List<ContentModel> models = this.getContentModelManager().getModelsForContentType(content.getTypeCode());
		for (int i = 0; i < langs.size(); i++) {
			Lang lang = langs.get(i);
			for (int j = 0; j < models.size(); j++) {
				ContentModel contentModel = models.get(j);
				String key = ContentManager.getRenderedContentCacheKey(content.getId(), contentModel.getId(), lang.getCode());
				this.getCacheManager().flushEntry(key);
			}
		}
	}
	
}