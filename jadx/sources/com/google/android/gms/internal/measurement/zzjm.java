package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjm implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        byte[] bArrC = null;
        byte[][] bArrD = null;
        byte[][] bArrD2 = null;
        byte[][] bArrD3 = null;
        byte[][] bArrD4 = null;
        int[] iArrE = null;
        byte[][] bArrD5 = null;
        int[] iArrE2 = null;
        byte[][] bArrD6 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 4:
                    bArrD = SafeParcelReader.d(i2, parcel);
                    break;
                case 5:
                    bArrD2 = SafeParcelReader.d(i2, parcel);
                    break;
                case 6:
                    bArrD3 = SafeParcelReader.d(i2, parcel);
                    break;
                case 7:
                    bArrD4 = SafeParcelReader.d(i2, parcel);
                    break;
                case '\b':
                    iArrE = SafeParcelReader.e(i2, parcel);
                    break;
                case '\t':
                    bArrD5 = SafeParcelReader.d(i2, parcel);
                    break;
                case '\n':
                    iArrE2 = SafeParcelReader.e(i2, parcel);
                    break;
                case 11:
                    bArrD6 = SafeParcelReader.d(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzjl(strG, bArrC, bArrD, bArrD2, bArrD3, bArrD4, iArrE, bArrD5, iArrE2, bArrD6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzjl[i2];
    }
}
