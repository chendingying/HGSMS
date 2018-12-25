package com.hgsms.vo;


import com.hgsms.model.message.DepartMent;
import com.hgsms.model.message.User;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by Ace on 2017/6/12.
 */
public class TreeUtil {
  private  int count = 0;
  private List<DepartMent> nodes;
  private List<User> userList;

  public TreeUtil(List<DepartMent> nodes,List<User> userList){
    this.nodes = nodes;
    this.userList = userList;
  }

  public List<WdTree> buildTree(){
    List<WdTree> list = new ArrayList<WdTree>();
    List<DepartMent> departMentList = new ArrayList<>();
    for (DepartMent node : nodes) {
      if (node.getParentdpid() == null) {
        WdTree wdTree = new WdTree();
        wdTree.setId(node.getDpid());
        wdTree.setText(node.getDpname());
        wdTree.setChildNodes(null);
        list.add(wdTree);
        departMentList.add(node);
      }
    }
    for(WdTree wdTree : list){
      build(wdTree);
    }
    return list;
  }

  /***
   * 构建权限树
   * @Title: build
   * @Description: TODO
   * @param node
   */
  private void build(WdTree node){
    List<WdTree> children = getChildren(node);
    if (!children.isEmpty()) {
      node.setChildNodes(children);
      for (WdTree child : children) {
        build(child);
      }
    }else{
      puildUser(node);
    }
  }

  private void puildUser(WdTree node){
    List<WdTree> wdTreeList = new ArrayList<>();
    for(User user : userList){
      if(node.getId().equals(user.getDpid())){
        WdTree wdTree = new WdTree();
        wdTree.setId(user.getUserid());
        wdTree.setText(user.getUsername());
        wdTree.setValue(user.getUserid());
        wdTree.setIsexpand(false);
        wdTree.setHasChildren(false);
        wdTreeList.add(wdTree);
      }
    }
    node.setChildNodes(wdTreeList);
  }

  /**
   *
   * @Title: getChildren
   * @Description: TODO 获取子节点
   * @param node
   * @return
   */
  private List<WdTree> getChildren(WdTree node){
    List<WdTree> children = new ArrayList<WdTree>();
    String id = node.getId();
    for (DepartMent child : nodes) {
      if (id.equals(child.getParentdpid())) {
        WdTree wdTree = new WdTree();
        wdTree.setId(child.getDpid());
        wdTree.setText(child.getDpname());
        wdTree.setChildNodes(null);
        children.add(wdTree);
      }
    }
    return children;
  }
}
