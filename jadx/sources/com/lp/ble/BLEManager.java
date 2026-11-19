package com.lp.ble;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import com.clj.fastble.BleManager;
import com.clj.fastble.bluetooth.MultipleBluetoothController;
import com.clj.fastble.scan.BleScanRuleConfig;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.lp.ble.statistic.StatisticCallback;
import defpackage.md;
import defpackage.v7;

/* JADX INFO: loaded from: classes2.dex */
public class BLEManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final BLEManager f36330c = new BLEManager();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Application f36331a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StatisticCallback f36332b;

    public static void c() {
        Thread.currentThread().getId();
    }

    public final int a() {
        Application application = this.f36331a;
        if (application == null) {
            v7.h("not call LPBLEManager.getInstance().init()");
            return 0;
        }
        if (!application.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return 1;
        }
        BluetoothManager bluetoothManager = (BluetoothManager) this.f36331a.getSystemService(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH);
        if (bluetoothManager == null) {
            return 2;
        }
        BluetoothAdapter adapter = bluetoothManager.getAdapter();
        return (adapter == null || !adapter.isEnabled()) ? 3 : 0;
    }

    public final void b(Application application) {
        if (application == null) {
            md.n("init application null");
            return;
        }
        if (this.f36331a == null) {
            this.f36331a = application;
            BleManager bleManagerC = BleManager.c();
            if (bleManagerC.f25258a == null) {
                bleManagerC.f25258a = application;
                if (application.getApplicationContext().getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
                    bleManagerC.f25261e = (BluetoothManager) bleManagerC.f25258a.getSystemService(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH);
                }
                bleManagerC.f25260c = BluetoothAdapter.getDefaultAdapter();
                bleManagerC.d = new MultipleBluetoothController();
                bleManagerC.f25259b = new BleScanRuleConfig();
            }
        }
    }
}
