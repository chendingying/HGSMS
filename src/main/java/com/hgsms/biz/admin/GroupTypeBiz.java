package com.hgsms.biz.admin;

import com.hgsms.mapper.admin.GroupTypeMapper;
import com.hgsms.model.admin.GroupType;
import com.hgsms.util.BaseBiz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * ${DESCRIPTION}
 *
 * @author cdy
 * @create 2017-06-12 8:48
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GroupTypeBiz extends BaseBiz<GroupTypeMapper,GroupType> {
}
