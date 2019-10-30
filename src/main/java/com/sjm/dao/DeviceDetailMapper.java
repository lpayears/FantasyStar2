package com.sjm.dao;

import com.sjm.bean.DeviceDetail;
import com.sjm.bean.DeviceDetailExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface DeviceDetailMapper {
    long countByExample(DeviceDetailExample example);

    int deleteByExample(DeviceDetailExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DeviceDetail record);

    int insertSelective(DeviceDetail record);

    List<DeviceDetail> selectByExample(DeviceDetailExample example);

    DeviceDetail selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DeviceDetail record, @Param("example") DeviceDetailExample example);

    int updateByExample(@Param("record") DeviceDetail record, @Param("example") DeviceDetailExample example);

    int updateByPrimaryKeySelective(DeviceDetail record);

    int updateByPrimaryKey(DeviceDetail record);


    //self-define
    List<DeviceDetail> selectByNameLogicId(List<Map<String, Object>> device);

    List<String> selectDistinctDeviceNames();

}