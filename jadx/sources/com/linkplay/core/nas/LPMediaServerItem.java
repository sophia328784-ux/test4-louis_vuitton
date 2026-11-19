package com.linkplay.core.nas;

import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPMediaServerItem {
    private Device device;
    private int currPage = 1;
    private int perPage = 20;

    public int getCurrPage() {
        return this.currPage;
    }

    public Device getDevice() {
        return this.device;
    }

    public int getPerPage() {
        return this.perPage;
    }

    public void setCurrPage(int i2) {
        this.currPage = i2;
    }

    public void setDevice(Device device) {
        this.device = device;
    }

    public void setPerPage(int i2) {
        this.perPage = i2;
    }
}
