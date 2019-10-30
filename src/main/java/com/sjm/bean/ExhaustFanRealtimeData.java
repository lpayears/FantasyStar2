package com.sjm.bean;

public class ExhaustFanRealtimeData {
    private Integer id;

    private Integer logicId;

    private String airVolume;

    private String direction;

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

    public String getAirVolume() {
        return airVolume;
    }

    public void setAirVolume(String airVolume) {
        this.airVolume = airVolume == null ? null : airVolume.trim();
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction == null ? null : direction.trim();
    }
}