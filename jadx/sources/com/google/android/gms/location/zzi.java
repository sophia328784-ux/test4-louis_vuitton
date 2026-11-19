package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzi implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        Bundle bundleB = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                arrayListK = SafeParcelReader.k(parcel, i2, ActivityTransitionEvent.CREATOR);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bundleB = SafeParcelReader.b(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ActivityTransitionResult(arrayListK, bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ActivityTransitionResult[i2];
    }
}
