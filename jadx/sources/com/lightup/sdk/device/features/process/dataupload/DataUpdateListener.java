package com.lightup.sdk.device.features.process.dataupload;

/* JADX INFO: loaded from: classes2.dex */
public interface DataUpdateListener {
    void onCompleted();

    void onError();

    void onProgress(double d);
}
