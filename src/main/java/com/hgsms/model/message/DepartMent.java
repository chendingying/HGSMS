package com.hgsms.model.message;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by CDZ on 2018/12/24.
 */
@Table(name = "department")
public class DepartMent {

    @Id
    @Column(name = "dpid")
    private String dpid;

    @Column(name = "parentdpid")
    private String parentdpid;

    @Column(name = "dpcode")
    private String dpcode;

    @Column(name = "dplv")
    private String dplv;

    @Column(name = "dpname")
    private String dpname;

    @Column(name = "dpfullname")
    private String dpfullname;

    @Column(name = "dpdesc")
    private String dpdesc;

    @Column(name = "isshow")
    private String isshow;

    @Column(name = "status")
    private String status;

    @Column(name = "orderNo")
    private String orderNo;

    @Column(name = "isTmpDP")
    private String isTmpDP;

    @Column(name = "createdt")
    private String createdt;

    @Column(name = "updatedt")
    private String updatedt;

    @Column(name = "AllowDist")
    private String AllowDist;

    @Column(name = "telephone")
    private String telephone;

    @Column(name = "SpecialTel")
    private String SpecialTel;

    @Column(name = "ORG_CLASS")
    private String ORG_CLASS;

    @Column(name = "ORG_TYPE")
    private String ORG_TYPE;

    @Column(name = "Src_STATUS")
    private String Src_STATUS;

    @Column(name = "parentdpname")
    private String parentdpname;

    @Column(name = "display")
    private String display;

    @Column(name = "officeaddr")
    private String officeaddr;

    @Column(name = "dept_code")
    private String dept_code;

    @Column(name = "code")
    private String code;

    @Column(name = "all_path_name")
    private String all_path_name;

    @Column(name = "pidcode")
    private String pidcode;

    @Column(name ="all_path_code")
    private String all_path_code;

    @Column(name = "name")
    private String name;

    @Column(name = "systype")
    private String systype;

    public String getDpid() {
        return dpid;
    }

    public void setDpid(String dpid) {
        this.dpid = dpid;
    }

    public String getParentdpid() {
        return parentdpid;
    }

    public void setParentdpid(String parentdpid) {
        this.parentdpid = parentdpid;
    }

    public String getDpcode() {
        return dpcode;
    }

    public void setDpcode(String dpcode) {
        this.dpcode = dpcode;
    }

    public String getDplv() {
        return dplv;
    }

    public void setDplv(String dplv) {
        this.dplv = dplv;
    }

    public String getDpname() {
        return dpname;
    }

    public void setDpname(String dpname) {
        this.dpname = dpname;
    }

    public String getDpfullname() {
        return dpfullname;
    }

    public void setDpfullname(String dpfullname) {
        this.dpfullname = dpfullname;
    }

    public String getDpdesc() {
        return dpdesc;
    }

    public void setDpdesc(String dpdesc) {
        this.dpdesc = dpdesc;
    }

    public String getIsshow() {
        return isshow;
    }

    public void setIsshow(String isshow) {
        this.isshow = isshow;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getIsTmpDP() {
        return isTmpDP;
    }

    public void setIsTmpDP(String isTmpDP) {
        this.isTmpDP = isTmpDP;
    }

    public String getCreatedt() {
        return createdt;
    }

    public void setCreatedt(String createdt) {
        this.createdt = createdt;
    }

    public String getUpdatedt() {
        return updatedt;
    }

    public void setUpdatedt(String updatedt) {
        this.updatedt = updatedt;
    }

    public String getAllowDist() {
        return AllowDist;
    }

    public void setAllowDist(String allowDist) {
        AllowDist = allowDist;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getSpecialTel() {
        return SpecialTel;
    }

    public void setSpecialTel(String specialTel) {
        SpecialTel = specialTel;
    }

    public String getORG_CLASS() {
        return ORG_CLASS;
    }

    public void setORG_CLASS(String ORG_CLASS) {
        this.ORG_CLASS = ORG_CLASS;
    }

    public String getORG_TYPE() {
        return ORG_TYPE;
    }

    public void setORG_TYPE(String ORG_TYPE) {
        this.ORG_TYPE = ORG_TYPE;
    }

    public String getSrc_STATUS() {
        return Src_STATUS;
    }

    public void setSrc_STATUS(String src_STATUS) {
        Src_STATUS = src_STATUS;
    }

    public String getParentdpname() {
        return parentdpname;
    }

    public void setParentdpname(String parentdpname) {
        this.parentdpname = parentdpname;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getOfficeaddr() {
        return officeaddr;
    }

    public void setOfficeaddr(String officeaddr) {
        this.officeaddr = officeaddr;
    }

    public String getDept_code() {
        return dept_code;
    }

    public void setDept_code(String dept_code) {
        this.dept_code = dept_code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getAll_path_name() {
        return all_path_name;
    }

    public void setAll_path_name(String all_path_name) {
        this.all_path_name = all_path_name;
    }

    public String getPidcode() {
        return pidcode;
    }

    public void setPidcode(String pidcode) {
        this.pidcode = pidcode;
    }

    public String getAll_path_code() {
        return all_path_code;
    }

    public void setAll_path_code(String all_path_code) {
        this.all_path_code = all_path_code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSystype() {
        return systype;
    }

    public void setSystype(String systype) {
        this.systype = systype;
    }
}
