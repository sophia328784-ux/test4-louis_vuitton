package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.converter.zaa;

/* JADX INFO: loaded from: classes2.dex */
public final class zaj implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        zaa zaaVar = null;
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        int iT3 = 0;
        boolean zM2 = false;
        int iT4 = 0;
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
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 4:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 5:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 6:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\b':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    zaaVar = (zaa) SafeParcelReader.f(parcel, i2, zaa.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new FastJsonResponse.Field(iT, iT2, zM, iT3, zM2, strG, iT4, strG2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new FastJsonResponse.Field[i2];
    }
}
