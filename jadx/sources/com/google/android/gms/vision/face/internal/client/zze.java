package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements Parcelable.Creator<zzf> {
    @Override // android.os.Parcelable.Creator
    public final zzf createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        boolean zM = false;
        boolean zM2 = false;
        float fQ = -1.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzf(iT, iT2, iT3, zM, zM2, fQ);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf[] newArray(int i2) {
        return new zzf[i2];
    }
}
