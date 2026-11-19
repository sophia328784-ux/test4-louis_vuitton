package com.linkplay.tvs;

/* JADX INFO: loaded from: classes2.dex */
public class TvsParams {
    String tvsAuthCode;
    String tvsClientID;
    String tvsRedirectUri;

    public TvsParams(String str, String str2, String str3) {
        this.tvsClientID = str;
        this.tvsAuthCode = str2;
        this.tvsRedirectUri = str3;
    }

    public String getTvsAuthCode() {
        return this.tvsAuthCode;
    }

    public String getTvsClientID() {
        return this.tvsClientID;
    }

    public String getTvsRedirectUri() {
        return this.tvsRedirectUri;
    }

    public void setTvsAuthCode(String str) {
        this.tvsAuthCode = str;
    }

    public void setTvsClientID(String str) {
        this.tvsClientID = str;
    }

    public void setTvsRedirectUri(String str) {
        this.tvsRedirectUri = str;
    }

    public TvsParams() {
    }
}
