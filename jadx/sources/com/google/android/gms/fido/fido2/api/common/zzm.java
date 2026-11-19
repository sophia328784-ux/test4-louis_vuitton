package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        Boolean boolValueOf = null;
        String strG2 = null;
        String strG3 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                int iX = SafeParcelReader.x(i2, parcel);
                if (iX == 0) {
                    boolValueOf = null;
                } else {
                    SafeParcelReader.B(parcel, iX, 4);
                    boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                }
            } else if (c2 == 4) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG3 = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new AuthenticatorSelectionCriteria(strG, strG2, strG3, boolValueOf);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new AuthenticatorSelectionCriteria[i2];
    }
}
