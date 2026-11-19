package com.clj.fastble.data;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes2.dex */
public class BleDevice implements Parcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BluetoothDevice f25292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f25293c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f25294e;

    /* JADX INFO: renamed from: com.clj.fastble.data.BleDevice$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<BleDevice> {
        @Override // android.os.Parcelable.Creator
        public final BleDevice createFromParcel(Parcel parcel) {
            BleDevice bleDevice = new BleDevice();
            bleDevice.f25292b = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
            bleDevice.f25293c = parcel.createByteArray();
            bleDevice.d = parcel.readInt();
            bleDevice.f25294e = parcel.readLong();
            return bleDevice;
        }

        @Override // android.os.Parcelable.Creator
        public final BleDevice[] newArray(int i2) {
            return new BleDevice[i2];
        }
    }

    public BleDevice(BluetoothDevice bluetoothDevice, int i2, byte[] bArr, long j2) {
        this.f25292b = bluetoothDevice;
        this.f25293c = bArr;
        this.d = i2;
        this.f25294e = j2;
    }

    public final String a() {
        BluetoothDevice bluetoothDevice = this.f25292b;
        if (bluetoothDevice == null) {
            return "";
        }
        return bluetoothDevice.getName() + bluetoothDevice.getAddress();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.f25292b, i2);
        parcel.writeByteArray(this.f25293c);
        parcel.writeInt(this.d);
        parcel.writeLong(this.f25294e);
    }

    public BleDevice(BluetoothDevice bluetoothDevice) {
        this.f25292b = bluetoothDevice;
    }
}
