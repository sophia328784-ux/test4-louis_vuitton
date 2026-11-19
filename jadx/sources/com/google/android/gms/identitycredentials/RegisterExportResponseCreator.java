package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class RegisterExportResponseCreator implements Parcelable.Creator<RegisterExportResponse> {
    @Override // android.os.Parcelable.Creator
    public final RegisterExportResponse createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        while (parcel.dataPosition() < iZ) {
            SafeParcelReader.y(parcel.readInt(), parcel);
        }
        SafeParcelReader.l(iZ, parcel);
        return new RegisterExportResponse();
    }

    @Override // android.os.Parcelable.Creator
    public final RegisterExportResponse[] newArray(int i2) {
        return new RegisterExportResponse[i2];
    }
}
