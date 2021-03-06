package com.cvss.pojo;

import java.math.BigDecimal;

public class Cv extends BasePojo{
    private Integer cvId;

    private String internalModels;

    private String externalModels;

    private Integer seriesId;

    private BigDecimal retailPrice;

    private Integer cab;

    private Integer gearbox;

    private Integer drive;

    private String wheelBase;

    private Integer tire;

    private Integer engine;

    private Integer flip;

    private Integer mount;

    private Integer bunkers;

    private String otherDescription;

    private BigDecimal tractiveTonnage;

    private String carSize;

    public Integer getBunkers() {
        return bunkers;
    }

    public void setBunkers(Integer bunkers) {
        this.bunkers = bunkers;
    }

    public Integer getCvId() {
        return cvId;
    }

    public void setCvId(Integer cvId) {
        this.cvId = cvId;
    }

    public String getInternalModels() {
        return internalModels;
    }

    public void setInternalModels(String internalModels) {
        this.internalModels = internalModels;
    }

    public String getExternalModels() {
        return externalModels;
    }

    public void setExternalModels(String externalModels) {
        this.externalModels = externalModels;
    }

    public Integer getSeriesId() {
        return seriesId;
    }

    public void setSeriesId(Integer seriesId) {
        this.seriesId = seriesId;
    }

    public BigDecimal getRetailPrice() {
        return retailPrice;
    }

    public void setRetailPrice(BigDecimal retailPrice) {
        this.retailPrice = retailPrice;
    }

    public Integer getCab() {
        return cab;
    }

    public void setCab(Integer cab) {
        this.cab = cab;
    }

    public Integer getGearbox() {
        return gearbox;
    }

    public void setGearbox(Integer gearbox) {
        this.gearbox = gearbox;
    }

    public Integer getDrive() {
        return drive;
    }

    public void setDrive(Integer drive) {
        this.drive = drive;
    }

    public String getWheelBase() {
        return wheelBase;
    }

    public void setWheelBase(String wheelBase) {
        this.wheelBase = wheelBase;
    }

    public Integer getTire() {
        return tire;
    }

    public void setTire(Integer tire) {
        this.tire = tire;
    }

    public Integer getEngine() {
        return engine;
    }

    public void setEngine(Integer engine) {
        this.engine = engine;
    }

    public Integer getFlip() {
        return flip;
    }

    public void setFlip(Integer flip) {
        this.flip = flip;
    }

    public Integer getMount() {
        return mount;
    }

    public void setMount(Integer mount) {
        this.mount = mount;
    }

    public String getOtherDescription() {
        return otherDescription;
    }

    public void setOtherDescription(String otherDescription) {
        this.otherDescription = otherDescription;
    }

    public BigDecimal getTractiveTonnage() {
        return tractiveTonnage;
    }

    public void setTractiveTonnage(BigDecimal tractiveTonnage) {
        this.tractiveTonnage = tractiveTonnage;
    }

    public String getCarSize() {
        return carSize;
    }

    public void setCarSize(String carSize) {
        this.carSize = carSize;
    }
}