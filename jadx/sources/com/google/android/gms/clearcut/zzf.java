package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.clearcut.zzr;
import com.google.android.gms.phenotype.ExperimentTokens;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf implements Parcelable.Creator<zze> {
    @Override // android.os.Parcelable.Creator
    public final zze createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzr zzrVar = null;
        byte[] bArrC = null;
        int[] iArrE = null;
        String[] strArrH = null;
        int[] iArrE2 = null;
        byte[][] bArrD = null;
        ExperimentTokens[] experimentTokensArr = null;
        boolean zM = true;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    zzrVar = (zzr) SafeParcelReader.f(parcel, i2, zzr.CREATOR);
                    break;
                case 3:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 4:
                    iArrE = SafeParcelReader.e(i2, parcel);
                    break;
                case 5:
                    strArrH = SafeParcelReader.h(i2, parcel);
                    break;
                case 6:
                    iArrE2 = SafeParcelReader.e(i2, parcel);
                    break;
                case 7:
                    bArrD = SafeParcelReader.d(i2, parcel);
                    break;
                case '\b':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    experimentTokensArr = (ExperimentTokens[]) SafeParcelReader.j(parcel, i2, ExperimentTokens.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zze(zzrVar, bArrC, iArrE, strArrH, iArrE2, bArrD, zM, experimentTokensArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zze[] newArray(int i2) {
        return new zze[i2];
    }
}
