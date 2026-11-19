package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzq implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        boolean zM = false;
        boolean zM2 = false;
        boolean zM3 = false;
        boolean zM4 = false;
        boolean zM5 = false;
        String strG = null;
        IBinder iBinderS = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 2:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 3:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 4:
                    iBinderS = SafeParcelReader.s(i2, parcel);
                    break;
                case 5:
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    zM4 = SafeParcelReader.m(i2, parcel);
                    break;
                case 7:
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case '\b':
                    zM5 = SafeParcelReader.m(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzp(strG, zM, zM2, iBinderS, zM3, zM4, zM5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzp[i2];
    }
}
