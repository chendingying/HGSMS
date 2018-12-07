//package com.hgsms.service;
//
//
//
//import com.hgsms.biz.admin.ElementBiz;
//import com.hgsms.biz.admin.MenuBiz;
//import com.hgsms.biz.admin.UserBiz;
//import com.hgsms.constants.CommonConstants;
//import com.hgsms.jwt.AuthTokenDetails;
//import com.hgsms.jwt.JsonWebTokenUtility;
//import com.hgsms.jwt.UserAuthUtil;
//import com.hgsms.model.admin.Element;
//import com.hgsms.model.admin.Menu;
//import com.hgsms.model.admin.User;
//import com.hgsms.model.admin.UserInfo;
//import com.hgsms.vo.FrontUser;
//import com.hgsms.vo.PermissionInfo;
//import com.hgsms.vo.TreeUtil;
//import org.apache.commons.lang3.StringUtils;
//import org.springframework.beans.BeanUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Service;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.stream.Collectors;
//import java.util.stream.Stream;
//
///**
// * Created by ace on 2017/9/12.
// */
//@Service
//public class PermissionService {
//    @Autowired
//    private UserBiz UsersBiz;
//    @Autowired
//    private MenuBiz menuBiz;
//    @Autowired
//    private ElementBiz elementBiz;
//    @Autowired
//    private UserAuthUtil userAuthUtil;
//
//    private JsonWebTokenUtility tokenService = new JsonWebTokenUtility();
//    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
//
//
//    public UserInfo getUserByUsername(String username) {
//        UserInfo info = new UserInfo();
//        User user = UsersBiz.getUserByUsername(username);
//        BeanUtils.copyProperties(user, info);
//        info.setId(user.getId().toString());
//        return info;
//    }
//
//    public UserInfo validate(String username, String password) {
//        UserInfo info = new UserInfo();
//        User user = UsersBiz.getUserByUsername(username);
//        if (encoder.matches(password, user.getPassword())) {
//            BeanUtils.copyProperties(user, info);
//            info.setId(user.getId().toString());
//        }
//        return info;
//    }
//
//    public List<PermissionInfo> getAllPermission() {
//        List<Menu> menus = menuBiz.selectListAll();
//        List<PermissionInfo> result = new ArrayList<PermissionInfo>();
//        PermissionInfo info = null;
//        menu2permission(menus, result);
//        List<Element> elements = elementBiz.getAllElementPermissions();
//        element2permission(result, elements);
//        return result;
//    }
//
//    private void menu2permission(List<Menu> menus, List<PermissionInfo> result) {
//        PermissionInfo info;
//        for (Menu menu : menus) {
//            if (StringUtils.isBlank(menu.getHref())) {
//                menu.setHref("/" + menu.getCode());
//            }
//            info = new PermissionInfo();
//            info.setCode(menu.getCode());
//            info.setType(CommonConstants.RESOURCE_TYPE_MENU);
//            info.setName(CommonConstants.RESOURCE_ACTION_VISIT);
//            String uri = menu.getHref();
//            if (!uri.startsWith("/")) {
//                uri = "/" + uri;
//            }
//            info.setUri(uri);
//            info.setMethod(CommonConstants.RESOURCE_REQUEST_METHOD_GET);
//            result.add(info
//            );
//            info.setMenu(menu.getTitle());
//        }
//    }
//
//    public List<PermissionInfo> getPermissionByUsername(String username) {
//        User user = UsersBiz.getUserByUsername(username);
//        List<Menu> menus = menuBiz.getUserAuthorityMenuByUserId(user.getId());
//        List<PermissionInfo> result = new ArrayList<PermissionInfo>();
//        PermissionInfo info = null;
//        menu2permission(menus, result);
//        List<Element> elements = elementBiz.getAuthorityElementByUserId(user.getId() + "");
//        element2permission(result, elements);
//        return result;
//    }
//
//    private void element2permission(List<PermissionInfo> result, List<Element> elements) {
//        PermissionInfo info;
//        for (Element element : elements) {
//            info = new PermissionInfo();
//            info.setCode(element.getCode());
//            info.setType(element.getType());
//            info.setUri(element.getUri());
//            info.setMethod(element.getMethod());
//            info.setName(element.getName());
//            info.setMenu(element.getMenuId());
//            result.add(info);
//        }
//    }
//
//
//    private List<Menu> getMenuTree(List<Menu> menus, int root) {
//        TreeUtil tree = new TreeUtil(menus);
//        return tree.buildTree();
//    }
//
//    public FrontUser getUserInfo(String token) throws Exception {
//        AuthTokenDetails authTokenDetails =
//                tokenService.parseAndValidate(token);
//        String username = authTokenDetails.getUsername();
//        if (username == null) {
//            return null;
//        }
//        if (username == null) {
//            return null;
//        }
//        UserInfo user = this.getUserByUsername(username);
//        FrontUser frontUser = new FrontUser();
//        BeanUtils.copyProperties(user, frontUser);
//        List<PermissionInfo> permissionInfos = this.getPermissionByUsername(username);
//        Stream<PermissionInfo> menus = permissionInfos.parallelStream().filter((permission) -> {
//            return permission.getType().equals(CommonConstants.RESOURCE_TYPE_MENU);
//        });
//        frontUser.setMenus(menus.collect(Collectors.toList()));
//        Stream<PermissionInfo> elements = permissionInfos.parallelStream().filter((permission) -> {
//            return !permission.getType().equals(CommonConstants.RESOURCE_TYPE_MENU);
//        });
//        frontUser.setElements(elements.collect(Collectors.toList()));
//        return frontUser;
//    }
//
//    public List<Menu> getMenusByUsername(String token) throws Exception {
//        AuthTokenDetails authTokenDetails =
//                tokenService.parseAndValidate(token);
//        if(authTokenDetails == null){
//            return null;
//        }
//        String username = authTokenDetails.getUsername();
//        if (username == null) {
//            return null;
//        }
//        User user = UsersBiz.getUserByUsername(username);
//        List<Menu> menus = menuBiz.getUserAuthorityMenuByUserId(user.getId());
//        TreeUtil tree = new TreeUtil(menus);
//        return tree.buildTree();
//    }
//}
