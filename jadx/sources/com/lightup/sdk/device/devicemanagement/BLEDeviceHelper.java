package com.lightup.sdk.device.devicemanagement;

import android.content.Context;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.exceptions.ble.BluetoothException;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.utils.networktime.InternetTimeReader;

/* JADX INFO: loaded from: classes2.dex */
public class BLEDeviceHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "BLEDeviceHelper";
    protected InternetTimeReader internetTimeReader = new InternetTimeReader();
    protected PermissionsManager permissionsManager;

    public BLEDeviceHelper(Context context, BLEAvailabilityListener bLEAvailabilityListener) throws BluetoothException {
        PermissionsManager permissionsManager = this.permissionsManager;
        if (permissionsManager == null) {
            this.permissionsManager = new PermissionsManager(context, bLEAvailabilityListener);
        } else {
            permissionsManager.f35967a.updateListener(bLEAvailabilityListener);
            this.permissionsManager.a();
        }
    }

    public void release() {
        PermissionsManager permissionsManager = this.permissionsManager;
        if (permissionsManager != null) {
            permissionsManager.f35967a.stop();
        }
    }
}
