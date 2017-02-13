package cscw.crm.security.userdetails;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class CrmUserDetails extends User {

    protected cscw.crm.core.entity.User user;

    public CrmUserDetails(String username,
                          String password,
                          Collection<? extends GrantedAuthority> authorities, cscw.crm.core.entity.User user) {
        super(username, password, authorities);
        this.user = user;
    }

    public CrmUserDetails(String username,
                          String password,
                          boolean enabled,
                          boolean accountNonExpired,
                          boolean credentialsNonExpired,
                          boolean accountNonLocked,
                          Collection<? extends GrantedAuthority> authorities, cscw.crm.core.entity.User user) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.user = user;
    }

    public cscw.crm.core.entity.User getUser() {
        return user;
    }
}
