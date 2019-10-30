package com.sjm.dao;

import com.sjm.bean.DeviceHistoryAlarm;
import com.sjm.bean.DeviceHistoryAlarmExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DeviceHistoryAlarmMapper {
    long countByExample(DeviceHistoryAlarmExample example);

    int deleteByExample(DeviceHistoryAlarmExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DeviceHistoryAlarm record);

    int insertSelective(DeviceHistoryAlarm record);

    List<DeviceHistoryAlarm> selectByExample(DeviceHistoryAlarmExample example);

    DeviceHistoryAlarm selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DeviceHistoryAlarm record, @Param("example") DeviceHistoryAlarmExample example);

    int updateByExample(@Param("record") DeviceHistoryAlarm record, @Param("example") DeviceHistoryAlarmExample example);

    int updateByPrimaryKeySelective(DeviceHistoryAlarm record);

    int updateByPrimaryKey(DeviceHistoryAlarm record);
}