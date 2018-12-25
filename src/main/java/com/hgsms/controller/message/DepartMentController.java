package com.hgsms.controller.message;

import com.hgsms.biz.message.DepartMentBiz;
import com.hgsms.biz.message.UserBiz;
import com.hgsms.model.message.DepartMent;
import com.hgsms.model.message.User;
import com.hgsms.util.BaseController;
import com.hgsms.vo.TreeUtil;
import com.hgsms.vo.WdTree;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by CDZ on 2018/12/24.
 */
@RestController
@RequestMapping("/api/hgsms/departMent")
public class DepartMentController extends BaseController<DepartMentBiz,DepartMent> {

    @Autowired
    UserBiz userBiz;
    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    @ResponseBody
    public List<WdTree> getTree() {
        Example example = new Example(DepartMent.class);
        return getMenuTree(baseBiz.selectByExample(example));
    }

    private List<WdTree> getMenuTree(List<DepartMent> departMents) {

        Example example = new Example(User.class);
        TreeUtil tree = new TreeUtil(departMents, userBiz.selectByExample(example));
        return tree.buildTree();
    }
}
