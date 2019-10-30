package com.sjm.bean;

public class TemperatureHumidityRealtimeData {
    private Integer id;

    private Integer logicId;

    private String envTemper;

    private String roomTemper;

    private String avgRadiation;

    private String airHumidity;

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

    public String getEnvTemper() {
        return envTemper;
    }

    public void setEnvTemper(String envTemper) {
        this.envTemper = envTemper == null ? null : envTemper.trim();
    }

    public String getRoomTemper() {
        return roomTemper;
    }

    public void setRoomTemper(String roomTemper) {
        this.roomTemper = roomTemper == null ? null : roomTemper.trim();
    }

    public String getAvgRadiation() {
        return avgRadiation;
    }

    public void setAvgRadiation(String avgRadiation) {
        this.avgRadiation = avgRadiation == null ? null : avgRadiation.trim();
    }

    public String getAirHumidity() {
        return airHumidity;
    }

    public void setAirHumidity(String airHumidity) {
        this.airHumidity = airHumidity == null ? null : airHumidity.trim();
    }
}