package cscw.crm.core.utils;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import javax.servlet.http.HttpServletRequest;

/**
 * User : liuhuangyinying
 * Date : 2016-11-24 15:05
 */
public class WebUtil {

    public static HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
    }

    public static Object getSessionAttribute(String name) {
        return getRequest().getSession().getAttribute(name);
    }
}
