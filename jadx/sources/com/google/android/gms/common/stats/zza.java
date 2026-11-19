package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        int iT4 = 0;
        boolean zM = false;
        String strG = null;
        ArrayList arrayListI = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        String strG5 = null;
        long jV = 0;
        long jV2 = 0;
        long jV3 = 0;
        float fQ = 0.0f;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 1:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 2:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 3:
                case 7:
                case '\t':
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case 4:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    arrayListI = SafeParcelReader.i(i2, parcel);
                    break;
                case '\b':
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\n':
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 11:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\f':
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\r':
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 14:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 15:
                    fQ = SafeParcelReader.q(i2, parcel);
                    break;
                case 16:
                    jV3 = SafeParcelReader.v(i2, parcel);
                    break;
                case 17:
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case 18:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new WakeLockEvent(iT, jV, iT2, strG, iT3, arrayListI, strG2, jV2, iT4, strG3, strG4, fQ, jV3, strG5, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new WakeLockEvent[i2];
    }
}
