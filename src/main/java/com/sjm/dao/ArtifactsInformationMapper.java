package com.sjm.dao;

import com.sjm.bean.ArtifactsInformation;
import com.sjm.bean.ArtifactsInformationExample;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ArtifactsInformationMapper {
    long countByExample(ArtifactsInformationExample example);

    int deleteByExample(ArtifactsInformationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ArtifactsInformation record);

    int insertSelective(ArtifactsInformation record);

    List<ArtifactsInformation> selectByExample(ArtifactsInformationExample example);

    ArtifactsInformation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ArtifactsInformation record, @Param("example") ArtifactsInformationExample example);

    int updateByExample(@Param("record") ArtifactsInformation record, @Param("example") ArtifactsInformationExample example);

    int updateByPrimaryKeySelective(ArtifactsInformation record);

    int updateByPrimaryKey(ArtifactsInformation record);
}