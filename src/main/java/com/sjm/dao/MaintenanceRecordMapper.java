package com.sjm.dao;

import com.sjm.bean.MaintenanceRecord;
import com.sjm.bean.MaintenanceRecordExample;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface MaintenanceRecordMapper {
    long countByExample(MaintenanceRecordExample example);

    List<Map<String, Object>> countByDeviceName();

    int deleteByExample(MaintenanceRecordExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(MaintenanceRecord record);

    int insertSelective(MaintenanceRecord record);

    List<MaintenanceRecord> selectByExample(MaintenanceRecordExample example);

    MaintenanceRecord selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") MaintenanceRecord record, @Param("example") MaintenanceRecordExample example);

    int updateByExample(@Param("record") MaintenanceRecord record, @Param("example") MaintenanceRecordExample example);

    int updateByPrimaryKeySelective(MaintenanceRecord record);

    int updateByPrimaryKey(MaintenanceRecord record);


}