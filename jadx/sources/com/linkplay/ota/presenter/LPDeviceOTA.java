package com.linkplay.ota.presenter;

import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.ota.model.OtaStatus;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceOTA {
    private LPDevice device;
    LPOTAListener listener = null;
    private Timer updateStatusTimer;

    public LPDeviceOTA(LPDevice lPDevice) {
        this.device = lPDevice;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUpdateStatus() {
        if (this.device == null) {
            return;
        }
        RequestItem requestItemL = n00.l(this.device, n00.k(this.device, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), "getMvRomDownloadStatus"), new IOkHttpRequestCallback() { // from class: com.linkplay.ota.presenter.LPDeviceOTA.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LPOTAListener lPOTAListener = LPDeviceOTA.this.listener;
                if (lPOTAListener != null) {
                    lPOTAListener.otaFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                Timer timer;
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("on response"));
                    return;
                }
                String str = new String(okHttpResponseItem.bytes);
                OtaStatus otaStatus = new OtaStatus();
                otaStatus.convert(str);
                if (otaStatus.getStatus() == 6 && (timer = LPDeviceOTA.this.updateStatusTimer) != null) {
                    timer.cancel();
                    LPDeviceOTA.this.updateStatusTimer = null;
                }
                LPOTAListener lPOTAListener = LPDeviceOTA.this.listener;
                if (lPOTAListener != null) {
                    lPOTAListener.otaStatus(otaStatus);
                }
            }
        });
    }

    public boolean checkUpdate() {
        LPDevice lPDevice = this.device;
        if (lPDevice == null || lPDevice.getDeviceStatus() == null) {
            return false;
        }
        return this.device.getDeviceStatus().isBuildBackup() || this.device.getDeviceStatus().hasUpdate();
    }

    public void startUpdate(final LPOTAListener lPOTAListener) {
        if (this.device == null) {
            return;
        }
        this.listener = lPOTAListener;
        RequestItem requestItemL = n00.l(this.device, n00.k(this.device, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), "getMvRemoteUpdateStart"), new IOkHttpRequestCallback() { // from class: com.linkplay.ota.presenter.LPDeviceOTA.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                Timer timer = LPDeviceOTA.this.updateStatusTimer;
                if (timer != null) {
                    timer.cancel();
                    LPDeviceOTA.this.updateStatusTimer = null;
                }
                LPOTAListener lPOTAListener2 = lPOTAListener;
                if (lPOTAListener2 != null) {
                    lPOTAListener2.otaFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("on response"));
                    return;
                }
                Timer timer = LPDeviceOTA.this.updateStatusTimer;
                if (timer != null) {
                    timer.cancel();
                    LPDeviceOTA.this.updateStatusTimer = null;
                }
                LPDeviceOTA.this.updateStatusTimer = new Timer();
                LPDeviceOTA.this.updateStatusTimer.schedule(new TimerTask() { // from class: com.linkplay.ota.presenter.LPDeviceOTA.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        LPDeviceOTA.this.getUpdateStatus();
                    }
                }, 1000L, 1000L);
            }
        });
    }
}
