package com.sjm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sjm.bean.Device;
import com.sjm.bean.DeviceCurrentAlarm;
import com.sjm.bean.DeviceCurrentAlarmExample;
import com.sjm.bean.DeviceDetail;
import com.sjm.bean.DeviceDetailExample;
import com.sjm.bean.DeviceDetailExample.Criteria;
import com.sjm.bean.DeviceHistoryAlarm;
import com.sjm.bean.DeviceHistoryAlarmExample;
import com.sjm.bean.MaintenanceRecord;
import com.sjm.bean.MaintenanceRecordExample;
import com.sjm.bean.Task;
import com.sjm.dao.DeviceCurrentAlarmMapper;
import com.sjm.dao.DeviceDetailMapper;
import com.sjm.dao.DeviceHistoryAlarmMapper;
import com.sjm.dao.MaintenanceRecordMapper;
import com.sjm.service.DeviceService;
import com.sjm.util.MyPO;
import com.sjm.util.MyUtil;
import com.sjm.util.QrCodeUtil;

@Service
public class DeviceServiceImpl implements DeviceService {

    @Autowired
    private DeviceDetailMapper deviceDetailMapper;

    @Autowired
    private MaintenanceRecordMapper maintenanceRecordMapper;

    @Autowired
    private DeviceHistoryAlarmMapper deviceHistoryAlarmMapper;

    @Autowired
    private DeviceCurrentAlarmMapper deviceCurrentAlarmMapper;

    /**
     * 学到的知识无法应用,让人怀疑真的有用吗???????
     * 一次又一次,我想问,到底有用吗,还不如去学算法,fuck
     * 快快快,emmmmmm,我不想这样啊,他们到底是怎样开发的呢?????????????????????????//
     */

