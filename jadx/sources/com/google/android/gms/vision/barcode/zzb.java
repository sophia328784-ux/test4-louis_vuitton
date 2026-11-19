package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* JADX INFO: loaded from: classes2.dex */
public final class zzb implements Parcelable.Creator<Barcode> {
    @Override // android.os.Parcelable.Creator
    public final Barcode createFromParcel(Parcel parcel) {
        int iZ = SafeParcelReader.z(parcel);
        int iT = 0;
        int iT2 = 0;
        boolean zM = false;
        String strG = null;
        String strG2 = null;
        Point[] pointArr = null;
        Barcode.Email email = null;
        Barcode.Phone phone = null;
        Barcode.Sms sms = null;
        Barcode.WiFi wiFi = null;
        Barcode.UrlBookmark urlBookmark = null;
        Barcode.GeoPoint geoPoint = null;
        Barcode.CalendarEvent calendarEvent = null;
        Barcode.ContactInfo contactInfo = null;
        Barcode.DriverLicense driverLicense = null;
        byte[] bArrC = null;
        while (parcel.dataPosition() < iZ) {
            int i2 = parcel.readInt();
            switch ((char) i2) {
                case 2:
                    iT = SafeParcelReader.t(i2, parcel);
                    break;
                case 3:
                    strG = SafeParcelReader.g(i2, parcel);
                    break;
                case 4:
                    strG2 = SafeParcelReader.g(i2, parcel);
                    break;
                case 5:
                    iT2 = SafeParcelReader.t(i2, parcel);
                    break;
                case 6:
                    pointArr = (Point[]) SafeParcelReader.j(parcel, i2, Point.CREATOR);
                    break;
                case 7:
                    email = (Barcode.Email) SafeParcelReader.f(parcel, i2, Barcode.Email.CREATOR);
                    break;
                case '\b':
                    phone = (Barcode.Phone) SafeParcelReader.f(parcel, i2, Barcode.Phone.CREATOR);
                    break;
                case '\t':
                    sms = (Barcode.Sms) SafeParcelReader.f(parcel, i2, Barcode.Sms.CREATOR);
                    break;
                case '\n':
                    wiFi = (Barcode.WiFi) SafeParcelReader.f(parcel, i2, Barcode.WiFi.CREATOR);
                    break;
                case 11:
                    urlBookmark = (Barcode.UrlBookmark) SafeParcelReader.f(parcel, i2, Barcode.UrlBookmark.CREATOR);
                    break;
                case '\f':
                    geoPoint = (Barcode.GeoPoint) SafeParcelReader.f(parcel, i2, Barcode.GeoPoint.CREATOR);
                    break;
                case '\r':
                    calendarEvent = (Barcode.CalendarEvent) SafeParcelReader.f(parcel, i2, Barcode.CalendarEvent.CREATOR);
                    break;
                case 14:
                    contactInfo = (Barcode.ContactInfo) SafeParcelReader.f(parcel, i2, Barcode.ContactInfo.CREATOR);
                    break;
                case 15:
                    driverLicense = (Barcode.DriverLicense) SafeParcelReader.f(parcel, i2, Barcode.DriverLicense.CREATOR);
                    break;
                case 16:
                    bArrC = SafeParcelReader.c(i2, parcel);
                    break;
                case 17:
                    zM = SafeParcelReader.m(i2, parcel);
                    break;
                default:
                    SafeParcelReader.y(i2, parcel);
                    break;
            }
        }
        SafeParcelReader.l(iZ, parcel);
        return new Barcode(iT, strG, strG2, iT2, pointArr, email, phone, sms, wiFi, urlBookmark, geoPoint, calendarEvent, contactInfo, driverLicense, bArrC, zM);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode[] newArray(int i2) {
        return new Barcode[i2];
    }
}
