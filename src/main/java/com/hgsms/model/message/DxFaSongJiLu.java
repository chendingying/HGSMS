package com.hgsms.model.message;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Date;

/**
 * Created by CDZ on 2018/12/17.
 */
@Table(name = "dx_fasongjilu")
public class DxFaSongJiLu {

    @Transient
    private String fasongNumber;
    @Transient
    private String status;
    @Transient
    private Date beginTime;
    @Transient
    private Date endTime;
    @Id()
    @Column(name = "rec_id")
    private String recId;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "op_time")
    private Date opTime;

    @Column(name = "is_error")
    private Integer isError;

    @Column(name = "error_mes")
    private String errorMes;

    @Column(name = "custom_number")
    private String customNumber;

    @Column(name = "stat")
    private Integer stat;

    @Column(name = "content")
    private String content;

    @Column(name = "dingshi")
    private Date dingshi;

    @Column(name = "guoqi")
    private Integer guoqi;

    @Column(name = "type")
    private String type;

    @Column(name = "original_rec_id")
    private String originalRecId;

    @Column(name = "last_rec_id")
    private String lastRecId;

    @Column(name = "is_save")
    private Integer isSave;

    @Column(name = "top_ou_id")
    private String topOuId;

    @Column(name = "top_ou_name")
    private String topOuName;

    @Column(name = "top_ou_sort_id")
    private String topOuSortId;

    @Column(name = "is_in_use")
    private Integer isInUse;

    public String getFasongNumber() {
        return fasongNumber;
    }

    public void setFasongNumber(String fasongNumber) {
        this.fasongNumber = fasongNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRecId() {
        return recId;
    }

    public void setRecId(String recId) {
        this.recId = recId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Date getOpTime() {
        return opTime;
    }

    public void setOpTime(Date opTime) {
        this.opTime = opTime;
    }

    public Integer getIsError() {
        return isError;
    }

    public void setIsError(Integer isError) {
        this.isError = isError;
    }

    public String getErrorMes() {
        return errorMes;
    }

    public void setErrorMes(String errorMes) {
        this.errorMes = errorMes;
    }

    public String getCustomNumber() {
        return customNumber;
    }

    public void setCustomNumber(String customNumber) {
        this.customNumber = customNumber;
    }

    public Integer getStat() {
        return stat;
    }

    public void setStat(Integer stat) {
        this.stat = stat;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDingshi() {
        return dingshi;
    }

    public void setDingshi(Date dingshi) {
        this.dingshi = dingshi;
    }

    public Integer getGuoqi() {
        return guoqi;
    }

    public void setGuoqi(Integer guoqi) {
        this.guoqi = guoqi;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOriginalRecId() {
        return originalRecId;
    }

    public void setOriginalRecId(String originalRecId) {
        this.originalRecId = originalRecId;
    }

    public String getLastRecId() {
        return lastRecId;
    }

    public void setLastRecId(String lastRecId) {
        this.lastRecId = lastRecId;
    }

    public Integer getIsSave() {
        return isSave;
    }

    public void setIsSave(Integer isSave) {
        this.isSave = isSave;
    }

    public String getTopOuId() {
        return topOuId;
    }

    public void setTopOuId(String topOuId) {
        this.topOuId = topOuId;
    }

    public String getTopOuName() {
        return topOuName;
    }

    public void setTopOuName(String topOuName) {
        this.topOuName = topOuName;
    }

    public String getTopOuSortId() {
        return topOuSortId;
    }

    public void setTopOuSortId(String topOuSortId) {
        this.topOuSortId = topOuSortId;
    }

    public Integer getIsInUse() {
        return isInUse;
    }

    public void setIsInUse(Integer isInUse) {
        this.isInUse = isInUse;
    }

    public Date getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Date beginTime) {
        this.beginTime = beginTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}
