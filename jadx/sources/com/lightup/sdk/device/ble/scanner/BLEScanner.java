package com.lightup.sdk.device.ble.scanner;

import android.bluetooth.BluetoothAdapter;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.devicemanagement.BLEDevicesManager;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BLEScanner {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedList f35970a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35971b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BluetoothAdapter f35972c;
    public BLEDevicesManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Thread f35973e;

    public BLEScanner(PermissionsManager permissionsManager) {
        this.f35972c = permissionsManager.f35969c;
    }

    public final synchronized void a(final int i2, BLEDevicesManager bLEDevicesManager) {
        if (this.f35971b) {
            return;
        }
        this.f35971b = true;
        this.d = bLEDevicesManager;
        this.f35970a.clear();
        Thread thread = new Thread(new Runnable() { // from class: com.lightup.sdk.device.ble.scanner.BLEScanner.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(i2);
                    synchronized (BLEScanner.this) {
                        BLEScanner.this.b(false);
                    }
                } catch (InterruptedException e2) {
                    e2.getMessage();
                    Thread.currentThread().interrupt();
                }
            }
        });
        this.f35973e = thread;
        thread.start();
        MBLEScanner mBLEScanner = (MBLEScanner) this;
        if (mBLEScanner.g == null) {
            mBLEScanner.g = mBLEScanner.f35972c.getBluetoothLeScanner();
        }
        mBLEScanner.g.startScan(mBLEScanner.f35976i, mBLEScanner.f35975h, mBLEScanner.f35974f);
    }

    public final synchronized boolean b(boolean z) {
        try {
            if (!this.f35971b) {
                return false;
            }
            this.f35971b = false;
            if (!this.f35973e.isInterrupted()) {
                this.f35973e.interrupt();
            }
            MBLEScanner mBLEScanner = (MBLEScanner) this;
            mBLEScanner.g.stopScan(mBLEScanner.f35974f);
            this.d.onScanEnd(z);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }
}
