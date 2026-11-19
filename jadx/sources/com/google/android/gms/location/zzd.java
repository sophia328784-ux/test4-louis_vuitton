package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        Bundle bundleB = null;
        int iT = 0;
        long jV = 0;
        long jV2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                arrayListK = SafeParcelReader.k(parcel, i2, DetectedActivity.CREATOR);
            } else if (c2 == 2) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 3) {
                jV2 = SafeParcelReader.v(i2, parcel);
            } else if (c2 == 4) {
                iT = SafeParcelReader.t(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bundleB = SafeParcelReader.b(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ActivityRecognitionResult(arrayListK, jV, jV2, iT, bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new ActivityRecognitionResult[i2];
    }
}
