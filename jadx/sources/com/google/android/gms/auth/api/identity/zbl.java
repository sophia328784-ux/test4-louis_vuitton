package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zbl implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        boolean zM = false;
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
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
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new GetSignInIntentRequest(iT, strG, zM, strG2, strG3, strG4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new GetSignInIntentRequest[i2];
    }
}
