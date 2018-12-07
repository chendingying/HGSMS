package com.hgsms.controller.admin;

import com.hgsms.biz.admin.GroupTypeBiz;
import com.hgsms.model.admin.GroupType;
import com.hgsms.util.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-06-08 11:51
 */
@Controller
@RequestMapping("/api/admin/groupType")
public class GroupTypeController extends BaseController<GroupTypeBiz, GroupType> {
}
