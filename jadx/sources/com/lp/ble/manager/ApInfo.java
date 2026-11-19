package com.lp.ble.manager;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ApInfo implements Serializable {
    private List<ApItem> aplist;
    private int res;

    public List<ApItem> getAplist() {
        return this.aplist;
    }

    public int getRes() {
        return this.res;
    }

    public void setAplist(List<ApItem> list) {
        this.aplist = list;
    }

    public void setRes(int i2) {
        this.res = i2;
    }
}
