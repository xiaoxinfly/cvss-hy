package com.cvss.pojo;

import java.util.Date;

public class CvSettlement {
    private Integer settlementId;

    private String internalModels;

    private String partsJson;

    private Integer userId;

    private Long totalPrice;

    private Date createTime;

    public Integer getSettlementId() {
        return settlementId;
    }

    public void setSettlementId(Integer settlementId) {
        this.settlementId = settlementId;
    }

    public String getInternalModels() {
        return internalModels;
    }

    public void setInternalModels(String internalModels) {
        this.internalModels = internalModels;
    }

    public String getPartsJson() {
        return partsJson;
    }

    public void setPartsJson(String partsJson) {
        this.partsJson = partsJson;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}