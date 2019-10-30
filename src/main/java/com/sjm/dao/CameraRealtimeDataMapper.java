package com.sjm.dao;

import com.sjm.bean.CameraRealtimeData;
import com.sjm.bean.CameraRealtimeDataExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CameraRealtimeDataMapper {
    long countByExample(CameraRealtimeDataExample example);

    int deleteByExample(CameraRealtimeDataExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CameraRealtimeData record);

    int insertSelective(CameraRealtimeData record);

    List<CameraRealtimeData> selectByExample(CameraRealtimeDataExample example);

    CameraRealtimeData selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CameraRealtimeData record, @Param("example") CameraRealtimeDataExample example);

    int updateByExample(@Param("record") CameraRealtimeData record, @Param("example") CameraRealtimeDataExample example);

    int updateByPrimaryKeySelective(CameraRealtimeData record);

    int updateByPrimaryKey(CameraRealtimeData record);
}