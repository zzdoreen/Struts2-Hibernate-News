package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
 
public class SetCharacterEncodingFilter implements Filter{
	class Request extends HttpServletRequestWrapper
    {
        public Request(HttpServletRequest request) {
            super(request);
        }
        public String toUTF8(String input) {
            try {
                byte[] bytes = input.getBytes("ISO8859-1");
                return new String(bytes, "utf-8");
            } catch (Exception ex) {
            }
            return null;
        }
        private HttpServletRequest getHttpServletRequest()
        {
            return (HttpServletRequest) super.getRequest();
        }
        public String getParameter(String name)
        {
            return
                    toUTF8(getHttpServletRequest().getParameter(name));
        }
        public String[] getParameterValues(String name)
        {
            String values[] =getHttpServletRequest().getParameterValues(name);
            if (values != null) {
                for (int i = 0; i < values.length; i++) {
                    values[i] = toUTF8(values[i]);
                }
            }
            return values;
        }
    }
    public void destroy() {
    }
    public void doFilter(ServletRequest request, ServletResponse
    		response,FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpreq = (HttpServletRequest) request;
        if (httpreq.getMethod().equals("POST")) {
            request.setCharacterEncoding("utf-8");
        } else {
            request = new Request(httpreq);
        }
        chain.doFilter(request, response);
    }
    public void init(FilterConfig filterConfig) throws
    ServletException {
    }  
}
