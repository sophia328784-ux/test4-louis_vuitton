package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zad implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        ArrayList arrayListK2 = null;
        Account account = null;
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        int iT = 0;
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    arrayListK2 = SafeParcelReader.k(parcel, i2, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.f(parcel, i2, Account.CREATOR);
                    break;
                case 4:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 5:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    arrayListK = SafeParcelReader.k(parcel, i2, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case '\n':
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GoogleSignInOptions(iT, arrayListK2, account, zM, zM2, zM3, strG, strG2, GoogleSignInOptions.X1(arrayListK), strG3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GoogleSignInOptions[i2];
    }
}
