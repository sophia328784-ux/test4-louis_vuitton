package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzal implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        int iT4 = 0;
        int iT5 = 0;
        int iT6 = 0;
        int iT7 = 0;
        boolean zM = false;
        int iT8 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    iT5 = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    iT6 = SafeParcelReader.t(i2, parcel);
                    break;
                case 7:
                    iT7 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\b':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    iT8 = SafeParcelReader.t(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new SleepClassifyEvent(iT, iT2, iT3, iT4, iT5, iT6, iT7, zM, iT8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new SleepClassifyEvent[i2];
    }
}
