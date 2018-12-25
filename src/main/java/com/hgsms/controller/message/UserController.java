package com.hgsms.controller.message;

import com.hgsms.biz.message.UserBiz;
import com.hgsms.model.message.DepartMent;
import com.hgsms.model.message.User;
import com.hgsms.util.BaseController;
import com.hgsms.vo.WdTree;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by CDZ on 2018/12/24.
 */
@RestController
@RequestMapping("/api/hgsms/user")
public class UserController extends BaseController<UserBiz,User> {


    @GetMapping("/getWdTree")
    public List<WdTree> getWdTree(){
        List<WdTree> a = new ArrayList<>();
        WdTree wdTree = new WdTree();
        wdTree.setId("1");
        wdTree.setValue("0");
        wdTree.setText("测试数据");
        wdTree.setShowcheck(true);
        wdTree.setComplete(true);
        wdTree.setIsexpand(true);
        wdTree.setHasChildren(true);
        wdTree.setCheckstate(2);

        List<WdTree> wdTreeList = new ArrayList<>();
        WdTree wdTree1 = new WdTree();
        wdTree1.setId("2");
        wdTree1.setValue("1");
        wdTree1.setText("关领导");
        wdTree1.setShowcheck(true);
        wdTree1.setComplete(true);
        wdTree1.setIsexpand(false);
        wdTree1.setHasChildren(true);
        wdTree1.setCheckstate(0);
        wdTreeList.add(wdTree1);

        List<WdTree> wdTreeList1 = new ArrayList<>();
        WdTree wdTree1_1 = new WdTree();
        wdTree1_1.setId("3");
        wdTree1_1.setValue("2");
        wdTree1_1.setText("测试人员");
        wdTree1_1.setShowcheck(true);
        wdTree1_1.setComplete(true);
        wdTree1_1.setIsexpand(false);
        wdTree1_1.setHasChildren(false);
        wdTree1_1.setCheckstate(0);
        wdTree1_1.setChildNodes(null);
        wdTree1_1.setName("汕头海关\\办公室\\主任室\\人员一");
        wdTreeList1.add(wdTree1_1);


        wdTree1.setChildNodes(wdTreeList1);
        wdTree.setChildNodes(wdTreeList);

        a.add(wdTree);
        return a;
    }


}
