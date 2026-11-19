package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf implements Parcelable.Creator<Barcode.CalendarEvent> {
    @Override // android.os.Parcelable.Creator
    public final Barcode.CalendarEvent createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        String strG = null;
        String strG2 = null;
        String strG3 = null;
        String strG4 = null;
        String strG5 = null;
        Barcode.CalendarDateTime calendarDateTime = null;
        Barcode.CalendarDateTime calendarDateTime2 = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 3:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG3 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    strG4 = SafeParcelReader.g(i2, parcel);
                    break;
                case 6:
                    strG5 = SafeParcelReader.g(i2, parcel);
                    break;
                case 7:
                    calendarDateTime = (Barcode.CalendarDateTime) SafeParcelReader.f(parcel, i2, Barcode.CalendarDateTime.CREATOR);
                    break;
                case '\b':
                    calendarDateTime2 = (Barcode.CalendarDateTime) SafeParcelReader.f(parcel, i2, Barcode.CalendarDateTime.CREATOR);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode.CalendarEvent(strG, strG2, strG3, strG4, strG5, calendarDateTime, calendarDateTime2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarEvent[] newArray(int i2) {
        return new Barcode.CalendarEvent[i2];
    }
}
