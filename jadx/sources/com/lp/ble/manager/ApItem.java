package com.lp.ble.manager;

import android.text.TextUtils;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class ApItem implements Serializable {
    private String auth;
    private String bssid;
    private int channel;
    private String displayed_ssid;
    private String encry;
    private int extch;
    private String identity;
    private int rssi;
    private int signal;
    private String ssid;
    private int wpa_auth;
    private int wpa_cipher;

    public String getAuth() {
        return this.auth;
    }

    public String getBssid() {
        return this.bssid;
    }

    public int getChannel() {
        return this.channel;
    }

    public String getDisplaySSID() {
        return this.displayed_ssid;
    }

    public String getEncry() {
        return this.encry;
    }

    public int getExtch() {
        return this.extch;
    }

    public String getIdentity() {
        return this.identity;
    }

    public int getRssi() {
        return this.rssi;
    }

    public int getSignal() {
        return this.signal;
    }

    public String getSsid() {
        return TextUtils.isEmpty(this.ssid) ? "" : this.ssid;
    }

    public int getWpa_auth() {
        return this.wpa_auth;
    }

    public int getWpa_cipher() {
        return this.wpa_cipher;
    }

    public void setAuth(String str) {
        this.auth = str;
    }

    public void setBssid(String str) {
        this.bssid = str;
    }

    public void setChannel(int i2) {
        this.channel = i2;
    }

    public void setDisplaySSID(String str) {
        this.displayed_ssid = str;
    }

    public void setEncry(String str) {
        this.encry = str;
    }

    public void setExtch(int i2) {
        this.extch = i2;
    }

    public void setIdentity(String str) {
        this.identity = str;
    }

    public void setRssi(int i2) {
        this.rssi = i2;
    }

    public void setSignal(int i2) {
        this.signal = i2;
    }

    public void setSsid(String str) {
        this.ssid = str;
    }

    public void setWpa_auth(int i2) {
        this.wpa_auth = i2;
    }

    public void setWpa_cipher(int i2) {
        this.wpa_cipher = i2;
    }
}
