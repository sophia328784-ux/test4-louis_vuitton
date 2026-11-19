package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Bundle bundleB = null;
        String strG = null;
        boolean zM = false;
        long jV = 0;
        long jV2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 2) {
                jV2 = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 3) {
                zM = SafeParcelReader.m(i2, parcel);
            } else if (c2 == 7) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 != '\b') {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzdb(jV, jV2, zM, bundleB, strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzdb[i2];
    }
}
