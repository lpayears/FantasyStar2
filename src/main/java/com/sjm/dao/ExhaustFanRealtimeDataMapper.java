package com.sjm.dao;

import com.sjm.bean.ExhaustFanRealtimeData;
import com.sjm.bean.ExhaustFanRealtimeDataExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ExhaustFanRealtimeDataMapper {
    long countByExample(ExhaustFanRealtimeDataExample example);

    int deleteByExample(ExhaustFanRealtimeDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ExhaustFanRealtimeData record);

    int insertSelective(ExhaustFanRealtimeData record);

    List<ExhaustFanRealtimeData> selectByExample(ExhaustFanRealtimeDataExample example);

    ExhaustFanRealtimeData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ExhaustFanRealtimeData record, @Param("example") ExhaustFanRealtimeDataExample example);

    int updateByExample(@Param("record") ExhaustFanRealtimeData record, @Param("example") ExhaustFanRealtimeDataExample example);

    int updateByPrimaryKeySelective(ExhaustFanRealtimeData record);

    int updateByPrimaryKey(ExhaustFanRealtimeData record);
}