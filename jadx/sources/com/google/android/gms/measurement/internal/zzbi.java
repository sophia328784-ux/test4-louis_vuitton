package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbi implements Parcelable.Creator {
    public static void a(zzbh zzbhVar, Parcel parcel, int i2) {
        String str = zzbhVar.f31603b;
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 2, str, false);
        SafeParcelWriter.j(parcel, 3, zzbhVar.f31604c, i2, false);
        SafeParcelWriter.k(parcel, 4, zzbhVar.d, false);
        long j2 = zzbhVar.f31605e;
        SafeParcelWriter.p(parcel, 5, 8);
        parcel.writeLong(j2);
        long j3 = zzbhVar.f31606f;
        SafeParcelWriter.p(parcel, 6, 8);
        parcel.writeLong(j3);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = 0;
        long jV2 = 0;
        String strG = null;
        zzbf zzbfVar = null;
        String strG2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            char c2 = (char) i2;
            if (c2 == 2) {
                strG = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 3) {
                zzbfVar = (zzbf) SafeParcelReader.f(parcel, i2, zzbf.CREATOR);
            } else if (c2 == 4) {
                strG2 = SafeParcelReader.g(i2, parcel);
            } else if (c2 == 5) {
                jV = SafeParcelReader.v(i2, parcel);
            } else if (c2 != 6) {
                SafeParcelReader.y(i2, parcel);
            } else {
                jV2 = SafeParcelReader.v(i2, parcel);
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzbh(strG, zzbfVar, strG2, jV, jV2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzbh[i2];
    }
}
