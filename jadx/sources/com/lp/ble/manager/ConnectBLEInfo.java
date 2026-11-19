package com.lp.ble.manager;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectBLEInfo implements Serializable {
    String ssid = "";
    String password = "";
    String auth = "";
    String encry = "";
    boolean bOtherNetwork = false;
    String identity = "";
    String appIP = "";
    String sessionId = "";

    public String getAppIP() {
        return this.appIP;
    }

    public String getAuth() {
        return this.auth;
    }

    public String getEncry() {
        return this.encry;
    }

    public String getIdentity() {
        return this.identity;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSsid() {
        return this.ssid;
    }

    public boolean isbOtherNetwork() {
        return this.bOtherNetwork;
    }

    public void setAppIP(String str) {
        this.appIP = str;
    }

    public void setAuth(String str) {
        this.auth = str;
    }

    public void setEncry(String str) {
        this.encry = str;
    }

    public void setIdentity(String str) {
        this.identity = str;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSsid(String str) {
        this.ssid = str;
    }

    public void setbOtherNetwork(boolean z) {
        this.bOtherNetwork = z;
    }
}
