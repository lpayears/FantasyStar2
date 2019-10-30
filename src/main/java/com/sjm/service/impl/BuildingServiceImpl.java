package com.sjm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjm.bean.Building;
import com.sjm.bean.BuildingExample;
import com.sjm.bean.BuildingExample.Criteria;
import com.sjm.bean.DeviceDetail;
import com.sjm.bean.DeviceDetailExample;
import com.sjm.dao.BuildingMapper;
import com.sjm.dao.DeviceDetailMapper;
import com.sjm.service.BuildingService;
import com.sjm.util.MyUtil;

@Service
public class BuildingServiceImpl implements BuildingService {

    @Autowired
    private BuildingMapper buildingMapper;

    @Autowired
    private DeviceDetailMapper deviceDetailMapper;

    @Override
    public List<Building> getBuildings(Building building) {
        // TODO Auto-generated method stub
        BuildingExample example = new BuildingExample();
        Criteria criteria = example.createCriteria();
        if (!MyUtil.ObjectNull(building.getBuildNo())) {
            criteria.andBuildNoEqualTo(building.getBuildNo());
        }
        if (!MyUtil.ObjectNull(building.getLayerNo())) {
            criteria.andLayerNoEqualTo(building.getLayerNo());
        }
        List<Building> list = buildingMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<DeviceDetail> getBuildingDevice(Integer id) {
        // TODO Auto-generated method stub
        Building building = buildingMapper.selectByPrimaryKey(id);
        Integer buildNo = building.getBuildNo();
        Integer layerNo = building.getLayerNo();
        DeviceDetailExample example = new DeviceDetailExample();
        String position = buildNo + "," + layerNo;
        example.createCriteria().andPositionEqualTo(position);
        List<DeviceDetail> list = deviceDetailMapper.selectByExample(example);
        return list;
    }

    @Override
    public void saveBuilding(Building building) {
        // TODO Auto-generated method stub
        buildingMapper.insertSelective(building);
    }

    /**
     * select max(build_no) buildNo,max(layer_no) layerNo from building
     */
    @Override
    public Map<String, Integer> getNo() {
        // TODO Auto-generated method stub
        Map<String, Integer> map = buildingMapper.getNo();
        return map;
    }

}
