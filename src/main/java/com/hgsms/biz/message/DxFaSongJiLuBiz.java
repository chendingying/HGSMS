package com.hgsms.biz.message;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.hgsms.mapper.message.DxFaSongJiLuMapper;
import com.hgsms.model.message.DxFaSongJiLu;
import com.hgsms.util.BaseBiz;
import com.hgsms.util.Query;
import com.hgsms.util.TableResultResponse;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by CDZ on 2018/12/18.
 */
@Service
public class DxFaSongJiLuBiz extends BaseBiz<DxFaSongJiLuMapper,DxFaSongJiLu> {

    public TableResultResponse<DxFaSongJiLu> seleectFaSongJiLuPage(Query query) throws ParseException {
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        DxFaSongJiLu dxFaSongJiLu = new DxFaSongJiLu();
        if(query.entrySet().size()>0) {
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                if(entry.getKey().equals("userId")){
                    dxFaSongJiLu.setUserId(entry.getValue().toString());
                    continue;
                }if(entry.getKey().equals("content")){
                    dxFaSongJiLu.setContent(entry.getValue().toString());
                    continue;
                }if(entry.getKey().equals("beginTime")){
                    dxFaSongJiLu.setBeginTime(format1.parse(entry.getValue().toString()));
                    continue;
                }if(entry.getKey().equals("endTime")){
                    dxFaSongJiLu.setEndTime(format1.parse(entry.getValue().toString()));
                    continue;
                }
            }
        }
        Page<Object> result = PageHelper.startPage(query.getPage(), query.getLimit());
        List<DxFaSongJiLu> list =  mapper.seleectFaSongJiLuPage(dxFaSongJiLu);
        return new TableResultResponse<DxFaSongJiLu>(result.getTotal(), list);
    }

    public TableResultResponse<DxFaSongJiLu> selectFaSongCount(Query query) throws ParseException {
        DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Date beginTime = null;
        Date endTime = null;
        if(query.entrySet().size()>0) {
            for (Map.Entry<String, Object> entry : query.entrySet()) {
                if(entry.getKey().equals("beginTime")){
                    beginTime = format1.parse(entry.getValue().toString());
                        continue;
                }if(entry.getKey().equals("endTime")){
                    endTime =format1.parse(entry.getValue().toString());
                        continue;
                }
            }
        }
        //查询总页数
        Long total = mapper.selectFaSongReportCount();
        List<DxFaSongJiLu> list =  mapper.selectFaSongReport(query.getPage() - 1,query.getLimit(),beginTime,endTime);
        return new TableResultResponse<DxFaSongJiLu>(total, list);
    }
}
