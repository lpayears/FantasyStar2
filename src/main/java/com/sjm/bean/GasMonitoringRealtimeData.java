package com.sjm.bean;

public class GasMonitoringRealtimeData {
    private Integer id;

    private Integer logicId;

    private String pmConcentration;

    private String carbonDioxideConcentration;

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

    public String getPmConcentration() {
        return pmConcentration;
    }

    public void setPmConcentration(String pmConcentration) {
        this.pmConcentration = pmConcentration == null ? null : pmConcentration.trim();
    }

    public String getCarbonDioxideConcentration() {
        return carbonDioxideConcentration;
    }

    public void setCarbonDioxideConcentration(String carbonDioxideConcentration) {
        this.carbonDioxideConcentration = carbonDioxideConcentration == null ? null : carbonDioxideConcentration.trim();
    }
}