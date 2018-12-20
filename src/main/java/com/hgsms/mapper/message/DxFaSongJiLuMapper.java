package com.hgsms.mapper.message;

import com.hgsms.model.message.DxFaSongJiLu;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.mapper.common.Mapper;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by CDZ on 2018/12/18.
 */
public interface DxFaSongJiLuMapper extends Mapper<DxFaSongJiLu>{

    List<DxFaSongJiLu> seleectFaSongJiLuPage(@Param("dxFaSongJiLu") DxFaSongJiLu dxFaSongJiLu);

    List<DxFaSongJiLu> selectFaSongReport(@Param("page") Integer page,@Param("limit") Integer limit,@Param("beginTime") Date beginTime,@Param("endTime") Date endTime);

    Long selectFaSongReportCount();



}
