package com.linkplay.timer;

import com.linkplay.core.device.LPDevice;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.RequestItem;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class LPDeviceTimer {
    LPDevice device;

    public LPDeviceTimer(LPDevice lPDevice) {
        this.device = lPDevice;
    }

    public void getTimer(final LPTimerListener lPTimerListener) {
        if (this.device == null) {
            return;
        }
        RequestItem requestItemL = n00.l(this.device, n00.k(this.device, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), "getShutdown"), new IOkHttpRequestCallback(this) { // from class: com.linkplay.timer.LPDeviceTimer.2
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LPTimerListener lPTimerListener2 = lPTimerListener;
                if (lPTimerListener2 != null) {
                    lPTimerListener2.onFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                String str = new String(okHttpResponseItem.bytes);
                LPTimerListener lPTimerListener2 = lPTimerListener;
                if (lPTimerListener2 != null) {
                    lPTimerListener2.onSuccess(str);
                }
            }
        });
    }

    public void setTimer(int i2, final LPTimerListener lPTimerListener) {
        if (this.device == null) {
            return;
        }
        RequestItem requestItemL = n00.l(this.device, n00.k(this.device, new RequestItem.Builder()));
        HttpRequestUtils.getRequestUtils(requestItemL).get(HttpRequestUtils.getRequestPrefix(requestItemL) + "setShutdown:" + i2, new IOkHttpRequestCallback(this) { // from class: com.linkplay.timer.LPDeviceTimer.1
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                LPTimerListener lPTimerListener2 = lPTimerListener;
                if (lPTimerListener2 != null) {
                    lPTimerListener2.onFail(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("err"));
                    return;
                }
                String str = new String(okHttpResponseItem.bytes);
                LPTimerListener lPTimerListener2 = lPTimerListener;
                if (lPTimerListener2 != null) {
                    lPTimerListener2.onSuccess(str);
                }
            }
        });
    }
}
