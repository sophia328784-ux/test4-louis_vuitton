package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class ClearRestoreCredentialRequestCreator implements Parcelable.Creator<ClearRestoreCredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final ClearRestoreCredentialRequest createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        Bundle bundleB = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            if (((char) i2) != 1) {
                SafeParcelReader.y(i2, parcel);
            } else {
                bundleB = SafeParcelReader.b(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ClearRestoreCredentialRequest(bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final ClearRestoreCredentialRequest[] newArray(int i2) {
        return new ClearRestoreCredentialRequest[i2];
    }
}
