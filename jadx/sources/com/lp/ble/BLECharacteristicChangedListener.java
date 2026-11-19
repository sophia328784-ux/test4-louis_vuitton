package com.lp.ble;

import com.lp.ble.entity.BLEResponse;

/* JADX INFO: loaded from: classes2.dex */
public interface BLECharacteristicChangedListener {
    void onCharacteristicChanged(int i2, String str);

    void onCharacteristicChanged(BLEResponse bLEResponse);

    void onResponseTimeout(int i2);
}
