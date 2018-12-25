package com.hgsms.biz.message;

import com.hgsms.mapper.message.UserMapper;
import com.hgsms.model.message.User;
import com.hgsms.util.BaseBiz;
import org.springframework.stereotype.Service;

/**
 * Created by CDZ on 2018/12/24.
 */
@Service
public class UserBiz extends BaseBiz<UserMapper,User> {
}
