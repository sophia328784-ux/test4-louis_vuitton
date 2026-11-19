package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzek implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = -1;
        int iT2 = 0;
        short s = 0;
        int iT3 = 0;
        long jV = 0;
        float fQ = 0.0f;
        double dO = 0.0d;
        double dO2 = 0.0d;
        String strG = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 2:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 3:
                    SafeParcelReader.A(parcel, i2, 4);
                    s = (short) parcel.readInt();
                    break;
                case 4:
                    dO = SafeParcelReader.o(i2, parcel);
                    break;
                case 5:
                    dO2 = SafeParcelReader.o(i2, parcel);
                    break;
                case 6:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 7:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\b':
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\t':
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzej(strG, iT2, s, dO, dO2, fQ, jV, iT3, iT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzej[i2];
    }
}
