package com.sjm.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sjm.bean.Building;
import com.sjm.bean.DeviceDetail;
import com.sjm.service.BuildingService;
import com.sjm.util.Message;

@RestController
public class BuildingController {

    @Autowired
    private BuildingService buildingService;

    @RequestMapping(value = "/getBuildings", method = RequestMethod.GET)
    public Message getBuildings(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Building building) {
        PageHelper.startPage(pn, 8);
        List<Building> buildings = buildingService.getBuildings(building);
        PageInfo<?> page = new PageInfo<>(buildings, 8);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/getBuildingDevice/{id}", method = RequestMethod.GET)
    public Message getBuildingDevice(@PathVariable("id") Integer id) {
        List<DeviceDetail> deviceDetails = buildingService.getBuildingDevice(id);
        return Message.success().add("deviceDetails", deviceDetails);
    }

    @RequestMapping(value = "/saveBuilding", method = RequestMethod.POST)
    public Message saveBuilding(Building building) {
        buildingService.saveBuilding(building);
        return Message.success();
    }

    @RequestMapping(value = "/getNo", method = RequestMethod.GET)
    public Message getNo() {
        Map<String, Integer> map = buildingService.getNo();
        return Message.success().add("no", map);
    }

}
