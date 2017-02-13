package cscw.crm.security.authentication;

import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class CrmUserDetailsAuthenticationProvider extends DaoAuthenticationProvider {

    @Override
    protected Authentication createSuccessAuthentication(Object principal, Authentication authentication, UserDetails user) {
        CrmUsernamePasswordAuthentiactionToken token = new CrmUsernamePasswordAuthentiactionToken(super.createSuccessAuthentication(principal, authentication, user));
        token.setUserDetails(user);
        return token;
    }
}
