package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zbc implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = "";
        GoogleSignInAccount googleSignInAccount = null;
        String strG2 = "";
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 4) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.f(parcel, i2, GoogleSignInAccount.CREATOR);
            } else if (c2 != '\b') {
                SafeParcelReader.y(i2, parcel);
            } else {
                strG2 = SafeParcelReader.g(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SignInAccount(strG, googleSignInAccount, strG2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SignInAccount[i2];
    }
}
