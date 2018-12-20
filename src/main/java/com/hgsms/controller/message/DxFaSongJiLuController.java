package com.hgsms.controller.message;

import com.hgsms.biz.message.DxFaSongJiLuBiz;
import com.hgsms.model.message.DxFaSongJiLu;
import com.hgsms.util.BaseController;
import com.hgsms.util.ObjectRestResponse;
import com.hgsms.util.Query;
import com.hgsms.util.TableResultResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * Created by CDZ on 2018/12/18.
 */
@RestController
@RequestMapping("/api/hgsms/DxFaSongJiLu")
public class DxFaSongJiLuController  {
    @Autowired
    DxFaSongJiLuBiz dxFaSongJiLuBiz;

    @RequestMapping(value = "/page",method = RequestMethod.GET)
    @ResponseBody
    public TableResultResponse<DxFaSongJiLu> seleectFaSongJiLuInit(@RequestParam Map<String, Object> params, HttpServletResponse response) throws IOException, ParseException {
        //查询列表数据
        Query query = new Query(params);
        return dxFaSongJiLuBiz.seleectFaSongJiLuPage(query);
    }

    @RequestMapping(value = "/FaSongCount/page",method = RequestMethod.GET)
    @ResponseBody
    public TableResultResponse<DxFaSongJiLu> selectFaSongCount(@RequestParam Map<String, Object> params, HttpServletResponse response) throws IOException, ParseException {
        //查询列表数据
        Query query = new Query(params);
        return dxFaSongJiLuBiz.selectFaSongCount(query);
    }

}
