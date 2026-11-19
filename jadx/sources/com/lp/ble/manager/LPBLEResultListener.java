package com.lp.ble.manager;

import com.lp.ble.entity.BLEResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface LPBLEResultListener {
    void onFailed(Exception exc);

    void onResult(BLEResponse bLEResponse);

    void onResult(String str);

    void onWriteSuccess(int i2, int i3, byte[] bArr);
}
