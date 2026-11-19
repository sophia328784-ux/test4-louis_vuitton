package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zbe implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        ArrayList arrayListK = null;
        String strG = null;
        Account account = null;
        String strG2 = null;
        String strG3 = null;
        Bundle bundleB = null;
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    arrayListK = SafeParcelReader.k(parcel, i2, Scope.CREATOR);
                    break;
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 4:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 5:
                    account = (Account) SafeParcelReader.f(parcel, i2, Account.CREATOR);
                    break;
                case 6:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    bundleB = SafeParcelReader.b(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new AuthorizationRequest(arrayListK, strG, zM, zM2, account, strG2, strG3, zM3, bundleB);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new AuthorizationRequest[i2];
    }
}
