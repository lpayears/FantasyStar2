package com.sjm.service;

import java.util.List;
import java.util.Map;

import com.sjm.bean.Device;
import com.sjm.bean.DeviceCurrentAlarm;
import com.sjm.bean.DeviceDetail;
import com.sjm.bean.DeviceHistoryAlarm;
import com.sjm.bean.MaintenanceRecord;
import com.sjm.bean.Task;
import com.sjm.util.MyPO;

public interface DeviceService {

    List<DeviceDetail> getDevices(MyPO po);

    List<MaintenanceRecord> getMaintainInfos(MyPO po);

    MaintenanceRecord getMaintainInfo(Integer id);

    void updateMaintainInfo(MaintenanceRecord record);

    void delMaintainInfo(Integer id);

    void updateDeviceInfo(Device device);

    DeviceDetail getDeviceInfo(Integer id);

    List<DeviceHistoryAlarm> getHistoryAlarms(MyPO po);

    List<DeviceCurrentAlarm> getCurrentAlarms(MyPO po);

    List<MaintenanceRecord> getMaintainInfosWithDevice(DeviceDetail deviceDetail);

    List<DeviceDetail> getDevicesWithCondition(Task task);

    DeviceCurrentAlarm getCurrentAlarmById(Integer id);

    DeviceDetail getDeviceInfoByCurrentAlarm(DeviceCurrentAlarm dca);

    DeviceHistoryAlarm getHistoryAlarmById(Integer id);

    DeviceDetail getDeviceInfoByHistoryAlarm(DeviceHistoryAlarm dha);

    Map<String, Object> getBrokenTimes();

    void saveDevice(DeviceDetail deviceDetail);

    long countCurrentAlarm();

    void createQrCode(Integer id);

    List<String> getDistinctDeviceNames();

    void saveIntegrationModel(DeviceDetail deviceDetail, String modelName);


}
