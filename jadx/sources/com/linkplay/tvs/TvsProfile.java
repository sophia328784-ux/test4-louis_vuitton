package com.linkplay.tvs;

import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class TvsProfile {
    private String clientID;
    private String dsn;
    private String productID;

    public String getClientID() {
        return this.clientID;
    }

    public String getDsn() {
        return this.dsn;
    }

    public String getProductID() {
        return this.productID;
    }

    public void setClientID(String str) {
        this.clientID = str;
    }

    public void setDsn(String str) {
        this.dsn = str;
    }

    public void setProductID(String str) {
        this.productID = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("TvsProfile{productID='");
        sb.append(this.productID);
        sb.append("', dsn='");
        sb.append(this.dsn);
        sb.append("', clientID='");
        return n00.r(this.clientID, "'}", sb);
    }
}
