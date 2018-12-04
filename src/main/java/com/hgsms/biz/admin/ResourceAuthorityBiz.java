package com.hgsms.biz.admin;

import com.hgsms.mapper.admin.ResourceAuthorityMapper;
import com.hgsms.model.admin.ResourceAuthority;
import com.hgsms.util.BaseBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Ace on 2017/6/19.
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ResourceAuthorityBiz extends BaseBiz<ResourceAuthorityMapper, ResourceAuthority> {
}
