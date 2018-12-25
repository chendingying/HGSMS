package com.hgsms.vo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

/**
 *
 data:[{
 id:"node1", //node id
 text:"node 1", //用于显示的节点文本。
 value:"1", //节点值
 showcheck:false, //是否显示复选框
 checkstate:0, //复选框检查状态。 0表示未选中，1表示部分选中，2表示已选中。
 hasChildren:true, //如果hasChildren并且complete设置为true，并且ChildNodes为空，则tree将请求服务器获取子节点。
 isexpand:false, //展开或折叠。
 complete:false, //See hasChildren.
 ChildNodes:[] // 子节点
 }]
 * Created by CDZ on 2018/12/25.
 */

public class WdTree {
    private String id;
    private String text;
    private String value;
    private Boolean showcheck;
    private Integer checkstate;
    private Boolean hasChildren;
    private Boolean isexpand;
    private Boolean complete;
    @JsonProperty( "ChildNodes")
    private List<WdTree> ChildNodes;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Boolean getShowcheck() {
        if(showcheck == null){
            return true;
        }
        return showcheck;
    }

    public void setShowcheck(Boolean showcheck) {
        this.showcheck = showcheck;
    }

    public Integer getCheckstate() {
        if(checkstate == null){
            return 0;
        }
        return checkstate;
    }

    public void setCheckstate(Integer checkstate) {
        this.checkstate = checkstate;
    }

    public Boolean getHasChildren() {
        if(hasChildren == null){
            return true;
        }
        return hasChildren;
    }

    public void setHasChildren(Boolean hasChildren) {
        this.hasChildren = hasChildren;
    }

    public Boolean getIsexpand() {
        if(isexpand == null){
            return true;
        }
        return isexpand;
    }

    public void setIsexpand(Boolean isexpand) {
        this.isexpand = isexpand;
    }

    public Boolean getComplete() {
        if(complete == null){
            return true;
        }
        return complete;
    }

    public void setComplete(Boolean complete) {
        this.complete = complete;
    }
    @JsonIgnore
    public List<WdTree> getChildNodes() {
        return ChildNodes;
    }

    public void setChildNodes(List<WdTree> childNodes) {
        ChildNodes = childNodes;
    }
}
