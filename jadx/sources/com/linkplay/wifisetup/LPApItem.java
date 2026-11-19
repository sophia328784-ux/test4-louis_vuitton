package com.linkplay.wifisetup;

import com.google.gson.annotations.SerializedName;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public class LPApItem {

    @SerializedName("auth")
    public String Auth;

    @SerializedName("bssid")
    public String BSSID;

    @SerializedName("channel")
    public int Channel;

    @SerializedName("encry")
    public String Encry;

    @SerializedName("extch")
    public int Extch;

    @SerializedName("rssi")
    public int RSSI;

    @SerializedName("ssid")
    public String SSID;

    public String toString() {
        StringBuilder sb = new StringBuilder("LPApItem{SSID='");
        sb.append(this.SSID);
        sb.append("', BSSID='");
        sb.append(this.BSSID);
        sb.append("', RSSI=");
        sb.append(this.RSSI);
        sb.append(", Channel=");
        sb.append(this.Channel);
        sb.append(", Auth='");
        sb.append(this.Auth);
        sb.append("', Encry='");
        sb.append(this.Encry);
        sb.append("', Extch=");
        return tr.k(sb, this.Extch, '}');
    }
}
