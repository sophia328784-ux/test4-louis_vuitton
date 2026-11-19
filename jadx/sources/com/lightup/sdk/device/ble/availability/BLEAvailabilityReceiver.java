package com.lightup.sdk.device.ble.availability;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class BLEAvailabilityReceiver<M extends BLEDevicesManager> extends BroadcastReceiver {
    private static final boolean DEBUG = false;
    private static final String TAG = "BLEAvailabilityReceiver";
    private final Context base;
    private AtomicReference<BLEAvailabilityListener> bleAvailabilityListener;
    private M devicesManager;

    public BLEAvailabilityReceiver(Context context, BLEAvailabilityListener bLEAvailabilityListener) {
        AtomicReference<BLEAvailabilityListener> atomicReference = new AtomicReference<>();
        this.bleAvailabilityListener = atomicReference;
        this.base = context;
        atomicReference.set(bLEAvailabilityListener);
        context.registerReceiver(this, new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED"));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
        if (intent.getAction().equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
            int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
            M m = this.devicesManager;
            if (m != null) {
                m.onNewBluetoothState(intExtra);
            }
            if (intExtra == 10) {
                this.bleAvailabilityListener.get().onUnavailable();
            } else {
                if (intExtra != 12) {
                    return;
                }
                this.bleAvailabilityListener.get().onAvailable();
            }
        }
    }

    public synchronized void registerConnectionForBluetoothAvailabilityChange(M m) {
        this.devicesManager = m;
    }

    public void stop() {
        this.base.unregisterReceiver(this);
    }

    public synchronized void unRegisterConnectionFromBluetoothAvailabilityChange() {
        this.devicesManager = null;
    }

    public void updateListener(BLEAvailabilityListener bLEAvailabilityListener) {
        this.bleAvailabilityListener.set(bLEAvailabilityListener);
    }
}