    /**
     *
     */
    @Override
    public List<DeviceDetail> getDevices(MyPO po) {
        // TODO Auto-generated method stub
        DeviceDetailExample example = new DeviceDetailExample();
        Criteria criteria = example.createCriteria();
        Integer buildNo = po.getBuildNo();
        Integer layerNo = po.getLayerNo();
        String deviceName = po.getDeviceName();
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andPositionLike(buildNo + "%");
        }
        if (!MyUtil.ObjectNull(layerNo)) {
            criteria.andPositionLike("%" + layerNo);
        }
        if (!MyUtil.StringNull(deviceName)) {
            criteria.andDeviceNameEqualTo(deviceName);
        }
        List<DeviceDetail> deviceDetails = deviceDetailMapper.selectByExample(example);
        return deviceDetails;
    }


    @Override
    public void updateDeviceInfo(Device device) {
        // TODO Auto-generated method stub
    }

    @Override
    public List<MaintenanceRecord> getMaintainInfos(MyPO po) {
        // TODO Auto-generated method stub
        MaintenanceRecordExample example = new MaintenanceRecordExample();
        com.sjm.bean.MaintenanceRecordExample.Criteria criteria = example.createCriteria();
        Integer buildNo = po.getBuildNo();
        Integer layerNo = po.getLayerNo();
        String deviceName = po.getDeviceName();
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andPositionLike(buildNo + "%");
        }
        if (!MyUtil.ObjectNull(layerNo)) {
            criteria.andPositionLike("%" + layerNo);
        }
        if (!MyUtil.StringNull(deviceName)) {
            criteria.andDeviceNameEqualTo(deviceName);
        }
        List<MaintenanceRecord> records = maintenanceRecordMapper.selectByExample(example);
        return records;
    }

    @Override
    public MaintenanceRecord getMaintainInfo(Integer id) {
        // TODO Auto-generated method stub
        return maintenanceRecordMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateMaintainInfo(MaintenanceRecord record) {
        // TODO Auto-generated method stub
        record.setMaintenanceTime(new Date());
        maintenanceRecordMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public void delMaintainInfo(Integer id) {
        // TODO Auto-generated method stub
        maintenanceRecordMapper.deleteByPrimaryKey(id);
    }

    @Override
    public DeviceDetail getDeviceInfo(Integer id) {
        // TODO Auto-generated method stub
        DeviceDetail deviceDetail = deviceDetailMapper.selectByPrimaryKey(id);
        return deviceDetail;
    }

    @Override
    public List<MaintenanceRecord> getMaintainInfosWithDevice(DeviceDetail deviceDetail) {
        // TODO Auto-generated method stub
        String deviceName = deviceDetail.getDeviceName();
        Integer logicId = deviceDetail.getLogicId();
        MaintenanceRecordExample example = new MaintenanceRecordExample();
        example.createCriteria().andDeviceNameEqualTo(deviceName).andLogicIdEqualTo(logicId).andMaintenanceStatusEqualTo("Y");
        List<MaintenanceRecord> list = maintenanceRecordMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<DeviceCurrentAlarm> getCurrentAlarms(MyPO po) {
        // TODO Auto-generated method stub
        DeviceCurrentAlarmExample example = new DeviceCurrentAlarmExample();
        com.sjm.bean.DeviceCurrentAlarmExample.Criteria criteria = example.createCriteria();
        Integer buildNo = po.getBuildNo();
        Integer layerNo = po.getLayerNo();
        String deviceName = po.getDeviceName();
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andPositionLike(buildNo + "%");
        }
        if (!MyUtil.ObjectNull(layerNo)) {
            criteria.andPositionLike("%" + layerNo);
        }
        if (!MyUtil.StringNull(deviceName)) {
            criteria.andDeviceNameEqualTo(deviceName);
        }
        List<DeviceCurrentAlarm> list = deviceCurrentAlarmMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<DeviceHistoryAlarm> getHistoryAlarms(MyPO po) {
        // TODO Auto-generated method stub
        DeviceHistoryAlarmExample example = new DeviceHistoryAlarmExample();
        com.sjm.bean.DeviceHistoryAlarmExample.Criteria criteria = example.createCriteria();
        Integer buildNo = po.getBuildNo();
        Integer layerNo = po.getLayerNo();
        String deviceName = po.getDeviceName();
        if (!MyUtil.ObjectNull(buildNo)) {
            criteria.andPositionLike(buildNo + "%");
        }
        if (!MyUtil.ObjectNull(layerNo)) {
            criteria.andPositionLike("%" + layerNo);
        }
        if (!MyUtil.StringNull(deviceName)) {
            criteria.andDeviceNameEqualTo(deviceName);
        }
        List<DeviceHistoryAlarm> list = deviceHistoryAlarmMapper.selectByExample(example);
        return list;
    }


    /**
     * 通过Task选择条件获取Device
     * select * from device_detail where (device_name,logic_id) in (("摄像头",1),("电梯",1))
     */
    @Override
    public List<DeviceDetail> getDevicesWithCondition(Task task) {
        // TODO Auto-generated method stub
        List<Map<String, Object>> device = new ArrayList<>();
        String str = task.getDevice();
        //获得所有设备
        String[] devices = str.split(",");
        for (String string : devices) {
            Map<String, Object> map = new HashMap<>();
            if (string.trim().length() == 0) {
                continue;
            }
            String[] info = string.split(":");
            map.put("deviceName", info[0]);
            map.put("logicId", info[1]);
            device.add(map);
        }
        System.out.println(device);
        List<DeviceDetail> list = deviceDetailMapper.selectByNameLogicId(device);
        return list;
    }

    @Override
    public DeviceCurrentAlarm getCurrentAlarmById(Integer id) {
        // TODO Auto-generated method stub
        DeviceCurrentAlarm dca = deviceCurrentAlarmMapper.selectByPrimaryKey(id);
        return dca;
    }

    @Override
    public DeviceDetail getDeviceInfoByCurrentAlarm(DeviceCurrentAlarm dca) {
        // TODO Auto-generated method stub
        String device = dca.getDeviceName();
        Integer logicId = dca.getLogicId();
        DeviceDetailExample example = new DeviceDetailExample();
        example.createCriteria().andDeviceNameEqualTo(device).andLogicIdEqualTo(logicId);
        List<DeviceDetail> list = deviceDetailMapper.selectByExample(example);
        if (!MyUtil.ListNull(list)) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public DeviceHistoryAlarm getHistoryAlarmById(Integer id) {
        // TODO Auto-generated method stub
        DeviceHistoryAlarm dha = deviceHistoryAlarmMapper.selectByPrimaryKey(id);
        return dha;
    }

    @Override
    public DeviceDetail getDeviceInfoByHistoryAlarm(DeviceHistoryAlarm dha) {
        // TODO Auto-generated method stub
        String device = dha.getDeviceName();
        Integer logicId = dha.getLogicId();
        DeviceDetailExample example = new DeviceDetailExample();
        example.createCriteria().andDeviceNameEqualTo(device).andLogicIdEqualTo(logicId);
        List<DeviceDetail> list = deviceDetailMapper.selectByExample(example);
        if (!MyUtil.ListNull(list)) {
            return list.get(0);
        }
        return null;
    }

    /**
     * select device_name deviceName,count(*) brokenTime from maintenance_record group by device_name
     */
    @Override
    public Map<String, Object> getBrokenTimes() {
        // TODO Auto-generated method stub
        List<Map<String, Object>> maps = maintenanceRecordMapper.countByDeviceName();
        List<Object> deviceNames = new ArrayList<>();
        List<Object> brokenTimes = new ArrayList<>();
        maps.forEach((each) -> {
            deviceNames.add(each.get("deviceName"));
            brokenTimes.add(each.get("brokenTime"));
        });
        Map<String, Object> map = new HashMap<>();
        map.put("deviceNames", deviceNames);
        map.put("brokenTimes", brokenTimes);
        return map;
    }

    @Override
    public void saveDevice(DeviceDetail deviceDetail) {
        // TODO Auto-generated method stub
        deviceDetailMapper.insertSelective(deviceDetail);
    }

    @Override
    public long countCurrentAlarm() {
        // TODO Auto-generated method stub
        DeviceCurrentAlarmExample example = new DeviceCurrentAlarmExample();
        long alarmCount = deviceCurrentAlarmMapper.countByExample(example);
        return alarmCount;
    }

    @Override
    public void createQrCode(Integer id) {
        // TODO Auto-generated method stub
        DeviceDetail deviceDetail = deviceDetailMapper.selectByPrimaryKey(id);
        QrCodeUtil.createQrCode(deviceDetail);
    }

    @Override
    public List<String> getDistinctDeviceNames() {
        // TODO Auto-generated method stub
        List<String> list = deviceDetailMapper.selectDistinctDeviceNames();
        return list;
    }

    @Override
    public void saveIntegrationModel(DeviceDetail deviceDetail, String modelName) {
        // TODO Auto-generated method stub
        deviceDetailMapper.insertSelective(deviceDetail);
        //???????...

    }
}
