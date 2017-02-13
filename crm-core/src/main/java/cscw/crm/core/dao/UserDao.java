package cscw.crm.core.dao;

import cscw.crm.core.entity.User;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public interface UserDao extends BaseDao<User,String>{
    User findByUsername(String username);
}
