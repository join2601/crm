package cscw.crm.security.utils;

import cscw.crm.core.entity.User;
import cscw.crm.core.utils.WebUtil;
import cscw.crm.security.userdetails.CrmUserDetails;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class SecurityContextUtil {

    public static User getUser() {
        CrmUserDetails userDetails = getUserDetails();
        if (userDetails == null) {
            return null;
        }
        return userDetails.getUser();
    }

    @SuppressWarnings("unchecked")
    public static <T extends CrmUserDetails> T getUserDetails() {
        Authentication authentication = getAuthentication();
        if (authentication == null) {
            return null;
        }
        Object principal = authentication.getPrincipal();
        return (T) principal;
    }

    public static Authentication getAuthentication() {
        return SecurityContextHolder.getContext().getAuthentication();
    }

    public static void logout() {
        HttpServletRequest request = WebUtil.getRequest();
        HttpSession session = request.getSession(false);
        if (session != null) {
            request.getSession(false).invalidate();
        }
        SecurityContext context = SecurityContextHolder.getContext();
        if (context != null) {
            context.setAuthentication(null);
        }
        SecurityContextHolder.clearContext();
    }
}
