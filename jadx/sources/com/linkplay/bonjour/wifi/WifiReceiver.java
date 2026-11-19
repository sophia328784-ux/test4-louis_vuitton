package com.linkplay.bonjour.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
public class WifiReceiver extends BroadcastReceiver {
    private static final String TAG = "LPServiceManager";
    private IWifiCallback iWifiCallback;

    public WifiReceiver(IWifiCallback iWifiCallback) {
        this.iWifiCallback = iWifiCallback;
    }

    private void handlerConnectivityAction(Intent intent) {
    }

    private void handlerWifiConnectState(Intent intent) {
        WifiInfo wifiInfo;
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
        if (networkInfo == null) {
            return;
        }
        if (networkInfo.getState().equals(NetworkInfo.State.DISCONNECTED)) {
            IWifiCallback iWifiCallback = this.iWifiCallback;
            if (iWifiCallback != null) {
                iWifiCallback.wifiDisconnected();
                return;
            }
            return;
        }
        if (!networkInfo.getState().equals(NetworkInfo.State.CONNECTED) || (wifiInfo = (WifiInfo) intent.getParcelableExtra("wifiInfo")) == null) {
            return;
        }
        String ssid = wifiInfo.getSSID();
        IWifiCallback iWifiCallback2 = this.iWifiCallback;
        if (iWifiCallback2 != null) {
            iWifiCallback2.wifiConnected(ssid);
        }
    }

    private void handlerWifiState(Intent intent) {
        intent.getIntExtra("wifi_state", 0);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        String action = intent.getAction();
        action.getClass();
        switch (action) {
            case "android.net.wifi.WIFI_STATE_CHANGED":
                handlerWifiState(intent);
                break;
            case "android.net.conn.CONNECTIVITY_CHANGE":
                handlerConnectivityAction(intent);
                break;
            case "android.net.wifi.STATE_CHANGE":
                handlerWifiConnectState(intent);
                break;
        }
    }
}
