package cscw.crm.contollor;


import cscw.crm.core.common.ErrorCode;
import cscw.crm.security.utils.SecurityContextUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * 登陆控制器
 * Created by liuhuangyinying on 2016/11/24.
 */
@Controller
public class LoginController {

    @RequestMapping(method = RequestMethod.GET , value = "/login.htm")
    public String get(ModelMap modelMap,HttpSession session) {
        Enumeration<String> sessionNameList = session.getAttributeNames();
        while (sessionNameList.hasMoreElements()){
            String name = sessionNameList.nextElement() ;
            System.out.println(name+"-->"+session.getAttribute(name));
        }
//        Object lastException = session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION");
//        if(lastException instanceof BadCredentialsException){
//            modelMap.put("error", ErrorCode.USER_PASS_ERROR.getErrmsg());
//        }else if(lastException instanceof AuthenticationMsgException){
//            modelMap.put("error", ErrorCode.NO_AUTHENTICATION.getErrmsg());
//        }else if(lastException instanceof DisabledException){
//            modelMap.put("error", ErrorCode.USER_DISABLE.getErrmsg());
//        }
        return "/login";

    }

    @RequestMapping(method = RequestMethod.GET , value = "/failure")
    public String failure(ModelMap modelMap) {
        modelMap.put("error", ErrorCode.USER_PASS_ERROR.getErrmsg());
        return "/login";
    }

    /**
     * 访问被拒绝
     * @param modelMap
     * @return
     */
    @RequestMapping(method = RequestMethod.GET , value = "/denied")
    public String denied(ModelMap modelMap) {
        modelMap.put("error", ErrorCode.NO_AUTHENTICATION.getErrmsg());
        return "/login";
    }

    @RequestMapping(method = RequestMethod.GET,value = "/")
    public String get(){
        if(null== SecurityContextUtil.getUser()){
            return "/login";
        }
        return "redirect:/main";
    }

    @RequestMapping(method = RequestMethod.GET , value = "/main")
    public String main(ModelMap modelMap) {
        return "/main";
    }
}
