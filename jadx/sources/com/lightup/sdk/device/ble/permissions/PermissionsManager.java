package com.lightup.sdk.device.ble.permissions;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.ReceiverCallNotAllowedException;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityListener;
import com.lightup.sdk.device.ble.availability.BLEAvailabilityReceiver;
import com.lightup.sdk.device.ble.exceptions.ble.BLEUnsupportedException;
import com.lightup.sdk.device.ble.exceptions.ble.BluetoothException;
import com.lightup.sdk.device.ble.exceptions.ble.BluetoothManagerInitException;
import com.lightup.sdk.device.ble.exceptions.ble.BluetoothUnsupportedException;
import com.linkplay.core.model.menubar.MenuBarConstants;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionsManager extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BLEAvailabilityReceiver f35967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BluetoothManager f35968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BluetoothAdapter f35969c;

    public PermissionsManager(Context context, BLEAvailabilityListener bLEAvailabilityListener) throws ReceiverCallNotAllowedException, BluetoothException {
        super(context);
        BLEAvailabilityReceiver bLEAvailabilityReceiver = new BLEAvailabilityReceiver(context, bLEAvailabilityListener);
        this.f35967a = bLEAvailabilityReceiver;
        try {
            a();
        } catch (BluetoothException e2) {
            bLEAvailabilityReceiver.stop();
            throw e2;
        }
    }

    public final void a() throws BLEUnsupportedException, BluetoothUnsupportedException, BluetoothManagerInitException {
        if (!getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            throw new BLEUnsupportedException();
        }
        if (this.f35968b == null) {
            BluetoothManager bluetoothManager = (BluetoothManager) getSystemService(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH);
            this.f35968b = bluetoothManager;
            if (bluetoothManager == null) {
                throw new BluetoothManagerInitException();
            }
        }
        if (this.f35969c == null) {
            BluetoothAdapter adapter = this.f35968b.getAdapter();
            this.f35969c = adapter;
            if (adapter == null) {
                throw new BluetoothUnsupportedException();
            }
        }
        if (this.f35969c.isEnabled()) {
            return;
        }
        this.f35969c.enable();
    }
}
