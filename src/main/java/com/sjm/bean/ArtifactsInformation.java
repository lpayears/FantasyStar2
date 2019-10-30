package com.sjm.bean;

public class ArtifactsInformation {
    private Integer id;

    private Integer bimId;

    private String name;

    private String descri;

    private String pos;

    private String size;

    private String func;

    private String border;

    private String material;

    private String producer;

    private String heatTransferCoefficient;

    private String absorptionRate;

    private String thermalMass;

    private String thermalResistance;

    private String opticalTransmissionRate;

    private String solarThermalEfficiency;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBimId() {
        return bimId;
    }

    public void setBimId(Integer bimId) {
        this.bimId = bimId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri == null ? null : descri.trim();
    }

    public String getPos() {
        return pos;
    }

    public void setPos(String pos) {
        this.pos = pos == null ? null : pos.trim();
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size == null ? null : size.trim();
    }

    public String getFunc() {
        return func;
    }

    public void setFunc(String func) {
        this.func = func == null ? null : func.trim();
    }

    public String getBorder() {
        return border;
    }

    public void setBorder(String border) {
        this.border = border == null ? null : border.trim();
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material == null ? null : material.trim();
    }

    public String getProducer() {
        return producer;
    }

    public void setProducer(String producer) {
        this.producer = producer == null ? null : producer.trim();
    }

    public String getHeatTransferCoefficient() {
        return heatTransferCoefficient;
    }

    public void setHeatTransferCoefficient(String heatTransferCoefficient) {
        this.heatTransferCoefficient = heatTransferCoefficient == null ? null : heatTransferCoefficient.trim();
    }

    public String getAbsorptionRate() {
        return absorptionRate;
    }

    public void setAbsorptionRate(String absorptionRate) {
        this.absorptionRate = absorptionRate == null ? null : absorptionRate.trim();
    }

    public String getThermalMass() {
        return thermalMass;
    }

    public void setThermalMass(String thermalMass) {
        this.thermalMass = thermalMass == null ? null : thermalMass.trim();
    }

    public String getThermalResistance() {
        return thermalResistance;
    }

    public void setThermalResistance(String thermalResistance) {
        this.thermalResistance = thermalResistance == null ? null : thermalResistance.trim();
    }

    public String getOpticalTransmissionRate() {
        return opticalTransmissionRate;
    }

    public void setOpticalTransmissionRate(String opticalTransmissionRate) {
        this.opticalTransmissionRate = opticalTransmissionRate == null ? null : opticalTransmissionRate.trim();
    }

    public String getSolarThermalEfficiency() {
        return solarThermalEfficiency;
    }

    public void setSolarThermalEfficiency(String solarThermalEfficiency) {
        this.solarThermalEfficiency = solarThermalEfficiency == null ? null : solarThermalEfficiency.trim();
    }
}