package com.sjm.dao;

import com.sjm.bean.DeviceCurrentAlarm;
import com.sjm.bean.DeviceCurrentAlarmExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DeviceCurrentAlarmMapper {
    long countByExample(DeviceCurrentAlarmExample example);

    int deleteByExample(DeviceCurrentAlarmExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DeviceCurrentAlarm record);

    int insertSelective(DeviceCurrentAlarm record);

    List<DeviceCurrentAlarm> selectByExample(DeviceCurrentAlarmExample example);

    DeviceCurrentAlarm selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DeviceCurrentAlarm record, @Param("example") DeviceCurrentAlarmExample example);

    int updateByExample(@Param("record") DeviceCurrentAlarm record, @Param("example") DeviceCurrentAlarmExample example);

    int updateByPrimaryKeySelective(DeviceCurrentAlarm record);

    int updateByPrimaryKey(DeviceCurrentAlarm record);
}