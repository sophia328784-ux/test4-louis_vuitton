package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzx implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        String strG5 = null;
        String strG6 = null;
        int iT = 0;
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
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 7:
                    strG6 = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new RegisterRequest(strG, strG2, strG3, strG4, strG5, iT, strG6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new RegisterRequest[i2];
    }
}
