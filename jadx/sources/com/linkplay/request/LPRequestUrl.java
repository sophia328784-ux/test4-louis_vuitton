package com.linkplay.request;

import com.linkplay.network.HttpRequestUtils;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class LPRequestUrl {
    public static String SetEQURL(RequestItem requestItem, String str) {
        return n00.n(requestItem, new StringBuilder(), str);
    }

    public static String getDevicePasswordURL(boolean z, int i2, String str, RequestItem requestItem) {
        if (z) {
            return HttpRequestUtils.getRequestPrefix(requestItem) + "setNetworkExAES:" + i2 + ":" + str;
        }
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setNetwork:" + i2 + ":" + str;
    }

    public static String getEQURL(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "EQValueGet:app");
    }

    public static String getHideSSIDURL(String str, RequestItem requestItem) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setHideSSID:" + str;
    }

    public static String getMvRemoteUpdateStartUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getMvRemoteUpdateStart");
    }

    public static String getMvRemoteUpdateStatusUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getMvRemoteUpdateStatus");
    }

    public static String getMvRomBurnPrecentUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getMvRomBurnPrecent");
    }

    public static String getMvRomDownloadStatusUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getMvRomDownloadStatus");
    }

    public static String getMvRomDownloadV2StatusUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getMvRomDownloadV2Status");
    }

    public static String getRestoreToDefaultURL(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "restoreToDefault");
    }

    public static String getStatusExUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getStatusEx");
    }

    public static String getTimeZoneURL(RequestItem requestItem, float f2) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setTimezone:" + f2;
    }

    public static String getTvsProfile(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "getTvsDevInfo");
    }

    public static String setDeviceNameUrl(RequestItem requestItem, String str) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setDeviceName:" + str;
    }

    public static String setHexDeviceNameUrl(RequestItem requestItem, String str) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setHexDeviceName:" + str;
    }

    public static String setTimezoneExUrl(RequestItem requestItem, String str, String str2, String str3) {
        String requestPrefix = HttpRequestUtils.getRequestPrefix(requestItem);
        StringBuilder sb = new StringBuilder();
        sb.append(requestPrefix);
        sb.append("setTimezoneEx:");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return n00.r(":", str3, sb);
    }

    public static String setTvsClientUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "setTvsClientID");
    }

    public static String setTvsDebugModeUrl(RequestItem requestItem, int i2) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setTVSDebugMode:" + i2;
    }

    public static String switchInputSource(RequestItem requestItem, String str) {
        return HttpRequestUtils.getRequestPrefix(requestItem) + "setPlayerCmd:switchmode:" + str;
    }

    public static String tvsLogoutUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "TvsLogout");
    }

    public static String tvsStateUrl(RequestItem requestItem) {
        return n00.n(requestItem, new StringBuilder(), "TvsState");
    }
}
