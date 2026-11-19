package com.linkplay.ota.presenter;

import com.linkplay.ota.model.OtaStatus;

/* JADX INFO: loaded from: classes2.dex */
public interface LPOTAListener {
    void otaFail(Exception exc);

    void otaStatus(OtaStatus otaStatus);

    void otaSuccess();
}
