package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzag implements Parcelable.Creator<zzah> {
    @Override // android.os.Parcelable.Creator
    public final zzah createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        zzao[] zzaoVarArr = null;
        zzab zzabVar = null;
        zzab zzabVar2 = null;
        zzab zzabVar3 = null;
        String strG = null;
        String strG2 = null;
        float fQ = 0.0f;
        int iT = 0;
        boolean zM = false;
        int iT2 = 0;
        int iT3 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    zzaoVarArr = (zzao[]) SafeParcelReader.j(parcel, i2, zzao.CREATOR);
                    break;
                case 3:
                    zzabVar = (zzab) SafeParcelReader.f(parcel, i2, zzab.CREATOR);
                    break;
                case 4:
                    zzabVar2 = (zzab) SafeParcelReader.f(parcel, i2, zzab.CREATOR);
                    break;
                case 5:
                    zzabVar3 = (zzab) SafeParcelReader.f(parcel, i2, zzab.CREATOR);
                    break;
                case 6:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case '\b':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case '\n':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 11:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\f':
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzah(zzaoVarArr, zzabVar, zzabVar2, zzabVar3, strG, fQ, strG2, iT, zM, iT2, iT3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah[] newArray(int i2) {
        return new zzah[i2];
    }
}
