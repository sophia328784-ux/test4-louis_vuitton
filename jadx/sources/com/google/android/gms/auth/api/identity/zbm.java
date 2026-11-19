package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zbm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        ArrayList arrayListI = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 5:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    arrayListI = SafeParcelReader.i(i2, parcel);
                    break;
                case 7:
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new BeginSignInRequest.GoogleIdTokenRequestOptions(strG, strG2, zM, strG3, arrayListI, zM2, zM3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new BeginSignInRequest.GoogleIdTokenRequestOptions[i2];
    }
}
