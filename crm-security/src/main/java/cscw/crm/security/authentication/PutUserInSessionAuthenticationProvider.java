package cscw.crm.security.authentication;



import cscw.crm.core.common.SystemCont;
import cscw.crm.core.entity.User;
import cscw.crm.core.utils.WebUtil;
import cscw.crm.security.exception.AuthenticationMsgException;
import cscw.crm.security.userdetails.CrmUserDetails;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.util.WebUtils;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class PutUserInSessionAuthenticationProvider implements AuthenticationProvider {

    private AuthenticationProvider authenticationProvider;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        Authentication _a = authenticationProvider.authenticate(authentication);
        User user;
        if (_a instanceof UsernamePasswordAuthenticationToken) {
            UsernamePasswordAuthenticationToken token = (UsernamePasswordAuthenticationToken) _a;
            CrmUserDetails userDetails = (CrmUserDetails)token.getPrincipal();
            user = userDetails.getUser();
        } else {
            throw new AuthenticationMsgException(_a.getClass().getName() + " is not supported");
        }
        WebUtils.setSessionAttribute(WebUtil.getRequest(), SystemCont.LOGIN_USER, user);
        return _a;
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authenticationProvider.supports(authentication);
    }

    public void setAuthenticationProvider(AuthenticationProvider authenticationProvider) {
        this.authenticationProvider = authenticationProvider;
    }

}
