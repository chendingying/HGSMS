package com.hgsms.biz.admin;


import com.hgsms.exception.auth.UserInvalidException;
import com.hgsms.jwt.JWTInfo;
import com.hgsms.jwt.JwtAuthenticationRequest;
import com.hgsms.jwt.JwtTokenUtil;
import com.hgsms.mapper.admin.UserMapper;
import com.hgsms.model.admin.User;
import com.hgsms.model.admin.UserInfo;
import com.hgsms.util.BaseBiz;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpSession;

/**
 * Created by CDZ on 2018/11/27.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class AuthBiz extends BaseBiz<UserMapper,User> {
    @Autowired
    private UserBiz usersBiz;
    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    public String login(JwtAuthenticationRequest authenticationRequest, HttpSession session) throws Exception {
//        // 获取验证码的代码
//        if (session.getAttribute("image") == null) {
//            throw new UserInvalidException("重新获取验证码!");
//        } else {
//            if (session.getAttribute("image").toString().equalsIgnoreCase(authenticationRequest.getCode())) {
//                UserInfo info = new UserInfo();
//                User user = usersBiz.getUserByUsername(authenticationRequest.getUsername());
//                if(user == null){
//                    throw new UserInvalidException("用户不存在或账户密码错误!");
//                }
//                if(user.getStatus() == 0){
//                    throw new UserInvalidException("用户被禁用，请联系管理员！");
//                }
//                if (encoder.matches(authenticationRequest
//                        .getPassword(), user.getPassword())) {
//                    BeanUtils.copyProperties(user, info);
//                    info.setId(user.getId().toString());
//                }
//                if (!StringUtils.isEmpty(info.getId())) {
//                    return jwtTokenUtil.generateToken(new JWTInfo(info.getUsername(), info.getId() + "", info.getName()));
//                }
//
//            }else{
//                throw new UserInvalidException("输入验证码错误!");
//            }
//        }

        UserInfo info = new UserInfo();
        User user = usersBiz.getUserByUsername(authenticationRequest.getUsername());
        if (encoder.matches(authenticationRequest
                .getPassword(), user.getPassword())) {
            BeanUtils.copyProperties(user, info);
            info.setId(user.getId().toString());
        }
        if (!StringUtils.isEmpty(info.getId())) {
            return jwtTokenUtil.generateToken(new JWTInfo(info.getUsername(), info.getId() + "", info.getName()));
        }
        throw new UserInvalidException("用户不存在或账户密码错误!");
    }
}
