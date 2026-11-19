package com.android.wiimu.utils;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.linkplay.core.model.menubar.MenuBarConstants;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class WiimuWifiScanner {
    public static WifiInfo getCurrentWifiInfo(Context context) {
        return ((WifiManager) context.getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI)).getConnectionInfo();
    }

    public static boolean isWiimuWifi(Context context) {
        WifiInfo currentWifiInfo = getCurrentWifiInfo(context);
        if (currentWifiInfo == null) {
            return false;
        }
        String bssid = currentWifiInfo.getBSSID();
        if (TextUtils.isEmpty(bssid)) {
            return false;
        }
        return bssid.startsWith("00:22:6c") || bssid.startsWith("00:25:92") || bssid.startsWith("0:22:6c") || bssid.startsWith("0:25:92");
    }

    public static List<ScanResult> scanWifi(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
        wifiManager.startScan();
        return wifiManager.getScanResults();
    }
}
