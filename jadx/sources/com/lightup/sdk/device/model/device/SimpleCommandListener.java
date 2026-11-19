package com.lightup.sdk.device.model.device;

/* JADX INFO: loaded from: classes2.dex */
public interface SimpleCommandListener {
    boolean onDeviceHanging();

    boolean onDeviceInitiatedShutdown();

    void onDone();

    void onRequiresUpdate(boolean z);
}
