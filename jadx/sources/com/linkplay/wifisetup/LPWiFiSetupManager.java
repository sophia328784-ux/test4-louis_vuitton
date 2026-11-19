package com.linkplay.wifisetup;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.android.wiimu.utils.ByteIntConverter;
import com.google.gson.Gson;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.linkplay.core.utils.LPWiFiResultUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class LPWiFiSetupManager {
    private static LPApItem targetApItem;
    private LPDevice curDevice;
    SearchTimer searchTimer;

    public static class SearchTimer extends Timer {
        private static long TIMEOUT = 90000;
        private LPDevice device;
        private LPWiFiSetupListener listener;

        public SearchTimer(LPDevice lPDevice, LPWiFiSetupListener lPWiFiSetupListener) {
            this.device = lPDevice;
            this.listener = lPWiFiSetupListener;
        }

        public void search() {
            LPDeviceManager.getInstance().clear();
            final long jCurrentTimeMillis = System.currentTimeMillis();
            schedule(new TimerTask() { // from class: com.linkplay.wifisetup.LPWiFiSetupManager.SearchTimer.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (System.currentTimeMillis() - jCurrentTimeMillis > SearchTimer.TIMEOUT) {
                        cancel();
                        if (SearchTimer.this.listener == null) {
                            return;
                        }
                        WifiInfo currentWifiInfo = LPWiFiResultUtils.getCurrentWifiInfo();
                        if (currentWifiInfo == null) {
                            SearchTimer.this.listener.LPWiFiSetupFailed(1002);
                            return;
                        }
                        boolean zEquals = ByteIntConverter.convertHex2GBK(LPWiFiSetupManager.targetApItem.SSID).equals(LPWiFiResultUtils.makeSSIDNoneQuoted(currentWifiInfo.getSSID()));
                        SearchTimer searchTimer = SearchTimer.this;
                        if (zEquals) {
                            searchTimer.listener.LPWiFiSetupFailed(1002);
                        } else {
                            searchTimer.listener.LPWiFiSetupFailed(1001);
                        }
                    }
                    LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(SearchTimer.this.device.getDeviceStatus().getUpnpUUID());
                    if (lPDeviceDeviceForID == null || lPDeviceDeviceForID.getDeviceStatus() == null || lPDeviceDeviceForID.getDeviceStatus().getNetstat() != 2) {
                        return;
                    }
                    LPWiFiSetupListener lPWiFiSetupListener = SearchTimer.this.listener;
                    if (lPWiFiSetupListener != null) {
                        lPWiFiSetupListener.LPWiFiSetupSuccess(lPDeviceDeviceForID);
                    }
                    cancel();
                }
            }, 1000L, HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
        }

        public void setTimeout(int i2) {
            TIMEOUT = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<LPApItem> parseApItems(String str) {
        ArrayList arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Gson gson = new Gson();
        try {
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONArray("aplist");
                if (jSONArray != null && jSONArray.length() != 0) {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        int length = jSONArray.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            arrayList2.add((LPApItem) gson.fromJson(jSONArray.getJSONObject(i2).toString(), LPApItem.class));
                        }
                        return arrayList2;
                    } catch (JSONException e2) {
                        e = e2;
                        arrayList = arrayList2;
                        e.printStackTrace();
                        return arrayList;
                    } catch (Throwable unused) {
                        return arrayList2;
                    }
                }
                return null;
            } catch (JSONException e3) {
                e = e3;
            }
        } catch (Throwable unused2) {
            return arrayList;
        }
    }

    public void connectToWiFi(LPApItem lPApItem, String str, final LPWiFiSetupListener lPWiFiSetupListener) {
        String str2;
        if (this.curDevice == null) {
            return;
        }
        targetApItem = lPApItem;
        RequestItem requestItemL = n00.l(this.curDevice, new RequestItem.Builder().ip(this.curDevice.getIp()));
        String str3 = lPApItem.SSID;
        String strBytesToHexString = "";
        String strI = a.i(lPApItem.Channel, "", new StringBuilder());
        String str4 = "NONE";
        if (lPApItem.Encry.equals("NONE")) {
            str2 = "OPEN";
        } else {
            strBytesToHexString = ByteIntConverter.bytesToHexString(str.getBytes());
            str4 = lPApItem.Encry;
            str2 = lPApItem.Auth;
        }
        if (!TextUtils.isEmpty(strBytesToHexString) && this.curDevice.getDeviceStatus() != null && "https/2.0".equals(this.curDevice.getDeviceStatus().getSecurity())) {
            "3.0".equals(this.curDevice.getDeviceStatus().getSecurityVersion());
        }
        StringBuilder sbS = fc.s("wlanConnectApEx:ssid=", str3, ":ch=", strI, ":auth=");
        cj.C(sbS, str2, ":encry=", str4, ":pwd=");
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), n00.r(strBytesToHexString, ":chext=1", sbS)), new IOkHttpRequestCallback() { // from class: com.linkplay.wifisetup.LPWiFiSetupManager.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LinkplayLog.i("LPWiFiSetupManager", "connectToWiFi onFailure:" + exc.getLocalizedMessage());
                LPWiFiSetupListener lPWiFiSetupListener2 = lPWiFiSetupListener;
                if (lPWiFiSetupListener2 != null) {
                    lPWiFiSetupListener2.LPWiFiSetupFailed(1002);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("on response"));
                    return;
                }
                LinkplayLog.i("LPWiFiSetupManager", "connectToWiFi onSuccess");
                SearchTimer searchTimer = LPWiFiSetupManager.this.searchTimer;
                if (searchTimer != null) {
                    searchTimer.cancel();
                    LPWiFiSetupManager.this.searchTimer = null;
                }
                LPWiFiSetupManager.this.searchTimer = new SearchTimer(LPWiFiSetupManager.this.curDevice, lPWiFiSetupListener);
                LPWiFiSetupManager.this.searchTimer.search();
            }
        });
    }

    public void getApList(final LPApListListener lPApListListener) {
        if (this.curDevice == null) {
            LinkplayLog.i("LPWiFiSetupManager", "Please confirm whether to connect isLinkplayHotspot first.");
            if (lPApListListener != null) {
                lPApListListener.LPApList(null);
                return;
            }
            return;
        }
        RequestItem requestItemL = n00.l(this.curDevice, new RequestItem.Builder().ip(this.curDevice.getIp()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), "wlanGetApListEx"), new IOkHttpRequestCallback() { // from class: com.linkplay.wifisetup.LPWiFiSetupManager.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LinkplayLog.i("LPWiFiSetupManager", "getApList:" + exc.getLocalizedMessage());
                LPApListListener lPApListListener2 = lPApListListener;
                if (lPApListListener2 != null) {
                    lPApListListener2.LPApList(null);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                String str = new String(okHttpResponseItem.bytes);
                LinkplayLog.i("LPWiFiSetupManager", "getApList onSuccess:".concat(str));
                List<LPApItem> apItems = LPWiFiSetupManager.this.parseApItems(str);
                LPApListListener lPApListListener2 = lPApListListener;
                if (lPApListListener2 != null) {
                    lPApListListener2.LPApList(apItems);
                }
            }
        });
    }

    public boolean isLinkplayHotspot(Context context, int i2) {
        String ssid = ((WifiManager) context.getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI)).getConnectionInfo().getSSID();
        if (ssid.startsWith("\"")) {
            ssid = ssid.substring(1).trim();
        }
        if (ssid.endsWith("\"")) {
            ssid = ssid.substring(0, ssid.length() - 1).trim();
        }
        List<LPDevice> masterDevices = LPDeviceManager.getInstance().getMasterDevices();
        if (masterDevices == null || masterDevices.size() != 1 || masterDevices.get(0) == null || masterDevices.get(0).getDeviceStatus() == null || !masterDevices.get(0).getDeviceStatus().getSSID().equals(ssid)) {
            this.curDevice = null;
            return false;
        }
        this.curDevice = masterDevices.get(0);
        return true;
    }

    public void retryCheckWithTime(int i2, LPWiFiSetupListener lPWiFiSetupListener) {
        LinkplayLog.i("LPWiFiSetupManager", "retryCheckWithTime");
        SearchTimer searchTimer = this.searchTimer;
        if (searchTimer != null) {
            searchTimer.cancel();
            this.searchTimer = null;
        }
        SearchTimer searchTimer2 = new SearchTimer(this.curDevice, lPWiFiSetupListener);
        this.searchTimer = searchTimer2;
        if (i2 <= 0) {
            i2 = NBSApplicationStateMonitor.ALTERNATEPERIOD;
        }
        searchTimer2.setTimeout(i2);
        this.searchTimer.search();
    }
}
