package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class GetCredentialRequestCreator implements Parcelable.Creator<GetCredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final GetCredentialRequest createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        Bundle bundleB = null;
        String strG = null;
        ResultReceiver resultReceiver = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 1) {
                arrayListK = SafeParcelReader.k(parcel, i2, CredentialOption.CREATOR);
            } else if (c2 == 2) {
                bundleB = SafeParcelReader.b(i2, parcel);
            } else if (c2 == 3) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 != 4) {
                SafeParcelReader.y(i2, parcel);
            } else {
                resultReceiver = (ResultReceiver) SafeParcelReader.f(parcel, i2, ResultReceiver.CREATOR);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GetCredentialRequest(arrayListK, bundleB, strG, resultReceiver);
    }

    @Override // android.os.Parcelable.Creator
    public final GetCredentialRequest[] newArray(int i2) {
        return new GetCredentialRequest[i2];
    }
}
