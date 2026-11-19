package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzn implements Parcelable.Creator<Barcode.UrlBookmark> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.UrlBookmark createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 3) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG2 = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.UrlBookmark(strG, strG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.UrlBookmark[] newArray(int i2) {
        return new Barcode.UrlBookmark[i2];
    }
}
