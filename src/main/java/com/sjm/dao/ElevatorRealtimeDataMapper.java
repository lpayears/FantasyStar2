package com.sjm.dao;

import com.sjm.bean.ElevatorRealtimeData;
import com.sjm.bean.ElevatorRealtimeDataExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ElevatorRealtimeDataMapper {
    long countByExample(ElevatorRealtimeDataExample example);

    int deleteByExample(ElevatorRealtimeDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ElevatorRealtimeData record);

    int insertSelective(ElevatorRealtimeData record);

    List<ElevatorRealtimeData> selectByExample(ElevatorRealtimeDataExample example);

    ElevatorRealtimeData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ElevatorRealtimeData record, @Param("example") ElevatorRealtimeDataExample example);

    int updateByExample(@Param("record") ElevatorRealtimeData record, @Param("example") ElevatorRealtimeDataExample example);

    int updateByPrimaryKeySelective(ElevatorRealtimeData record);

    int updateByPrimaryKey(ElevatorRealtimeData record);
}