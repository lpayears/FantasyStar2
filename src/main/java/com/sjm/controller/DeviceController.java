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
import com.sjm.bean.BimModel;
import com.sjm.bean.Device;
import com.sjm.bean.DeviceCurrentAlarm;
import com.sjm.bean.DeviceDetail;
import com.sjm.bean.DeviceHistoryAlarm;
import com.sjm.bean.MaintenanceRecord;
import com.sjm.service.BimModelService;
import com.sjm.service.DeviceService;
import com.sjm.util.Message;
import com.sjm.util.MyPO;

@RestController
public class DeviceController {

    @Autowired
    private DeviceService deviceService;

    @Autowired
    private BimModelService bimModelService;

    @RequestMapping(value = "/getDevices", method = RequestMethod.GET)
    public Message getDevices(@RequestParam(value = "pn", defaultValue = "1") Integer pn, MyPO po) {
        PageHelper.startPage(pn, 8);
        List<DeviceDetail> deviceDetails = deviceService.getDevices(po);
        PageInfo<?> page = new PageInfo<>(deviceDetails, 8);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/getDeviceInfo/{id}", method = RequestMethod.GET)
    public Message getDeviceInfo(@PathVariable("id") Integer id) {
        DeviceDetail deviceInfo = deviceService.getDeviceInfo(id);
        List<MaintenanceRecord> maintenanceRecords = deviceService.getMaintainInfosWithDevice(deviceInfo);
        return Message.success().add("deviceInfo", deviceInfo).add("records", maintenanceRecords);
    }

    @RequestMapping(value = "/updateDeviceInfo/{id}", method = RequestMethod.PUT)
    public Message updateDeviceInfo(Device device) {
        deviceService.updateDeviceInfo(device);
        return Message.success();
    }

    @RequestMapping(value = "/getMaintainInfos", method = RequestMethod.GET)
    public Message getMaintainInfos(@RequestParam(value = "pn", defaultValue = "1") Integer pn, MyPO po) {
        PageHelper.startPage(pn, 8);
        List<MaintenanceRecord> records = deviceService.getMaintainInfos(po);
        PageInfo<?> page = new PageInfo<>(records, 8);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/getMaintainInfo/{id}", method = RequestMethod.GET)
    public Message getMaintainInfo(@PathVariable("id") Integer id) {
        MaintenanceRecord record = deviceService.getMaintainInfo(id);
        return Message.success().add("record", record);
    }

    @RequestMapping(value = "/updateMaintainInfo/{id}", method = RequestMethod.PUT)
    public Message updateMaintainInfo(MaintenanceRecord record) {
        deviceService.updateMaintainInfo(record);
        return Message.success();
    }

    @RequestMapping(value = "/delMaintainInfo/{id}", method = RequestMethod.DELETE)
    public Message delMaintainInfo(@PathVariable("id") Integer id) {
        deviceService.delMaintainInfo(id);
        return Message.success();
    }

    @RequestMapping(value = "/getCurrentAlarms", method = RequestMethod.GET)
    public Message getCurrentAlarms(@RequestParam(value = "pn", defaultValue = "1") Integer pn, MyPO po) {
        PageHelper.startPage(pn, 5);
        List<DeviceCurrentAlarm> currentAlarms = deviceService.getCurrentAlarms(po);
        PageInfo<?> page = new PageInfo<>(currentAlarms, 5);
        return Message.success().add("pageInfo", page);
    }


    @RequestMapping(value = "/getHistoryAlarms", method = RequestMethod.GET)
    public Message getHistoryAlarms(@RequestParam(value = "pn", defaultValue = "1") Integer pn, MyPO po) {
        PageHelper.startPage(pn, 5);
        List<DeviceHistoryAlarm> historyAlarms = deviceService.getHistoryAlarms(po);
        PageInfo<?> page = new PageInfo<>(historyAlarms, 5);
        return Message.success().add("pageInfo", page);
    }

    @RequestMapping(value = "/getDeviceInfoByCurrentAlarm/{id}", method = RequestMethod.GET)
    public Message getDeviceInfoByCurrentAlarm(@PathVariable("id") Integer id) {
        DeviceCurrentAlarm dca = deviceService.getCurrentAlarmById(id);
        DeviceDetail deviceInfo = deviceService.getDeviceInfoByCurrentAlarm(dca);
        List<MaintenanceRecord> maintenanceRecords = deviceService.getMaintainInfosWithDevice(deviceInfo);
        return Message.success().add("deviceInfo", deviceInfo).add("records", maintenanceRecords);
    }

    @RequestMapping(value = "/getDeviceInfoByHistoryAlarm/{id}", method = RequestMethod.GET)
    public Message getDeviceInfoByHistoryAlarm(@PathVariable("id") Integer id) {
        DeviceHistoryAlarm dha = deviceService.getHistoryAlarmById(id);
        DeviceDetail deviceInfo = deviceService.getDeviceInfoByHistoryAlarm(dha);
        List<MaintenanceRecord> maintenanceRecords = deviceService.getMaintainInfosWithDevice(deviceInfo);
        return Message.success().add("deviceInfo", deviceInfo).add("records", maintenanceRecords);
    }

    @RequestMapping(value = "/getBrokenTimes", method = RequestMethod.GET)
    public Message getBrokenTimes() {
        Map<String, Object> info = deviceService.getBrokenTimes();
        return Message.success().add("info", info);
    }

    @RequestMapping(value = "/saveDevice", method = RequestMethod.POST)
    public Message saveDevice(DeviceDetail deviceDetail) {
        deviceService.saveDevice(deviceDetail);
        return Message.success();
    }

    @RequestMapping(value = "/saveIntegrationModel", method = RequestMethod.POST)
    public Message saveIntegrationModel(DeviceDetail deviceDetail, @RequestParam("modelName") String modelName) {
        deviceService.saveIntegrationModel(deviceDetail, modelName);
        return Message.success();
    }

    @RequestMapping(value = "/createQrCode/{id}", method = RequestMethod.PUT)
    public Message createQrCode(@PathVariable("id") Integer id) {
        deviceService.createQrCode(id);
        return Message.success();
    }

    @RequestMapping(value = "/getAddInfos", method = RequestMethod.GET)
    public Message getAddInfos() {
        List<String> deviceNames = deviceService.getDistinctDeviceNames();
        List<BimModel> models = bimModelService.getModels(null);
        return Message.success().add("deviceNames", deviceNames).add("models", models);
    }

}
