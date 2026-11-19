package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm implements Parcelable.Creator<Barcode.WiFi> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.WiFi createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        int iT = 0;
        String strG2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.WiFi(strG, strG2, iT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.WiFi[] newArray(int i2) {
        return new Barcode.WiFi[i2];
    }
}
