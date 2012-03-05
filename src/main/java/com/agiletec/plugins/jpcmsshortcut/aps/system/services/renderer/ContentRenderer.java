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
import com.agiletec.aps.system.common.entity.model.IApsEntity;
import com.agiletec.aps.system.common.renderer.EntityWrapper;
import com.agiletec.aps.system.common.renderer.TextAttributeCharReplaceInfo;
import com.agiletec.aps.system.exception.ApsSystemException;
import com.agiletec.aps.system.services.baseconfig.ConfigInterface;
import com.agiletec.aps.system.services.i18n.I18nManagerWrapper;
import com.agiletec.plugins.jacms.aps.system.services.content.model.Content;
import com.agiletec.plugins.jacms.aps.system.services.renderer.BaseContentRenderer;
import java.io.StringWriter;
import java.util.List;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.context.Context;
import org.apache.velocity.app.Velocity;

/**
 * @author E.Santoboni
 */
public class ContentRenderer extends BaseContentRenderer {
    
    @Override
    public String render(Content content, long modelId, String langCode, RequestContext reqCtx) {
            String contentModel = this.getModelShape(modelId);
            return this.render(content, contentModel, langCode, true, reqCtx);
    }
    
    protected String render(IApsEntity entity, String velocityTemplate, 
            String langCode, boolean convertSpecialCharacters, RequestContext reqCtx) {
        String renderedEntity = null;
        List<TextAttributeCharReplaceInfo> conversions = null;
        try {
                if (convertSpecialCharacters) {
                        conversions = this.convertSpecialCharacters(entity, langCode);
                }
                Context velocityContext = new VelocityContext();
                EntityWrapper entityWrapper = this.getEntityWrapper(entity);
                entityWrapper.setRenderingLang(langCode);
                EntityWrapper wrapper = new ContentWrapper((Content) entity, this.getConfigManager(), langCode, reqCtx);
                velocityContext.put(this.getEntityWrapperContextName(), wrapper);
                I18nManagerWrapper i18nWrapper = new I18nManagerWrapper(langCode, this.getI18nManager());
                velocityContext.put("i18n", i18nWrapper);
                StringWriter stringWriter = new StringWriter();
                boolean isEvaluated = Velocity.evaluate(velocityContext, stringWriter, "render", velocityTemplate);
                if (!isEvaluated) {
                        throw new ApsSystemException("Rendering error");
                }
                stringWriter.flush();
                renderedEntity = stringWriter.toString();
        } catch (Throwable t) {
                ApsSystemUtils.logThrowable(t, this, "render", "Rendering error");
                renderedEntity = "";
        } finally {
                if (convertSpecialCharacters && null != conversions) {
                        this.replaceSpecialCharacters(conversions);
                }
        }
        return renderedEntity;
    }
    
    public ConfigInterface getConfigManager() {
        return _configManager;
    }
    public void setConfigManager(ConfigInterface configManager) {
        this._configManager = configManager;
    }
    
    private ConfigInterface _configManager;
    
}