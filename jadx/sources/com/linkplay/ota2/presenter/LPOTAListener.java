package com.linkplay.ota2.presenter;

import com.linkplay.core.device.LPDevice;
import com.linkplay.ota2.model.OTAStatus;

/* JADX INFO: loaded from: classes2.dex */
public interface LPOTAListener {
    void otaFailed(OTAStatus oTAStatus);

    void otaStatusUpdated(OTAStatus oTAStatus);

    void otaSuccess(LPDevice lPDevice);
}
