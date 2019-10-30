package com.sjm.dao;

import com.sjm.bean.TemperatureHumidityRealtimeData;
import com.sjm.bean.TemperatureHumidityRealtimeDataExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TemperatureHumidityRealtimeDataMapper {
    long countByExample(TemperatureHumidityRealtimeDataExample example);

    int deleteByExample(TemperatureHumidityRealtimeDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TemperatureHumidityRealtimeData record);

    int insertSelective(TemperatureHumidityRealtimeData record);

    List<TemperatureHumidityRealtimeData> selectByExample(TemperatureHumidityRealtimeDataExample example);

    TemperatureHumidityRealtimeData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TemperatureHumidityRealtimeData record, @Param("example") TemperatureHumidityRealtimeDataExample example);

    int updateByExample(@Param("record") TemperatureHumidityRealtimeData record, @Param("example") TemperatureHumidityRealtimeDataExample example);

    int updateByPrimaryKeySelective(TemperatureHumidityRealtimeData record);

    int updateByPrimaryKey(TemperatureHumidityRealtimeData record);
}