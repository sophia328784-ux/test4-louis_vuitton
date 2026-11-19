package com.linkplay.core.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import com.android.wiimu.utils.WiimuWifiScanner;
import com.linkplay.core.app.LPDeviceManager;

/* JADX INFO: loaded from: classes2.dex */
public class LPWiFiResultUtils {
    public static WifiInfo getCurrentWifiInfo() {
        Context context = LPDeviceManager.getInstance().getContext();
        if (context == null) {
            return null;
        }
        return WiimuWifiScanner.getCurrentWifiInfo(context);
    }

    public static boolean isCurrentEthernetConnect() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) LPDeviceManager.getInstance().getContext().getSystemService("connectivity");
        return (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(9)) == null || networkInfo.getState() != NetworkInfo.State.CONNECTED) ? false : true;
    }

    public static boolean isCurrentWifiConnected() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) LPDeviceManager.getInstance().getContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        NetworkInfo.State state = networkInfo2 != null ? networkInfo2.getState() : null;
        NetworkInfo.State state2 = NetworkInfo.State.CONNECTED;
        if (state == state2) {
            return true;
        }
        return isCurrentEthernetConnect() && (networkInfo = connectivityManager.getNetworkInfo(9)) != null && networkInfo.getState() == state2;
    }

    public static boolean isWiFiConnectAP() {
        Context context = LPDeviceManager.getInstance().getContext();
        if (context == null) {
            return false;
        }
        return !WiimuWifiScanner.isWiimuWifi(context);
    }

    public static String makeSSIDNoneQuoted(String str) {
        if (str != null) {
            return str.replace("\"", "").trim();
        }
        return null;
    }
}
