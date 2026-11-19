package com.lightup.sdk.device.helpers;

import android.content.Context;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.exceptions.ScannerException;
import com.lightup.sdk.device.devicemanagement.BLEKeepAllManager;

/* JADX INFO: loaded from: classes2.dex */
public final class KeepAllHelper extends LightupCommonHelper {
    public KeepAllHelper(Context context, String str, BLEAvailabilityListener bLEAvailabilityListener) throws ScannerException {
        super(context, str, bLEAvailabilityListener);
        this.lightupManager = new BLEKeepAllManager(context, this.permissionsManager, this.internetTimeReader);
    }
}
