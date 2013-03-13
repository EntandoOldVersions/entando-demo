/*
*
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
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
* Copyright 2013 Entando S.r.l. (http://www.entando.com) All rights reserved.
*
*/
package org.entando.entando.demo.system.services.searchengine;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.plugins.jacms.aps.system.services.searchengine.ICmsSearchEngineManager;

/**
 * Search engine index reloader util class.
 * @author E.Santoboni
 */
public class IndexReloader {
	
	public void reloadIndex() {
		try {
			this.getCmsSearchEngineManager().startReloadContentsReferences();
		} catch (Throwable t) {
			ApsSystemUtils.logThrowable(t, this, "reloadIndex", "Error reloading index");
		}
	}
	
	protected ICmsSearchEngineManager getCmsSearchEngineManager() {
		return _cmsSearchEngineManager;
	}
	public void setCmsSearchEngineManager(ICmsSearchEngineManager cmsSearchEngineManager) {
		this._cmsSearchEngineManager = cmsSearchEngineManager;
	}
	
	private ICmsSearchEngineManager _cmsSearchEngineManager;
	
}
