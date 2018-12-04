package com.hgsms.exception.auth;


import com.hgsms.constants.CommonConstants;
import com.hgsms.util.BaseResponse;

/**
 * Created by cdy on 2017/8/25.
 */
public class TokenForbiddenResponse extends BaseResponse {
    public TokenForbiddenResponse(String message) {
        super(CommonConstants.TOKEN_FORBIDDEN_CODE, message);
    }
}
