package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzas implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
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
                strG3 = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new PublicKeyCredentialRpEntity(strG, strG2, strG3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new PublicKeyCredentialRpEntity[i2];
    }
}
