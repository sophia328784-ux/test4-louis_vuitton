package com.lightup.sdk.device.ble.scanner;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.location.LocationManager;
import androidx.core.content.ContextCompat;
import com.lightup.sdk.device.ble.exceptions.tracking.GPSDisabledException;
import com.lightup.sdk.device.ble.exceptions.tracking.GPSException;
import com.lightup.sdk.device.ble.exceptions.tracking.LocationGrantedException;
import com.lightup.sdk.device.ble.permissions.PermissionsManager;
import com.lightup.sdk.device.properties.Properties;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class MBLEScanner extends BLEScanner {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScanCallback f35974f;
    public BluetoothLeScanner g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScanSettings f35975h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f35976i;

    public MBLEScanner(PermissionsManager permissionsManager, byte[] bArr) throws GPSException {
        super(permissionsManager);
        this.f35975h = new ScanSettings.Builder().setScanMode(2).build();
        ArrayList arrayList = new ArrayList();
        this.f35976i = arrayList;
        if (!((LocationManager) permissionsManager.getSystemService("location")).isProviderEnabled("gps")) {
            throw new GPSDisabledException();
        }
        if (ContextCompat.checkSelfPermission(permissionsManager, "android.permission.ACCESS_FINE_LOCATION") == -1) {
            throw new LocationGrantedException();
        }
        ScanFilter.Builder builder = new ScanFilter.Builder();
        byte[] bArr2 = Properties.f36030h;
        byte[] bArr3 = new byte[4];
        System.arraycopy(bArr2, 0, bArr3, 3, 1);
        System.arraycopy(bArr2, 1, bArr3, 2, 1);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.put(bArr3, 0, 4);
        byteBufferAllocate.flip();
        builder.setManufacturerData(byteBufferAllocate.getInt(), new byte[0]);
        arrayList.add(builder.build());
        if (bArr != null) {
            byte[] bArr4 = new byte[4];
            System.arraycopy(bArr, 0, bArr4, 3, 1);
            System.arraycopy(bArr, 1, bArr4, 2, 1);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
            byteBufferAllocate2.put(bArr4, 0, 4);
            byteBufferAllocate2.flip();
            builder.setManufacturerData(byteBufferAllocate2.getInt(), new byte[0]);
            arrayList.add(builder.build());
        }
        this.g = this.f35972c.getBluetoothLeScanner();
        this.f35974f = new ScanCallback() { // from class: com.lightup.sdk.device.ble.scanner.MBLEScanner.1
            @Override // android.bluetooth.le.ScanCallback
            public final void onScanResult(int i2, ScanResult scanResult) {
                if (scanResult.getScanRecord() == null) {
                    return;
                }
                MBLEScanner mBLEScanner = MBLEScanner.this;
                BluetoothDevice device = scanResult.getDevice();
                byte[] bytes = scanResult.getScanRecord().getBytes();
                synchronized (mBLEScanner) {
                    try {
                        if (mBLEScanner.f35971b) {
                            String address = device.getAddress();
                            if (address == null) {
                                return;
                            }
                            if (!mBLEScanner.f35970a.contains(address)) {
                                String name = device.getName() != null ? device.getName() : "n/a";
                                if (!mBLEScanner.f35971b) {
                                    return;
                                }
                                if (mBLEScanner.d.onDiscoveredDevice(name.trim(), address, bytes)) {
                                    mBLEScanner.f35970a.add(address);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
    }
}
