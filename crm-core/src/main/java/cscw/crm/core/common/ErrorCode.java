/**
 * 
 */
package cscw.crm.core.common;

/**
 * @author liuhuangyinying 错误码
 */
public enum ErrorCode {
	/**
	 * 请求成功
	 */
	SUCCESS(0, "success"),
	/**
	 * 系统繁忙
	 */
	SYSTEM_BUSY(-1, "系统繁忙"),
	/**
	 * 系统错误
	 */
	SYSTEM_ERROR(10001, "系统错误"),
	/**
	 * 操作权限
	 */
	NO_AUTHENTICATION (10002, "您没有操作权限"),
	/**
	 * 没有操作数据
	 */
	NO_DATA_ERROR(10003, "没有操作数据"),

	/**
	 * 系统操作模块：登陆失败
	 */
	LOGIN_ERROR(10004, "登陆失败"),


	//业务功能模块 【2XXXX】
	// 21XXX用户相关错误码
	USER_EXITS(21000,"用户名已存在"),
	USER_PASS_ERROR(21001,"用户名不存在或者密码错误"),
	USER_DISABLE(21002, "用户已停用");


	private Integer errcode;
    private String errmsg;

	/**
	 * @param errmsg
	 * @param errcode
	 */
	private ErrorCode(Integer errcode, String errmsg) {
		this.errmsg = errmsg;
		this.errcode = errcode;
	}

	/**
	 * @return the errmsg
	 */
	public String getErrmsg() {
		return errmsg;
	}

	/**
	 * @return the errcode
	 */
	public Integer getErrcode() {
		return errcode;
	}

}
