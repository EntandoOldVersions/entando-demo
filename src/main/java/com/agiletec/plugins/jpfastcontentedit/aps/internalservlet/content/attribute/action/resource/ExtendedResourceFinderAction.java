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
package com.agiletec.plugins.jpfastcontentedit.aps.internalservlet.content.attribute.action.resource;

import com.agiletec.plugins.jacms.apsadmin.content.attribute.action.resource.ResourceAttributeActionHelper;
import javax.servlet.http.HttpSession;

/**
 * @author E.Santoboni
 */
public class ExtendedResourceFinderAction extends com.agiletec.plugins.jacms.apsadmin.content.attribute.action.resource.ExtendedResourceFinderAction {

    @Override
    public String joinResource() {
        HttpSession session = this.getRequest().getSession();
	this.setLangCode((String) session.getAttribute(ResourceAttributeActionHelper.RESOURCE_LANG_CODE_SESSION_PARAM));
        return super.joinResource();
    }
    
    public String getLangTabAnchorDest() {
	return this.getLangCode() + "_tab";
    }
    
    protected String getLangCode() {
        return _langCode;
    }
    protected void setLangCode(String langCode) {
        this._langCode = langCode;
    }
    
    private String _langCode;
    
}
