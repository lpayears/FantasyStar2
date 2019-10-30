package com.sjm.dao;

import com.sjm.bean.BimModel;
import com.sjm.bean.BimModelExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface BimModelMapper {
    long countByExample(BimModelExample example);

    int deleteByExample(BimModelExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(BimModel record);

    int insertSelective(BimModel record);

    List<BimModel> selectByExample(BimModelExample example);

    BimModel selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") BimModel record, @Param("example") BimModelExample example);

    int updateByExample(@Param("record") BimModel record, @Param("example") BimModelExample example);

    int updateByPrimaryKeySelective(BimModel record);

    int updateByPrimaryKey(BimModel record);

    //self-define
    List<Long> selectByIds(List<Integer> ids);
}