package com.google.android.gms.fido.fido2.api.common;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzy implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        String strG = null;
        String strG2 = null;
        byte[] bArrC = null;
        byte[] bArrC2 = null;
        Account account = null;
        long jV = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 2:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 4:
                    bArrC2 = SafeParcelReader.c(i2, parcel);
                    break;
                case 5:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case '\b':
                    account = (Account) SafeParcelReader.f(parcel, i2, Account.CREATOR);
                    break;
                case '\t':
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new FidoCredentialDetails(strG, strG2, bArrC, bArrC2, zM, zM2, jV, account, zM3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new FidoCredentialDetails[i2];
    }
}
