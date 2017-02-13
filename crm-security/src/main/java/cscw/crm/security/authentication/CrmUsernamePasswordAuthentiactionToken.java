package cscw.crm.security.authentication;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class CrmUsernamePasswordAuthentiactionToken extends UsernamePasswordAuthenticationToken {

    private UserDetails userDetails;

    public CrmUsernamePasswordAuthentiactionToken(Object principal, Object credentials) {
        super(principal, credentials);
    }

    public CrmUsernamePasswordAuthentiactionToken(Object principal, Object credentials, Collection<? extends GrantedAuthority> authorities) {
        super(principal, credentials, authorities);
    }

    public CrmUsernamePasswordAuthentiactionToken(Authentication token) {
        super(token.getPrincipal(), token.getCredentials(), token.getAuthorities());
    }

    public UserDetails getUserDetails() {
        return userDetails;
    }

    public void setUserDetails(UserDetails userDetails) {
        this.userDetails = userDetails;
    }
}
