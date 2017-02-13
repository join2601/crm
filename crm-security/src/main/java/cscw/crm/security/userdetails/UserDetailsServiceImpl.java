package cscw.crm.security.userdetails;

import com.google.common.collect.Lists;
import cscw.crm.core.dao.UserDao;
import cscw.crm.core.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userDao.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException(username + " 不存在");
        }
        Collection<GrantedAuthority> authorities = Lists.newArrayList();
//        authorities.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
        return new CrmUserDetails(
                username,
                user.getPassword(),
                user.getIslocked(),
                true, true, true,
                authorities, user);
    }
}
