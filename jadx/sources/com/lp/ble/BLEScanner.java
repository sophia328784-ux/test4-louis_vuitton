package com.lp.ble;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.os.ParcelUuid;
import android.text.TextUtils;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleScanCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.scan.BleScanRuleConfig;
import com.clj.fastble.scan.BleScanner;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.lp.ble.config.BleScanConfig;
import com.lp.ble.config.DeviceFilter;
import com.lp.ble.entity.LPBluetoothDevice;
import com.lp.ble.statistic.BleStatistic;
import com.lp.ble.statistic.StatisticCallback;
import com.lp.ble.utils.BLELog;
import com.lp.ble.utils.BLEUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class BLEScanner {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final BLEScanner f36333f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BLEScanListener f36334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f36335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScanCallback f36336c;
    public BleScanConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DeviceFilter f36337e;

    /* JADX INFO: renamed from: com.lp.ble.BLEScanner$4, reason: invalid class name */
    public class AnonymousClass4 implements DeviceFilter {
    }

    static {
        BLEScanner bLEScanner = new BLEScanner();
        new BleScanConfig.Builder();
        BleScanConfig bleScanConfig = new BleScanConfig();
        bleScanConfig.f36348a = true;
        bleScanConfig.f36349b = 1;
        bleScanConfig.f36350c = "";
        bLEScanner.d = bleScanConfig;
        bLEScanner.f36337e = new AnonymousClass4();
        f36333f = bLEScanner;
    }

    public static BluetoothLeScanner a() {
        BluetoothAdapter adapter;
        BluetoothManager bluetoothManager = (BluetoothManager) BLEManager.f36330c.f36331a.getSystemService(MenuBarConstants.MEDIA_TYPE_BLUE_TOOTH);
        if (bluetoothManager == null) {
            BLEManager.c();
            HashMap map = BLELog.f36371a;
            adapter = null;
        } else {
            adapter = bluetoothManager.getAdapter();
        }
        if (adapter == null) {
            BLEManager.c();
            HashMap map2 = BLELog.f36371a;
            return null;
        }
        BluetoothLeScanner bluetoothLeScanner = adapter.getBluetoothLeScanner();
        if (bluetoothLeScanner != null) {
            return bluetoothLeScanner;
        }
        BLEManager.c();
        HashMap map3 = BLELog.f36371a;
        return null;
    }

    public final void b(BLEScanListener bLEScanListener) {
        BleScanConfig bleScanConfig = this.d;
        this.f36334a = bLEScanListener;
        BLEManager bLEManager = BLEManager.f36330c;
        int iA = bLEManager.a();
        if (iA > 0) {
            BLEScanListener bLEScanListener2 = this.f36334a;
            if (bLEScanListener2 != null) {
                bLEScanListener2.onScanFailed(iA);
                this.f36334a = null;
                return;
            }
            return;
        }
        if (this.f36335b) {
            return;
        }
        BLEManager.c();
        HashMap map = BLELog.f36371a;
        this.f36335b = true;
        BleStatistic.a(System.currentTimeMillis());
        StatisticCallback statisticCallback = bLEManager.f36332b;
        if (statisticCallback != null) {
            statisticCallback.a();
        }
        if (!bleScanConfig.f36348a) {
            if (this.f36336c == null) {
                this.f36336c = new ScanCallback() { // from class: com.lp.ble.BLEScanner.1
                    @Override // android.bluetooth.le.ScanCallback
                    public final void onBatchScanResults(List list) {
                        super.onBatchScanResults(list);
                        BLEManager.c();
                        HashMap map2 = BLELog.f36371a;
                    }

                    @Override // android.bluetooth.le.ScanCallback
                    public final void onScanFailed(int i2) {
                        super.onScanFailed(i2);
                        BLEManager.c();
                        HashMap map2 = BLELog.f36371a;
                        BLEScanner bLEScanner = BLEScanner.this;
                        BLEScanListener bLEScanListener3 = bLEScanner.f36334a;
                        if (bLEScanListener3 != null) {
                            bLEScanListener3.onScanFailed(i2);
                            bLEScanner.f36334a = null;
                        }
                    }

                    @Override // android.bluetooth.le.ScanCallback
                    public final void onScanResult(int i2, ScanResult scanResult) {
                        BLEScanListener bLEScanListener3;
                        BLEScanner bLEScanner = BLEScanner.this;
                        LPBluetoothDevice lPBluetoothDeviceH = BLEUtil.h("getScanCallback.onScanResult", bLEScanner.d, bLEScanner.f36337e, scanResult.getDevice(), scanResult.getRssi(), scanResult.getScanRecord().getBytes());
                        if (lPBluetoothDeviceH == null || (bLEScanListener3 = bLEScanner.f36334a) == null) {
                            return;
                        }
                        bLEScanListener3.onScanResult(lPBluetoothDeviceH);
                    }
                };
            }
            BluetoothLeScanner bluetoothLeScannerA = a();
            BLEManager.c();
            if (bluetoothLeScannerA != null) {
                ArrayList arrayList = new ArrayList();
                if (!TextUtils.isEmpty(bleScanConfig.f36350c)) {
                    arrayList.add(new ScanFilter.Builder().setServiceUuid(new ParcelUuid(UUID.fromString(bleScanConfig.f36350c))).build());
                }
                ScanSettings.Builder builder = new ScanSettings.Builder();
                builder.setScanMode(bleScanConfig.f36349b);
                builder.setCallbackType(1);
                bluetoothLeScannerA.startScan(arrayList, builder.build(), this.f36336c);
                return;
            }
            return;
        }
        BleScanRuleConfig.Builder builder2 = new BleScanRuleConfig.Builder();
        builder2.f25306b = 2147483647L;
        if (!TextUtils.isEmpty(bleScanConfig.f36350c)) {
            builder2.f25305a = new UUID[]{UUID.fromString(bleScanConfig.f36350c)};
        }
        BleManager bleManagerC = BleManager.c();
        BleScanRuleConfig bleScanRuleConfig = new BleScanRuleConfig();
        bleScanRuleConfig.f25303a = builder2.f25305a;
        bleScanRuleConfig.f25304b = builder2.f25306b;
        bleManagerC.f25259b = bleScanRuleConfig;
        BleManager bleManagerC2 = BleManager.c();
        BleScanCallback bleScanCallback = new BleScanCallback() { // from class: com.lp.ble.BLEScanner.3
            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public final void a() {
                BLEManager.c();
                HashMap map2 = BLELog.f36371a;
            }

            @Override // com.clj.fastble.callback.BleScanPresenterImp
            public final void b(BleDevice bleDevice) {
                BLEScanListener bLEScanListener3;
                BLEScanner bLEScanner = BLEScanner.this;
                LPBluetoothDevice lPBluetoothDeviceH = BLEUtil.h("getFastBleScanCallback.onScanning", bLEScanner.d, bLEScanner.f36337e, bleDevice.f25292b, bleDevice.d, bleDevice.f25293c);
                if (lPBluetoothDeviceH == null || (bLEScanListener3 = bLEScanner.f36334a) == null) {
                    return;
                }
                bLEScanListener3.onScanResult(lPBluetoothDeviceH);
            }

            @Override // com.clj.fastble.callback.BleScanCallback
            public final void c() {
                BLEManager.c();
                HashMap map2 = BLELog.f36371a;
                BLEScanner bLEScanner = BLEScanner.this;
                bLEScanner.f36335b = false;
                BLEScanListener bLEScanListener3 = bLEScanner.f36334a;
                if (bLEScanListener3 != null) {
                    bLEScanListener3.onScanFinished();
                    bLEScanner.f36334a = null;
                }
            }
        };
        BluetoothAdapter bluetoothAdapter = bleManagerC2.f25260c;
        if (bluetoothAdapter == null || !bluetoothAdapter.isEnabled()) {
            bleScanCallback.a();
            return;
        }
        BleScanRuleConfig bleScanRuleConfig2 = bleManagerC2.f25259b;
        BleScanner.a().b(bleScanRuleConfig2.f25303a, bleScanRuleConfig2.f25304b, bleScanCallback);
    }

    public final void c() {
        if (this.f36335b) {
            BLEManager.c();
            HashMap map = BLELog.f36371a;
            this.f36335b = false;
            if (this.d.f36348a) {
                BleManager.c().getClass();
                BleScanner.a().c();
                return;
            }
            BluetoothLeScanner bluetoothLeScannerA = a();
            ScanCallback scanCallback = this.f36336c;
            if (scanCallback != null) {
                if (bluetoothLeScannerA != null) {
                    bluetoothLeScannerA.stopScan(scanCallback);
                }
                this.f36336c = null;
                BLEScanListener bLEScanListener = this.f36334a;
                if (bLEScanListener != null) {
                    bLEScanListener.onScanFinished();
                    this.f36334a = null;
                }
            }
        }
    }
}
