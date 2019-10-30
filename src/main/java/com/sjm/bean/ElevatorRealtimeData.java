package com.sjm.bean;

public class ElevatorRealtimeData {
    private Integer id;

    private Integer logicId;

    private String information;

    private String brand;

    private String kind;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLogicId() {
        return logicId;
    }

    public void setLogicId(Integer logicId) {
        this.logicId = logicId;
    }

    public String getInformation() {
        return information;
    }

    public void setInformation(String information) {
        this.information = information == null ? null : information.trim();
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand == null ? null : brand.trim();
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }
}