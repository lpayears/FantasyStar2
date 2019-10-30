package com.sjm.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class DeviceDetail {
    private Integer id;

    private String deviceName;

    private Integer logicId;

    private String type;

    private String applyFactory;

    private String leaveFactoryNo;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date leaveFactoryDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date installDate;

    private String position;

    private Integer availableYear;

    private String etc;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startDate;

    private String ratedVoltage;

    private String ratedFrequency;

    private String ratedCurrent;

    private String applyPhone;

    private String produceContrary;

    private String easyBrokenThing;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName == null ? null : deviceName.trim();
    }

    public Integer getLogicId() {
        return logicId;
    }

    public void setLogicId(Integer logicId) {
        this.logicId = logicId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getApplyFactory() {
        return applyFactory;
    }

    public void setApplyFactory(String applyFactory) {
        this.applyFactory = applyFactory == null ? null : applyFactory.trim();
    }

    public String getLeaveFactoryNo() {
        return leaveFactoryNo;
    }

    public void setLeaveFactoryNo(String leaveFactoryNo) {
        this.leaveFactoryNo = leaveFactoryNo == null ? null : leaveFactoryNo.trim();
    }

    public Date getLeaveFactoryDate() {
        return leaveFactoryDate;
    }

    public void setLeaveFactoryDate(Date leaveFactoryDate) {
        this.leaveFactoryDate = leaveFactoryDate;
    }

    public Date getInstallDate() {
        return installDate;
    }

    public void setInstallDate(Date installDate) {
        this.installDate = installDate;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public Integer getAvailableYear() {
        return availableYear;
    }

    public void setAvailableYear(Integer availableYear) {
        this.availableYear = availableYear;
    }

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc == null ? null : etc.trim();
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getRatedVoltage() {
        return ratedVoltage;
    }

    public void setRatedVoltage(String ratedVoltage) {
        this.ratedVoltage = ratedVoltage == null ? null : ratedVoltage.trim();
    }

    public String getRatedFrequency() {
        return ratedFrequency;
    }

    public void setRatedFrequency(String ratedFrequency) {
        this.ratedFrequency = ratedFrequency == null ? null : ratedFrequency.trim();
    }

    public String getRatedCurrent() {
        return ratedCurrent;
    }

    public void setRatedCurrent(String ratedCurrent) {
        this.ratedCurrent = ratedCurrent == null ? null : ratedCurrent.trim();
    }

    public String getApplyPhone() {
        return applyPhone;
    }

    public void setApplyPhone(String applyPhone) {
        this.applyPhone = applyPhone == null ? null : applyPhone.trim();
    }

    public String getProduceContrary() {
        return produceContrary;
    }

    public void setProduceContrary(String produceContrary) {
        this.produceContrary = produceContrary == null ? null : produceContrary.trim();
    }

    public String getEasyBrokenThing() {
        return easyBrokenThing;
    }

    public void setEasyBrokenThing(String easyBrokenThing) {
        this.easyBrokenThing = easyBrokenThing == null ? null : easyBrokenThing.trim();
    }

    @Override
    public String toString() {
        return "\"id\":\"" + id + "\", \"deviceName\":\"" + deviceName + "\", \"logicId\":\"" + logicId + "\", \"type\":\"" + type
                + "\", \"applyFactory\":\"" + applyFactory + "\", \"leaveFactoryNo\":\"" + leaveFactoryNo + "\", \"leaveFactoryDate\":\""
                + leaveFactoryDate + "\", \"installDate\":\"" + installDate + "\", \"position\":\"" + position + "\", \"availableYear\":\""
                + availableYear + "\", \"etc\":\"" + etc + "\", \"startDate\":\"" + startDate + "\", \"ratedVoltage\":\"" + ratedVoltage
                + "\", \"ratedFrequency\":\"" + ratedFrequency + "\", \"ratedCurrent\":\"" + ratedCurrent + "\", \"applyPhone\":\"" + applyPhone
                + "\", \"produceContrary\":\"" + produceContrary + "\", \"easyBrokenThing\":\"" + easyBrokenThing + "\"";
    }


}