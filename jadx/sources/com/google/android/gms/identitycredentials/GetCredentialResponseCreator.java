package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class GetCredentialResponseCreator implements Parcelable.Creator<GetCredentialResponse> {
    @Override // android.os.Parcelable.Creator
    public final GetCredentialResponse createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                credential = (Credential) SafeParcelReader.f(parcel, i2, Credential.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GetCredentialResponse(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final GetCredentialResponse[] newArray(int i2) {
        return new GetCredentialResponse[i2];
    }
}
