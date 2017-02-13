package cscw.crm.security.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * @author : liuhuangyinying
 * @Date : 2016-11-24 15:29
 */
public class AuthenticationMsgException extends AuthenticationException {

    public AuthenticationMsgException(String msg, Throwable t) {
        super(msg, t);
    }

    public AuthenticationMsgException(String msg) {
        super(msg);
    }
}
