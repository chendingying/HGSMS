package com.hgsms.controller.admin;


import com.hgsms.biz.admin.GateLogBiz;
import com.hgsms.model.admin.GateLog;
import com.hgsms.util.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ${DESCRIPTION}
 *
 * @author wanghaobin
 * @create 2017-07-01 20:32
 */
@Controller
@RequestMapping("/api/admin/gateLog")
public class GateLogController extends BaseController<GateLogBiz, GateLog> {
}
