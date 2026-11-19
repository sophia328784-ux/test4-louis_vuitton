package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzs implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        long jV = 0;
        long jV2 = 0;
        long jV3 = 0;
        long jV4 = 0;
        long jV5 = 0;
        long jV6 = 0;
        long jV7 = 0;
        long jV8 = 0;
        boolean zM = false;
        int iT = 0;
        boolean zM2 = false;
        boolean zM3 = false;
        int iT2 = 0;
        int iT3 = 0;
        String strG = "";
        String strG2 = strG;
        String strG3 = strG2;
        String strG4 = strG3;
        String strG5 = null;
        String strG6 = null;
        String strG7 = null;
        String strG8 = null;
        String strG9 = null;
        String strG10 = null;
        Boolean boolValueOf = null;
        ArrayList arrayListI = null;
        String strG11 = null;
        String strG12 = null;
        int iT4 = 100;
        boolean zM4 = true;
        boolean zM5 = true;
        long jV9 = -2147483648L;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG6 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG7 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    strG8 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    jV = SafeParcelReader.v(i2, parcel);
                    break;
                case 7:
                    jV2 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\b':
                    strG9 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\t':
                    zM4 = SafeParcelReader.m(i2, parcel);
                    break;
                case '\n':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case 11:
                    jV9 = SafeParcelReader.v(i2, parcel);
                    break;
                case '\f':
                    strG10 = SafeParcelReader.g(i2, parcel);
                    break;
                case '\r':
                case 17:
                case 19:
                case 20:
                case 24:
                case '!':
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
                case 14:
                    jV3 = SafeParcelReader.v(i2, parcel);
                    break;
                case 15:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 16:
                    zM5 = SafeParcelReader.m(i2, parcel);
                    break;
                case 18:
                    zM2 = SafeParcelReader.m(i2, parcel);
                    break;
                case 21:
                    int iX = SafeParcelReader.x(i2, parcel);
                    if (iX != 0) {
                        SafeParcelReader.B(parcel, iX, 4);
                        boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                    } else {
                        boolValueOf = null;
                    }
                    break;
                case 22:
                    jV4 = SafeParcelReader.v(i2, parcel);
                    break;
                case 23:
                    arrayListI = SafeParcelReader.i(i2, parcel);
                    break;
                case 25:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 26:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 27:
                    strG11 = SafeParcelReader.g(i2, parcel);
                    break;
                case 28:
                    zM3 = SafeParcelReader.m(i2, parcel);
                    break;
                case 29:
                    jV5 = SafeParcelReader.v(i2, parcel);
                    break;
                case 30:
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 31:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case ' ':
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\"':
                    jV6 = SafeParcelReader.v(i2, parcel);
                    break;
                case '#':
                    strG12 = SafeParcelReader.g(i2, parcel);
                    break;
                case '$':
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case '%':
                    jV7 = SafeParcelReader.v(i2, parcel);
                    break;
                case '&':
                    iT3 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\'':
                    jV8 = SafeParcelReader.v(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new zzr(strG5, strG6, strG7, strG8, jV, jV2, strG9, zM4, zM, jV9, strG10, jV3, iT, zM5, zM2, boolValueOf, jV4, arrayListI, strG, strG2, strG11, zM3, jV5, iT4, strG3, iT2, jV6, strG12, strG4, jV7, iT3, jV8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i2) {
        return new zzr[i2];
    }
}
