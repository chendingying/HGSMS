package com.hgsms.exception.auth;




import com.hgsms.constants.CommonConstants;
import com.hgsms.exception.BaseException;

/**
 * Created by cdy on 2017/9/8.
 */
public class UserInvalidException extends BaseException {
    public UserInvalidException(String message) {
        super(message, CommonConstants.EX_USER_PASS_INVALID_CODE);
    }
}
