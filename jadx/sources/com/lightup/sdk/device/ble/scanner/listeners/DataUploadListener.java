package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.device.enums.DataUploadError;

/* JADX INFO: loaded from: classes2.dex */
public interface DataUploadListener {
    void onCompleted();

    void onError(DataUploadError dataUploadError);

    void onProgress(double d);
}
