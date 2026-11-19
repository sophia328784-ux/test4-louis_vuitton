package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class CredentialCreator implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final Credential createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        Bundle bundleB = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 2) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bundleB = SafeParcelReader.b(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Credential(strG, bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final Credential[] newArray(int i2) {
        return new Credential[i2];
    }
}
