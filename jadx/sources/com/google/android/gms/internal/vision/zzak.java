package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzak implements Parcelable.Creator<zzal> {
    @Override // android.os.Parcelable.Creator
    public final zzal createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        while (parcel.dataPosition() < iZ) {
            SafeParcelReader.y(parcel.readInt(), parcel);
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzal();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal[] newArray(int i2) {
        return new zzal[i2];
    }
}
