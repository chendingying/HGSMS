package com.hgsms.controller.admin;

import com.hgsms.biz.admin.UserBiz;
import com.hgsms.model.admin.Menu;
import com.hgsms.model.admin.User;
import com.hgsms.model.admin.UserResetPassword;
import com.hgsms.util.*;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * Created by CDZ on 2018/11/28.
 */
@RestController
@RequestMapping("/api/admin/user")
public class UserController extends BaseController<UserBiz,User> {
    /**
     * 超管重置密码
     * @param userResetPassword
     * @return
     */
    @RequestMapping(value = "/admin/reset/password",method = RequestMethod.PUT)
    @ResponseBody
    public BaseResponse adminResetPassword(@RequestBody UserResetPassword userResetPassword) {
        User user = baseBiz.selectById(userResetPassword.getUserId());
        user.setPassword(userResetPassword.getNewPassword());
        baseBiz.updateSelectiveById(user);
        return new ObjectRestResponse<User>().rel(true);
    }
}
