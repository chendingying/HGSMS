package com.hgsms.biz.admin;

import com.hgsms.mapper.admin.UserMapper;
import com.hgsms.model.admin.User;
import com.hgsms.util.BaseBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by CDZ on 2018/11/27.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class UserBiz extends BaseBiz<UserMapper,User> {
}
