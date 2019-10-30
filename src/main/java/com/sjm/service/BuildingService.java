package com.sjm.service;

import java.util.List;
import java.util.Map;

import com.sjm.bean.Building;
import com.sjm.bean.DeviceDetail;

public interface BuildingService {

    List<Building> getBuildings(Building building);

    List<DeviceDetail> getBuildingDevice(Integer id);

    void saveBuilding(Building building);

    Map<String, Integer> getNo();

}
