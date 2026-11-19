package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class zzpm implements Parcelable.Creator {
    public static void a(zzpl zzplVar, Parcel parcel) {
        int i2 = zzplVar.f31999b;
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(i2);
        SafeParcelWriter.k(parcel, 2, zzplVar.f32000c, false);
        long j2 = zzplVar.d;
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(j2);
        SafeParcelWriter.i(parcel, 4, zzplVar.f32001e);
        SafeParcelWriter.k(parcel, 6, zzplVar.f32002f, false);
        SafeParcelWriter.k(parcel, 7, zzplVar.g, false);
        SafeParcelWriter.d(parcel, 8, zzplVar.f32003h);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        Long lW = null;
        Float fR = null;
        String strG2 = null;
        String strG3 = null;
        Double dP = null;
        long jV = 0;
        int iT = 0;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 4:
                    lW = SafeParcelReader.w(i2, parcel);
                    break;
                case 5:
                    fR = SafeParcelReader.r(i2, parcel);
                    break;
                case 6:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\b':
                    dP = SafeParcelReader.p(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzpl(iT, strG, jV, lW, fR, strG2, strG3, dP);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzpl[i2];
    }
}
