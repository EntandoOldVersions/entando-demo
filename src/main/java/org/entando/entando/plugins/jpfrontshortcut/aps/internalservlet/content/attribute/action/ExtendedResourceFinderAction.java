/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.entando.entando.plugins.jpfrontshortcut.aps.internalservlet.content.attribute.action;

import java.util.List;

/**
 *
 * @author eu
 */
public class ExtendedResourceFinderAction extends com.agiletec.plugins.jacms.apsadmin.content.attribute.action.resource.ExtendedResourceFinderAction {

	@Override
	public String execute() throws Exception {
		System.out.println("******************+ execute *********************");
		System.out.println("********** " + this.getResourceTypeCode());
		
		return super.execute();
	}

	@Override
	public List<String> getResources() throws Throwable {
		System.out.println("*************** getResources ******************");
		System.out.println("********** " + this.getResourceTypeCode());
		return super.getResources();
	}
	
	
	
}
