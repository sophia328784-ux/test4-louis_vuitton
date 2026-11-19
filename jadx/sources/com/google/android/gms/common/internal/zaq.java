package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zaq implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = -1;
        int iT2 = 0;
        int iT3 = 0;
        int iT4 = 0;
        int iT5 = 0;
        String strG = null;
        String strG2 = null;
        long jV = 0;
        long jV2 = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 4:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 5:
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case 6:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    iT5 = SafeParcelReader.t(i2, parcel);
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
        return new MethodInvocation(iT2, iT3, iT4, jV, jV2, strG, strG2, iT5, iT);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new MethodInvocation[i2];
    }
}
