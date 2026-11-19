package com.lightup.sdk.device.model.device;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.enums.PairOrientation;
import com.lightup.sdk.device.enums.PowerOffReason;

/* JADX INFO: loaded from: classes2.dex */
public interface OrientedDeviceConnectionProcessListener<D extends BLEDevice> {
    void onConnected(PairOrientation pairOrientation, D d, boolean z);

    void onConnecting(PairOrientation pairOrientation);

    void onDeviceShutDown(PairOrientation pairOrientation, PowerOffReason powerOffReason);

    void onError(String str);

    void onLost(PairOrientation pairOrientation);

    void onNoDeviceFound();

    void onReconnecting(PairOrientation pairOrientation);

    void onRequiresUpdate(PairOrientation pairOrientation, D d, boolean z);
}
