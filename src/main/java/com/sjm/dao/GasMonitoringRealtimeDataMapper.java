package com.sjm.dao;

import com.sjm.bean.GasMonitoringRealtimeData;
import com.sjm.bean.GasMonitoringRealtimeDataExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface GasMonitoringRealtimeDataMapper {
    long countByExample(GasMonitoringRealtimeDataExample example);

    int deleteByExample(GasMonitoringRealtimeDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GasMonitoringRealtimeData record);

    int insertSelective(GasMonitoringRealtimeData record);

    List<GasMonitoringRealtimeData> selectByExample(GasMonitoringRealtimeDataExample example);

    GasMonitoringRealtimeData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GasMonitoringRealtimeData record, @Param("example") GasMonitoringRealtimeDataExample example);

    int updateByExample(@Param("record") GasMonitoringRealtimeData record, @Param("example") GasMonitoringRealtimeDataExample example);

    int updateByPrimaryKeySelective(GasMonitoringRealtimeData record);

    int updateByPrimaryKey(GasMonitoringRealtimeData record);
}