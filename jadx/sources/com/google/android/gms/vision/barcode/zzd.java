package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd implements Parcelable.Creator<Barcode.CalendarDateTime> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.CalendarDateTime createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        int iT3 = 0;
        int iT4 = 0;
        int iT5 = 0;
        int iT6 = 0;
        boolean zM = false;
        String strG = null;
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
                    iT4 = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    iT5 = SafeParcelReader.t(i2, parcel);
                    break;
                case 7:
                    iT6 = SafeParcelReader.t(i2, parcel);
                    break;
                case '\b':
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                case '\t':
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.CalendarDateTime(iT, iT2, iT3, iT4, iT5, iT6, zM, strG);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarDateTime[] newArray(int i2) {
        return new Barcode.CalendarDateTime[i2];
    }
}
