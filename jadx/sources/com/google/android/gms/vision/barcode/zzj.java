package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzj implements Parcelable.Creator<Barcode.GeoPoint> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.GeoPoint createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        double dO = 0.0d;
        double dO2 = 0.0d;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                dO = SafeParcelReader.o(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                dO2 = SafeParcelReader.o(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.GeoPoint(dO, dO2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.GeoPoint[] newArray(int i2) {
        return new Barcode.GeoPoint[i2];
    }
}
