package com.lightup.sdk.device.features.process;

import com.lightup.sdk.device.devicemanagement.BLEDevice;
import com.lightup.sdk.device.features.Feature;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProcessFeature extends Feature {
    protected static final int MIN_DURATION = 40;

    public ProcessFeature(BLEDevice bLEDevice) {
        super(bLEDevice);
    }

    @Override // com.lightup.sdk.device.features.Feature
    public boolean isAtomic() {
        return false;
    }
}
