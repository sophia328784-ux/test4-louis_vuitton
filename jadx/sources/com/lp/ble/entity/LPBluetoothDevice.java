package com.lp.ble.entity;

import android.bluetooth.BluetoothDevice;
import com.linkplay.medialib.ContentTree;
import com.lp.ble.manager.LPBLEDeviceInfo;
import com.lp.ble.utils.BLEUtil;
import defpackage.fc;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LPBluetoothDevice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f36358a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BluetoothDevice f36359b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f36360c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f36361e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f36362f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f36363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f36364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f36365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f36366k;
    public LPBLEDeviceInfo l;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public BluetoothDevice f36367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36368b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f36369c;

        public final LPBluetoothDevice a() {
            LPBluetoothDevice lPBluetoothDevice = new LPBluetoothDevice();
            lPBluetoothDevice.f36358a = false;
            lPBluetoothDevice.f36365j = -1;
            lPBluetoothDevice.f36360c = this.f36368b;
            lPBluetoothDevice.f36359b = this.f36367a;
            byte[] bArr = this.f36369c;
            if (bArr != null) {
                if (bArr.length >= 2) {
                    lPBluetoothDevice.d = BLEUtil.b(BLEUtil.c(0, 2, bArr));
                }
                if (bArr.length >= 4) {
                    lPBluetoothDevice.f36361e = BLEUtil.b(BLEUtil.c(2, 2, bArr));
                }
                if (bArr.length >= 5) {
                    lPBluetoothDevice.f36362f = BLEUtil.b(BLEUtil.c(4, 1, bArr));
                }
                if (bArr.length >= 6) {
                    lPBluetoothDevice.g = BLEUtil.b(BLEUtil.c(5, 1, bArr));
                }
                if (bArr.length >= 8) {
                    lPBluetoothDevice.f36363h = BLEUtil.b(BLEUtil.c(6, 2, bArr));
                }
                if (bArr.length >= 14) {
                    lPBluetoothDevice.f36364i = BLEUtil.c(8, 6, bArr);
                }
                if (bArr.length >= 15) {
                    lPBluetoothDevice.f36365j = BLEUtil.b(BLEUtil.c(14, 1, bArr));
                }
            }
            lPBluetoothDevice.f36366k = false;
            return lPBluetoothDevice;
        }
    }

    public final boolean a() {
        return this.d == 19536 && this.f36361e > 0;
    }

    public final String toString() {
        if (!a() && (this.d != 19537 || this.f36361e <= 0)) {
            return fc.l(new StringBuilder("{identification="), this.f36360c, '}');
        }
        return "{tag=" + String.format("0x%4x", Integer.valueOf(this.d)).replace(" ", ContentTree.ROOT_ID) + ", platform=" + String.format("0x%4x", Integer.valueOf(this.f36361e)).replace(" ", ContentTree.ROOT_ID) + ", version=" + String.format("0x%4x", Integer.valueOf(this.f36362f)).replace(" ", ContentTree.ROOT_ID) + ", pid=" + String.format("0x%4x", Integer.valueOf(this.f36363h)).replace(" ", ContentTree.ROOT_ID) + ", color=" + String.format("0x%4x", Integer.valueOf(this.g)).replace(" ", ContentTree.ROOT_ID) + ", oobe=" + String.format("0x%2x", Integer.valueOf(this.f36365j)).replace(" ", ContentTree.ROOT_ID) + ", mac=" + Arrays.toString(this.f36364i) + '}';
    }
}
