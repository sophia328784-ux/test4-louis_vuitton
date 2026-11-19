package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzh implements Parcelable.Creator<ExperimentTokens> {
    @Override // android.os.Parcelable.Creator
    public final ExperimentTokens createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        byte[] bArrC = null;
        byte[][] bArrD = null;
        byte[][] bArrD2 = null;
        byte[][] bArrD3 = null;
        byte[][] bArrD4 = null;
        int[] iArrE = null;
        byte[][] bArrD5 = null;
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
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new ExperimentTokens(strG, bArrC, bArrD, bArrD2, bArrD3, bArrD4, iArrE, bArrD5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ExperimentTokens[] newArray(int i2) {
        return new ExperimentTokens[i2];
    }
}
