package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RegistrationRequestCreator implements Parcelable.Creator<RegistrationRequest> {
    @Override // android.os.Parcelable.Creator
    public final RegistrationRequest createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        List listI = Collections.EMPTY_LIST;
        String strG = "";
        String strG2 = strG;
        byte[] bArrC = null;
        byte[] bArrC2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                bArrC = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 2) {
                bArrC2 = SafeParcelReader.c(i2, parcel);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 4) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 5) {
                SafeParcelReader.y(i2, parcel);
            } else {
                listI = SafeParcelReader.i(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new RegistrationRequest(bArrC, bArrC2, strG, strG2, listI);
    }

    @Override // android.os.Parcelable.Creator
    public final RegistrationRequest[] newArray(int i2) {
        return new RegistrationRequest[i2];
    }
}
