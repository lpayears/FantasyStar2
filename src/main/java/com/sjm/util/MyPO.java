package com.sjm.util;

/**
 * 搜索辅助类
 *
 * @author sonkabin
 */
public class MyPO {

    private Integer buildNo;
    private Integer layerNo;
    private String deviceName;

    public Integer getBuildNo() {
        return buildNo;
    }

    public void setBuildNo(Integer buildNo) {
        this.buildNo = buildNo;
    }

    public Integer getLayerNo() {
        return layerNo;
    }

    public void setLayerNo(Integer layerNo) {
        this.layerNo = layerNo;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    @Override
    public String toString() {
        return "MyPO [buildNo=" + buildNo + ", layerNo=" + layerNo + ", deviceName=" + deviceName + "]";
    }

}
