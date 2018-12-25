package com.hgsms.model.message;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by CDZ on 2018/12/24.
 */
@Table(name = "phone")
public class User {
    @Id
    @Column(name = "userid")
    private String userid;

    @Column(name = "loginid")
    private String loginid;

    @Column(name = "username")
    private String username;

    @Column(name = "telephone")
    private String telephone;

    @Column(name = "mobile")
    private String mobile;

    @Column(name = "email")
    private String email;

    @Column(name = "employeeclassid")
    private String employeeclassid;

    @Column(name = "jobtypeid")
    private String jobtypeid;

    @Column(name = "sex")
    private String sex;

    @Column(name = "dpid")
    private String dpid;

    @Column(name = "parentdpid")
    private String parentdpid;

    @Column(name = "dpcode")
    private String dpcode;

    @Column(name = "dpname")
    private String dpname;

    @Column(name = "dpfullname")
    private String dpfullname;

    @Column(name = "dplv")
    private String dplv;

    @Column(name = "HomeTel")
    private String HomeTel;

    @Column(name = "ShortTel")
    private String ShortTel;

    @Column(name = "IsShortTel")
    private String IsShortTel;

    @Column(name = "status")
    private String status;

    @Column(name = "jobtypeid_police")
    private String jobtypeid_police;

    @Column(name = "nation")
    private String nation;

    @Column(name = "id_card_number")
    private String id_card_number;

    @Column(name = "start_work_time")
    private String start_work_time;

    @Column(name = "im_address")
    private String im_address;

    @Column(name = "memo")
    private String memo;

    @Column(name = "leveltitle")
    private String leveltitle;

    @Column(name = "birthday")
    private String birthday;

    @Column(name = "email_internet")
    private String email_internet;

    @Column(name = "display")
    private String display;

    @Column(name = "dpdisplay")
    private String dpdisplay;

    @Column(name = "levelrank")
    private String levelrank;

    @Column(name = "global_sort")
    private String global_sort;

    @Column(name = "leveltitleshort")
    private String leveltitleshort;

    @Column(name = "createdt")
    private String createdt;

    @Column(name = "officeaddr")
    private String officeaddr;

    @Column(name = "PERSON_CODE")
    private String PERSON_CODE;

    @Column(name = "NAME")
    private String NAME;

    @Column(name = "PERSON_ID")
    private String PERSON_ID;

    @Column(name = "DEPT_CODE")
    private String DEPT_CODE;

    @Column(name = "PINYIN")
    private String PINYIN;

    @Column(name = "WINDOWS_LOGON_NAME")
    private String WINDOWS_LOGON_NAME;

    @Column(name = "HRCODE_LOGON_NAME")
    private String HRCODE_LOGON_NAME;

    @Column(name = "FORMS_LOGON_NAME")
    private String FORMS_LOGON_NAME;

    @Column(name = "F_DpID")
    private String F_DpID;

    @Column(name = "Show")
    private String Show;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getLoginid() {
        return loginid;
    }

    public void setLoginid(String loginid) {
        this.loginid = loginid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmployeeclassid() {
        return employeeclassid;
    }

    public void setEmployeeclassid(String employeeclassid) {
        this.employeeclassid = employeeclassid;
    }

    public String getJobtypeid() {
        return jobtypeid;
    }

    public void setJobtypeid(String jobtypeid) {
        this.jobtypeid = jobtypeid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

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

    public String getDplv() {
        return dplv;
    }

    public void setDplv(String dplv) {
        this.dplv = dplv;
    }

    public String getHomeTel() {
        return HomeTel;
    }

    public void setHomeTel(String homeTel) {
        HomeTel = homeTel;
    }

    public String getShortTel() {
        return ShortTel;
    }

    public void setShortTel(String shortTel) {
        ShortTel = shortTel;
    }

    public String getIsShortTel() {
        return IsShortTel;
    }

    public void setIsShortTel(String isShortTel) {
        IsShortTel = isShortTel;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getJobtypeid_police() {
        return jobtypeid_police;
    }

    public void setJobtypeid_police(String jobtypeid_police) {
        this.jobtypeid_police = jobtypeid_police;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getId_card_number() {
        return id_card_number;
    }

    public void setId_card_number(String id_card_number) {
        this.id_card_number = id_card_number;
    }

    public String getStart_work_time() {
        return start_work_time;
    }

    public void setStart_work_time(String start_work_time) {
        this.start_work_time = start_work_time;
    }

    public String getIm_address() {
        return im_address;
    }

    public void setIm_address(String im_address) {
        this.im_address = im_address;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getLeveltitle() {
        return leveltitle;
    }

    public void setLeveltitle(String leveltitle) {
        this.leveltitle = leveltitle;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEmail_internet() {
        return email_internet;
    }

    public void setEmail_internet(String email_internet) {
        this.email_internet = email_internet;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getDpdisplay() {
        return dpdisplay;
    }

    public void setDpdisplay(String dpdisplay) {
        this.dpdisplay = dpdisplay;
    }

    public String getLevelrank() {
        return levelrank;
    }

    public void setLevelrank(String levelrank) {
        this.levelrank = levelrank;
    }

    public String getGlobal_sort() {
        return global_sort;
    }

    public void setGlobal_sort(String global_sort) {
        this.global_sort = global_sort;
    }

    public String getLeveltitleshort() {
        return leveltitleshort;
    }

    public void setLeveltitleshort(String leveltitleshort) {
        this.leveltitleshort = leveltitleshort;
    }

    public String getCreatedt() {
        return createdt;
    }

    public void setCreatedt(String createdt) {
        this.createdt = createdt;
    }

    public String getOfficeaddr() {
        return officeaddr;
    }

    public void setOfficeaddr(String officeaddr) {
        this.officeaddr = officeaddr;
    }

    public String getPERSON_CODE() {
        return PERSON_CODE;
    }

    public void setPERSON_CODE(String PERSON_CODE) {
        this.PERSON_CODE = PERSON_CODE;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getPERSON_ID() {
        return PERSON_ID;
    }

    public void setPERSON_ID(String PERSON_ID) {
        this.PERSON_ID = PERSON_ID;
    }

    public String getDEPT_CODE() {
        return DEPT_CODE;
    }

    public void setDEPT_CODE(String DEPT_CODE) {
        this.DEPT_CODE = DEPT_CODE;
    }

    public String getPINYIN() {
        return PINYIN;
    }

    public void setPINYIN(String PINYIN) {
        this.PINYIN = PINYIN;
    }

    public String getWINDOWS_LOGON_NAME() {
        return WINDOWS_LOGON_NAME;
    }

    public void setWINDOWS_LOGON_NAME(String WINDOWS_LOGON_NAME) {
        this.WINDOWS_LOGON_NAME = WINDOWS_LOGON_NAME;
    }

    public String getHRCODE_LOGON_NAME() {
        return HRCODE_LOGON_NAME;
    }

    public void setHRCODE_LOGON_NAME(String HRCODE_LOGON_NAME) {
        this.HRCODE_LOGON_NAME = HRCODE_LOGON_NAME;
    }

    public String getFORMS_LOGON_NAME() {
        return FORMS_LOGON_NAME;
    }

    public void setFORMS_LOGON_NAME(String FORMS_LOGON_NAME) {
        this.FORMS_LOGON_NAME = FORMS_LOGON_NAME;
    }

    public String getF_DpID() {
        return F_DpID;
    }

    public void setF_DpID(String f_DpID) {
        F_DpID = f_DpID;
    }

    public String getShow() {
        return Show;
    }

    public void setShow(String show) {
        Show = show;
    }
}
