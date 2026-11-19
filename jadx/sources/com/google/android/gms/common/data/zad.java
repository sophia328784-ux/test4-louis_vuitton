package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String[] strArrH = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundleB = null;
        int iT = 0;
        int iT2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                strArrH = SafeParcelReader.h(i2, parcel);
            } else if (c2 == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.j(parcel, i2, CursorWindow.CREATOR);
            } else if (c2 == 3) {
                iT2 = SafeParcelReader.t(i2, parcel);
            } else if (c2 == 4) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 != 1000) {
                SafeParcelReader.y(i2, parcel);
            } else {
                iT = SafeParcelReader.t(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        DataHolder dataHolder = new DataHolder(iT, strArrH, cursorWindowArr, iT2, bundleB);
        dataHolder.W1();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new DataHolder[i2];
    }
}
