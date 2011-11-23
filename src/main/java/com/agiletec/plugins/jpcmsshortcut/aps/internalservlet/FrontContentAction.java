package com.agiletec.plugins.jpcmsshortcut.aps.internalservlet;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.common.entity.model.attribute.AttributeInterface;
import com.agiletec.aps.system.common.notify.NotifyManager;
import com.agiletec.plugins.jacms.aps.system.services.content.model.Content;
import com.agiletec.plugins.jacms.apsadmin.content.ContentAction;
import java.util.List;

/**
 * @author E.Santoboni
 */
public class FrontContentAction extends ContentAction {
    
    @Override
    public String edit() {
        String result = super.edit();
        if (null != this.getAttributeName()) {
            Content content = this.getContent();
            List<AttributeInterface> attributes = content.getAttributeList();
            for (int i = 0; i < attributes.size(); i++) {
                AttributeInterface attribute = attributes.get(i);
                if (!this.getAttributeName().contains(attribute.getName())) {
                    attribute.disable("jpcmsshortcut:editOnWidget");
                }
            }
        }
        return result;
    }
    
    @Override
    public String saveAndApprove() {
        String result = super.saveAndApprove();
        try {
            this.waitNotifyingThread();
        } catch (Throwable t) {
            ApsSystemUtils.logThrowable(t, this, "saveAndApprove");
            return FAILURE;
        }
        return result;
    }
    
    protected void waitNotifyingThread() throws InterruptedException {
            Thread[] threads = new Thread[20];
        Thread.enumerate(threads);
        for (int i=0; i<threads.length; i++) {
            Thread currentThread = threads[i];
            if (currentThread != null && 
                            currentThread.getName().startsWith(NotifyManager.NOTIFYING_THREAD_NAME)) {
                    currentThread.join();
            }
        }
    }
    
    public String executeSubmit() {
        return SUCCESS;
    }

    public List<String> getAttributeName() {
        return _attributeName;
    }
    public void setAttributeName(List<String> attributeName) {
        this._attributeName = attributeName;
    }
    
    public String getLangCode() {
        return _langCode;
    }
    public void setLangCode(String langCode) {
        this._langCode = langCode;
    }
    
    private List<String> _attributeName;
    private String _langCode;
    
}
