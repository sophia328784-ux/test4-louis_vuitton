package com.clj.fastble;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothManager;
import android.os.Looper;
import com.clj.fastble.bluetooth.BleBluetooth;
import com.clj.fastble.bluetooth.BleConnector;
import com.clj.fastble.bluetooth.MultipleBluetoothController;
import com.clj.fastble.bluetooth.SplitWriter;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleReadCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.OtherException;
import com.clj.fastble.scan.BleScanRuleConfig;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class BleManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Application f25258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BleScanRuleConfig f25259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public BluetoothAdapter f25260c;
    public MultipleBluetoothController d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BluetoothManager f25261e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f25262f = 20;

    public static class BleManagerHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BleManager f25263a = new BleManager();
    }

    public static BleManager c() {
        return BleManagerHolder.f25263a;
    }

    public final void a(BleDevice bleDevice, BleGattCallback bleGattCallback) {
        BleBluetooth bleBluetooth;
        if (bleGattCallback == null) {
            md.n("BleGattCallback can not be Null!");
            return;
        }
        BluetoothAdapter bluetoothAdapter = this.f25260c;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            bleGattCallback.a(bleDevice, new OtherException("Bluetooth not enable!"));
            return;
        }
        if (Looper.myLooper() != null) {
            Looper.myLooper();
            Looper.getMainLooper();
        }
        if (bleDevice == null || bleDevice.f25292b == null) {
            bleGattCallback.a(bleDevice, new OtherException("Not Found Device Exception Occurred!"));
            return;
        }
        MultipleBluetoothController multipleBluetoothController = this.d;
        synchronized (multipleBluetoothController) {
            bleBluetooth = new BleBluetooth(bleDevice);
            if (!multipleBluetoothController.f25279b.containsKey(bleBluetooth.f25270i.a())) {
                multipleBluetoothController.f25279b.put(bleBluetooth.f25270i.a(), bleBluetooth);
            }
        }
        this.f25259b.getClass();
        synchronized (bleBluetooth) {
            bleBluetooth.b(bleDevice, bleGattCallback, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0045 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #2 {all -> 0x002c, blocks: (B:5:0x0005, B:15:0x001c, B:17:0x001f, B:19:0x0025, B:22:0x002e, B:30:0x0042, B:32:0x0045, B:37:0x0060, B:45:0x0069, B:42:0x0065, B:41:0x0064, B:29:0x0041, B:13:0x001a, B:34:0x0048, B:36:0x0054, B:8:0x000a, B:24:0x0031), top: B:55:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0046 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0054 A[Catch: all -> 0x0062, TRY_LEAVE, TryCatch #0 {, blocks: (B:34:0x0048, B:36:0x0054), top: B:51:0x0048, outer: #2 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0065 A[Catch: all -> 0x002c, DONT_GENERATE, TryCatch #2 {all -> 0x002c, blocks: (B:5:0x0005, B:15:0x001c, B:17:0x001f, B:19:0x0025, B:22:0x002e, B:30:0x0042, B:32:0x0045, B:37:0x0060, B:45:0x0069, B:42:0x0065, B:41:0x0064, B:29:0x0041, B:13:0x001a, B:34:0x0048, B:36:0x0054, B:8:0x000a, B:24:0x0031), top: B:55:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0069 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #2 {all -> 0x002c, blocks: (B:5:0x0005, B:15:0x001c, B:17:0x001f, B:19:0x0025, B:22:0x002e, B:30:0x0042, B:32:0x0045, B:37:0x0060, B:45:0x0069, B:42:0x0065, B:41:0x0064, B:29:0x0041, B:13:0x001a, B:34:0x0048, B:36:0x0054, B:8:0x000a, B:24:0x0031), top: B:55:0x0005, inners: #0, #1, #3 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void b(BleDevice bleDevice) {
        boolean z;
        boolean z2;
        BleBluetooth bleBluetooth;
        BleBluetooth bleBluetoothA;
        MultipleBluetoothController multipleBluetoothController = this.d;
        if (multipleBluetoothController != null) {
            synchronized (multipleBluetoothController) {
                try {
                    synchronized (multipleBluetoothController) {
                        z = false;
                        if (bleDevice == null) {
                            z2 = false;
                        } else if (multipleBluetoothController.f25278a.containsKey(bleDevice.a())) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                    }
                    if (z) {
                        synchronized (multipleBluetoothController) {
                            if (bleDevice != null) {
                                bleBluetooth = null;
                            } else if (multipleBluetoothController.f25279b.containsKey(bleDevice.a())) {
                                bleBluetooth = (BleBluetooth) multipleBluetoothController.f25279b.get(bleDevice.a());
                            } else {
                                bleBluetooth = null;
                            }
                        }
                        if (bleBluetooth != null) {
                            bleBluetooth.c();
                            multipleBluetoothController.c(bleBluetooth);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z2 && (bleBluetoothA = multipleBluetoothController.a(bleDevice)) != null) {
                bleBluetoothA.c();
                multipleBluetoothController.b(bleBluetoothA);
            }
            synchronized (multipleBluetoothController) {
                if (bleDevice != null) {
                    if (multipleBluetoothController.f25279b.containsKey(bleDevice.a())) {
                        z = true;
                    }
                }
                if (z) {
                    synchronized (multipleBluetoothController) {
                        if (bleDevice != null) {
                            bleBluetooth = null;
                        } else if (multipleBluetoothController.f25279b.containsKey(bleDevice.a())) {
                            bleBluetooth = (BleBluetooth) multipleBluetoothController.f25279b.get(bleDevice.a());
                        } else {
                            bleBluetooth = null;
                        }
                        if (bleBluetooth != null) {
                            bleBluetooth.c();
                            multipleBluetoothController.c(bleBluetooth);
                        }
                    }
                }
            }
        }
    }

    public final void d(BleDevice bleDevice, String str, BleReadCallback bleReadCallback) {
        BleBluetooth bleBluetoothA = this.d.a(bleDevice);
        if (bleBluetoothA == null) {
            bleReadCallback.a(new OtherException("This device is not connected!"));
            return;
        }
        BleConnector bleConnectorE = bleBluetoothA.e();
        bleConnectorE.e("0000fea0-0000-1000-8000-00805f9b34fb", str);
        try {
            BluetoothGattCharacteristic bluetoothGattCharacteristic = bleConnectorE.f25276c;
            if (bluetoothGattCharacteristic == null || (bluetoothGattCharacteristic.getProperties() & 2) <= 0) {
                bleReadCallback.a(new OtherException("this characteristic not support read!"));
                return;
            }
            bleConnectorE.a(bleReadCallback, str);
            if (bleConnectorE.f25274a.readCharacteristic(bleConnectorE.f25276c)) {
                return;
            }
            bleConnectorE.f25277e.removeMessages(65);
            bleReadCallback.a(new OtherException("gatt readCharacteristic fail"));
        } catch (Exception unused) {
        }
    }

    public final void e(BleDevice bleDevice, String str, byte[] bArr, boolean z, BleWriteCallback bleWriteCallback) {
        if (bArr == null) {
            bleWriteCallback.onWriteFailure(new OtherException("data is Null!"));
            return;
        }
        BleBluetooth bleBluetoothA = this.d.a(bleDevice);
        if (bleBluetoothA == null) {
            bleWriteCallback.onWriteFailure(new OtherException("This device not connect!"));
            return;
        }
        if (z && bArr.length > this.f25262f) {
            new SplitWriter().a(bleBluetoothA, "0000fea0-0000-1000-8000-00805f9b34fb", str, bArr, true, 0L, bleWriteCallback);
            return;
        }
        BleConnector bleConnectorE = bleBluetoothA.e();
        bleConnectorE.e("0000fea0-0000-1000-8000-00805f9b34fb", str);
        bleConnectorE.f(bArr, bleWriteCallback, str);
        bleWriteCallback.onWriteFinished(1);
    }
}
