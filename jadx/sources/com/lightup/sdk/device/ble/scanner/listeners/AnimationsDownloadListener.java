package com.lightup.sdk.device.ble.scanner.listeners;

import com.lightup.sdk.animation.CreatorProject;
import com.lightup.sdk.device.features.process.dataupload.DataUpdateListener;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AnimationsDownloadListener implements DataUpdateListener {
    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
    @Deprecated
    public void onCompleted() {
    }

    public abstract void onCompleted(List<CreatorProject> list);

    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
    @Deprecated
    public void onError() {
    }

    public abstract void onError(String str);

    @Override // com.lightup.sdk.device.features.process.dataupload.DataUpdateListener
    @Deprecated
    public void onProgress(double d) {
    }
}
