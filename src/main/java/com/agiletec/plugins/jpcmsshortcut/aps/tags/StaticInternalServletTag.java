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
package com.agiletec.plugins.jpcmsshortcut.aps.tags;

import java.io.CharArrayWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.agiletec.aps.system.ApsSystemUtils;
import com.agiletec.aps.system.RequestContext;
import com.agiletec.aps.system.SystemConstants;
import com.agiletec.aps.system.services.page.IPage;

/**
 * @author M.Casari - E.Santoboni
 */
public class StaticInternalServletTag extends TagSupport {
    
    /**
     * Internal class that wrappers the response, extending the
     * javax.servlet.http.HttpServletResponseWrapper class to
     * define a proprietary output channel.
     * It is used to retrieve the content response after having
     * made an 'include' in the RequestDispatcher 
     */
    public class ResponseWrapper extends HttpServletResponseWrapper {

        public ResponseWrapper(HttpServletResponse response) {
            super(response);
            _output = new CharArrayWriter();
        }

        @Override
        public PrintWriter getWriter() {
            return new PrintWriter(_output);
        }

        @Override
        public void sendRedirect(String path) throws IOException {
            this._redirectPath = path;
        }

        @Override
        public void addCookie(Cookie cookie) {
            super.addCookie(cookie);
            this._cookieToAdd = cookie;
        }

        protected Cookie getCookieToAdd() {
            return _cookieToAdd;
        }

        public boolean isRedirected() {
            return (_redirectPath != null);
        }

        public String getRedirectPath() {
            return _redirectPath;
        }

        @Override
        public String toString() {
            return _output.toString();
        }
        private String _redirectPath;
        private CharArrayWriter _output;
        private Cookie _cookieToAdd;
    }

    /**
     * Invokes the showlet configured in the current page.
     * @throws JspException in case of error that occurred in both this method or in one of the included JSPs
     */
    public int doEndTag() throws JspException {
        int result = super.doEndTag();
        ServletRequest req = this.pageContext.getRequest();
        RequestContext reqCtx = (RequestContext) req.getAttribute(RequestContext.REQCTX);
        try {
            IPage page = (IPage) reqCtx.getExtraParam(SystemConstants.EXTRAPAR_CURRENT_PAGE);
            ResponseWrapper responseWrapper = new ResponseWrapper((HttpServletResponse) this.pageContext.getResponse());
            String output = this.buildOutput(page, responseWrapper);
            if (responseWrapper.isRedirected()) {
                String redirect = responseWrapper.getRedirectPath();
                reqCtx.addExtraParam(SystemConstants.EXTRAPAR_EXTERNAL_REDIRECT, redirect);
                result = SKIP_PAGE;
            } else {
                this.pageContext.getOut().print(output);
            }
        } catch (Throwable t) {
            String msg = "Error in showlet preprocessing";
            ApsSystemUtils.logThrowable(t, this, "doEndTag", msg);
            throw new JspException(msg, t);
        }
        return result;
    }

    protected String buildOutput(IPage page, ResponseWrapper responseWrapper) throws JspException {
        String output = null;
        ServletRequest req = this.pageContext.getRequest();
        RequestContext reqCtx = (RequestContext) req.getAttribute(RequestContext.REQCTX);
        try {
            HttpServletRequest request = reqCtx.getRequest();
            String actionPath = this.getActionPath();
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(actionPath);
            requestDispatcher.include(request, responseWrapper);
            if (null != responseWrapper.getCookieToAdd()) {
                reqCtx.getResponse().addCookie(responseWrapper.getCookieToAdd());
            }
            output = responseWrapper.toString();
            responseWrapper.getWriter().close();
        } catch (Throwable t) {
            String msg = "Errore in preelaborazione showlets";
            throw new JspException(msg, t);
        }
        return output;
    }
    
    public void release() {
        super.release();
        this.setActionPath(null);
    }
    
    protected String getActionPath() {
        return _actionPath;
    }
    public void setActionPath(String actionPath) {
        this._actionPath = actionPath;
    }
    
    private String _actionPath;
    
}