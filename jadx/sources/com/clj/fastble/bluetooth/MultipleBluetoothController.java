package com.clj.fastble.bluetooth;

import com.clj.fastble.BleManager;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.utils.BleLruHashMap;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class MultipleBluetoothController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BleLruHashMap f25278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f25279b;

    public MultipleBluetoothController() {
        BleManager.c().getClass();
        this.f25278a = new BleLruHashMap(7);
        this.f25279b = new HashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized BleBluetooth a(BleDevice bleDevice) {
        if (bleDevice != null) {
            if (this.f25278a.containsKey(bleDevice.a())) {
                return (BleBluetooth) this.f25278a.get(bleDevice.a());
            }
        }
        return null;
    }

    public final synchronized void b(BleBluetooth bleBluetooth) {
        if (bleBluetooth == null) {
            return;
        }
        if (this.f25278a.containsKey(bleBluetooth.f25270i.a())) {
            this.f25278a.remove(bleBluetooth.f25270i.a());
        }
    }

    public final synchronized void c(BleBluetooth bleBluetooth) {
        if (bleBluetooth == null) {
            return;
        }
        if (this.f25279b.containsKey(bleBluetooth.f25270i.a())) {
            this.f25279b.remove(bleBluetooth.f25270i.a());
        }
    }
}
