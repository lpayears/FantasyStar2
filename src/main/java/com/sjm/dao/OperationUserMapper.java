package com.sjm.dao;

import com.sjm.bean.OperationUser;
import com.sjm.bean.OperationUserExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface OperationUserMapper {
    long countByExample(OperationUserExample example);

    int deleteByExample(OperationUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OperationUser record);

    int insertSelective(OperationUser record);

    List<OperationUser> selectByExample(OperationUserExample example);

    OperationUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OperationUser record, @Param("example") OperationUserExample example);

    int updateByExample(@Param("record") OperationUser record, @Param("example") OperationUserExample example);

    int updateByPrimaryKeySelective(OperationUser record);

    int updateByPrimaryKey(OperationUser record);

    //self-define
    List<String> selectNames();
}