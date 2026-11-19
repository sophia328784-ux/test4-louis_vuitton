package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zab implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        Uri uri = null;
        String strG5 = null;
        String strG6 = null;
        ArrayList arrayListK = null;
        String strG7 = null;
        String strG8 = null;
        long jV = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.f(parcel, i2, Uri.CREATOR);
                    break;
                case 7:
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case '\t':
                    strG6 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\n':
                    arrayListK = SafeParcelReader.k(parcel, i2, Scope.CREATOR);
                    break;
                case 11:
                    strG7 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\f':
                    strG8 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GoogleSignInAccount(strG, strG2, strG3, strG4, uri, strG5, jV, strG6, arrayListK, strG7, strG8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GoogleSignInAccount[i2];
    }
}
