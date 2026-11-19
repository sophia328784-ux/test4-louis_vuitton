package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzop implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        while (true) {
            ArrayList arrayList = null;
            while (true) {
                if (parcel.dataPosition() >= iZ) {
                    SafeParcelReader.l(iZ, parcel);
                    return new zzoo(arrayList);
                }
                int i2 = parcel.readInt();
                if (((char) i2) != 1) {
                    SafeParcelReader.y(i2, parcel);
                } else {
                    int iX = SafeParcelReader.x(i2, parcel);
                    int iDataPosition = parcel.dataPosition();
                    if (iX == 0) {
                        break;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    int i3 = parcel.readInt();
                    for (int i4 = 0; i4 < i3; i4++) {
                        arrayList2.add(Integer.valueOf(parcel.readInt()));
                    }
                    parcel.setDataPosition(iDataPosition + iX);
                    arrayList = arrayList2;
                }
            }
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzoo[i2];
    }
}
