package com.hgsms.exception.auth;


import com.hgsms.constants.CommonConstants;
import com.hgsms.exception.BaseException;


/**
 * Created by cdy on 2017/9/8.
 */
public class UserTokenException extends BaseException {
    public UserTokenException(String message) {
        super(message, CommonConstants.EX_USER_INVALID_CODE);
    }
}
