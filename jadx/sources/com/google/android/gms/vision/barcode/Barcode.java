package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class Barcode extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Barcode> CREATOR = new zzb();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32127c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f32128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Point[] f32129f;
    public final Email g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Phone f32130h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Sms f32131i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WiFi f32132j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final UrlBookmark f32133k;
    public final GeoPoint l;
    public final CalendarEvent m;
    public final ContactInfo n;
    public final DriverLicense o;
    public final byte[] p;
    public final boolean q;

    public Barcode(int i2, String str, String str2, int i3, Point[] pointArr, Email email, Phone phone, Sms sms, WiFi wiFi, UrlBookmark urlBookmark, GeoPoint geoPoint, CalendarEvent calendarEvent, ContactInfo contactInfo, DriverLicense driverLicense, byte[] bArr, boolean z) {
        this.f32126b = i2;
        this.f32127c = str;
        this.p = bArr;
        this.d = str2;
        this.f32128e = i3;
        this.f32129f = pointArr;
        this.q = z;
        this.g = email;
        this.f32130h = phone;
        this.f32131i = sms;
        this.f32132j = wiFi;
        this.f32133k = urlBookmark;
        this.l = geoPoint;
        this.m = calendarEvent;
        this.n = contactInfo;
        this.o = driverLicense;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f32126b);
        SafeParcelWriter.k(parcel, 3, this.f32127c, false);
        SafeParcelWriter.k(parcel, 4, this.d, false);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f32128e);
        SafeParcelWriter.n(parcel, 6, this.f32129f, i2);
        SafeParcelWriter.j(parcel, 7, this.g, i2, false);
        SafeParcelWriter.j(parcel, 8, this.f32130h, i2, false);
        SafeParcelWriter.j(parcel, 9, this.f32131i, i2, false);
        SafeParcelWriter.j(parcel, 10, this.f32132j, i2, false);
        SafeParcelWriter.j(parcel, 11, this.f32133k, i2, false);
        SafeParcelWriter.j(parcel, 12, this.l, i2, false);
        SafeParcelWriter.j(parcel, 13, this.m, i2, false);
        SafeParcelWriter.j(parcel, 14, this.n, i2, false);
        SafeParcelWriter.j(parcel, 15, this.o, i2, false);
        SafeParcelWriter.b(parcel, 16, this.p, false);
        SafeParcelWriter.p(parcel, 17, 4);
        parcel.writeInt(this.q ? 1 : 0);
        SafeParcelWriter.r(iQ, parcel);
    }

    public static class Address extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Address> CREATOR = new zza();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32134b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String[] f32135c;

        public Address(int i2, String[] strArr) {
            this.f32134b = i2;
            this.f32135c = strArr;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 2, 4);
            parcel.writeInt(this.f32134b);
            SafeParcelWriter.l(parcel, 3, this.f32135c);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Address() {
        }
    }

    public static class GeoPoint extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GeoPoint> CREATOR = new zzj();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f32163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final double f32164c;

        public GeoPoint(double d, double d2) {
            this.f32163b = d;
            this.f32164c = d2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 2, 8);
            parcel.writeDouble(this.f32163b);
            SafeParcelWriter.p(parcel, 3, 8);
            parcel.writeDouble(this.f32164c);
            SafeParcelWriter.r(iQ, parcel);
        }

        public GeoPoint() {
        }
    }

    public static class Phone extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Phone> CREATOR = new zzl();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32170b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32171c;

        public Phone(int i2, String str) {
            this.f32170b = i2;
            this.f32171c = str;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 2, 4);
            parcel.writeInt(this.f32170b);
            SafeParcelWriter.k(parcel, 3, this.f32171c, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Phone() {
        }
    }

    public static class Sms extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Sms> CREATOR = new zzk();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32173c;

        public Sms(String str, String str2) {
            this.f32172b = str;
            this.f32173c = str2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32172b, false);
            SafeParcelWriter.k(parcel, 3, this.f32173c, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Sms() {
        }
    }

    public static class UrlBookmark extends AbstractSafeParcelable {
        public static final Parcelable.Creator<UrlBookmark> CREATOR = new zzn();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32175c;

        public UrlBookmark(String str, String str2) {
            this.f32174b = str;
            this.f32175c = str2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32174b, false);
            SafeParcelWriter.k(parcel, 3, this.f32175c, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public UrlBookmark() {
        }
    }

    public static class WiFi extends AbstractSafeParcelable {
        public static final Parcelable.Creator<WiFi> CREATOR = new zzm();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32176b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32177c;
        public final int d;

        public WiFi(String str, String str2, int i2) {
            this.f32176b = str;
            this.f32177c = str2;
            this.d = i2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32176b, false);
            SafeParcelWriter.k(parcel, 3, this.f32177c, false);
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(this.d);
            SafeParcelWriter.r(iQ, parcel);
        }

        public WiFi() {
        }
    }

    public static class Email extends AbstractSafeParcelable {
        public static final Parcelable.Creator<Email> CREATOR = new zzg();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32160b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32161c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f32162e;

        public Email(int i2, String str, String str2, String str3) {
            this.f32160b = i2;
            this.f32161c = str;
            this.d = str2;
            this.f32162e = str3;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 2, 4);
            parcel.writeInt(this.f32160b);
            SafeParcelWriter.k(parcel, 3, this.f32161c, false);
            SafeParcelWriter.k(parcel, 4, this.d, false);
            SafeParcelWriter.k(parcel, 5, this.f32162e, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public Email() {
        }
    }

    public static class CalendarEvent extends AbstractSafeParcelable {
        public static final Parcelable.Creator<CalendarEvent> CREATOR = new zzf();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32143c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f32144e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f32145f;
        public final CalendarDateTime g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final CalendarDateTime f32146h;

        public CalendarEvent(String str, String str2, String str3, String str4, String str5, CalendarDateTime calendarDateTime, CalendarDateTime calendarDateTime2) {
            this.f32142b = str;
            this.f32143c = str2;
            this.d = str3;
            this.f32144e = str4;
            this.f32145f = str5;
            this.g = calendarDateTime;
            this.f32146h = calendarDateTime2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32142b, false);
            SafeParcelWriter.k(parcel, 3, this.f32143c, false);
            SafeParcelWriter.k(parcel, 4, this.d, false);
            SafeParcelWriter.k(parcel, 5, this.f32144e, false);
            SafeParcelWriter.k(parcel, 6, this.f32145f, false);
            SafeParcelWriter.j(parcel, 7, this.g, i2, false);
            SafeParcelWriter.j(parcel, 8, this.f32146h, i2, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public CalendarEvent() {
        }
    }

    public static class ContactInfo extends AbstractSafeParcelable {
        public static final Parcelable.Creator<ContactInfo> CREATOR = new zze();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PersonName f32147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32148c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Phone[] f32149e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Email[] f32150f;
        public final String[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Address[] f32151h;

        public ContactInfo(PersonName personName, String str, String str2, Phone[] phoneArr, Email[] emailArr, String[] strArr, Address[] addressArr) {
            this.f32147b = personName;
            this.f32148c = str;
            this.d = str2;
            this.f32149e = phoneArr;
            this.f32150f = emailArr;
            this.g = strArr;
            this.f32151h = addressArr;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.j(parcel, 2, this.f32147b, i2, false);
            SafeParcelWriter.k(parcel, 3, this.f32148c, false);
            SafeParcelWriter.k(parcel, 4, this.d, false);
            SafeParcelWriter.n(parcel, 5, this.f32149e, i2);
            SafeParcelWriter.n(parcel, 6, this.f32150f, i2);
            SafeParcelWriter.l(parcel, 7, this.g);
            SafeParcelWriter.n(parcel, 8, this.f32151h, i2);
            SafeParcelWriter.r(iQ, parcel);
        }

        public ContactInfo() {
        }
    }

    public static class PersonName extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PersonName> CREATOR = new zzi();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32166c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f32167e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f32168f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f32169h;

        public PersonName(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.f32165b = str;
            this.f32166c = str2;
            this.d = str3;
            this.f32167e = str4;
            this.f32168f = str5;
            this.g = str6;
            this.f32169h = str7;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32165b, false);
            SafeParcelWriter.k(parcel, 3, this.f32166c, false);
            SafeParcelWriter.k(parcel, 4, this.d, false);
            SafeParcelWriter.k(parcel, 5, this.f32167e, false);
            SafeParcelWriter.k(parcel, 6, this.f32168f, false);
            SafeParcelWriter.k(parcel, 7, this.g, false);
            SafeParcelWriter.k(parcel, 8, this.f32169h, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public PersonName() {
        }
    }

    public static class CalendarDateTime extends AbstractSafeParcelable {
        public static final Parcelable.Creator<CalendarDateTime> CREATOR = new zzd();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f32136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f32137c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f32138e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f32139f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f32140h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f32141i;

        public CalendarDateTime(int i2, int i3, int i4, int i5, int i6, int i7, boolean z, String str) {
            this.f32136b = i2;
            this.f32137c = i3;
            this.d = i4;
            this.f32138e = i5;
            this.f32139f = i6;
            this.g = i7;
            this.f32140h = z;
            this.f32141i = str;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.p(parcel, 2, 4);
            parcel.writeInt(this.f32136b);
            SafeParcelWriter.p(parcel, 3, 4);
            parcel.writeInt(this.f32137c);
            SafeParcelWriter.p(parcel, 4, 4);
            parcel.writeInt(this.d);
            SafeParcelWriter.p(parcel, 5, 4);
            parcel.writeInt(this.f32138e);
            SafeParcelWriter.p(parcel, 6, 4);
            parcel.writeInt(this.f32139f);
            SafeParcelWriter.p(parcel, 7, 4);
            parcel.writeInt(this.g);
            SafeParcelWriter.p(parcel, 8, 4);
            parcel.writeInt(this.f32140h ? 1 : 0);
            SafeParcelWriter.k(parcel, 9, this.f32141i, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public CalendarDateTime() {
        }
    }

    public static class DriverLicense extends AbstractSafeParcelable {
        public static final Parcelable.Creator<DriverLicense> CREATOR = new zzh();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f32152b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f32153c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f32154e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f32155f;
        public final String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f32156h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f32157i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final String f32158j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final String f32159k;
        public final String l;
        public final String m;
        public final String n;
        public final String o;

        public DriverLicense(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14) {
            this.f32152b = str;
            this.f32153c = str2;
            this.d = str3;
            this.f32154e = str4;
            this.f32155f = str5;
            this.g = str6;
            this.f32156h = str7;
            this.f32157i = str8;
            this.f32158j = str9;
            this.f32159k = str10;
            this.l = str11;
            this.m = str12;
            this.n = str13;
            this.o = str14;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            int iQ = SafeParcelWriter.q(20293, parcel);
            SafeParcelWriter.k(parcel, 2, this.f32152b, false);
            SafeParcelWriter.k(parcel, 3, this.f32153c, false);
            SafeParcelWriter.k(parcel, 4, this.d, false);
            SafeParcelWriter.k(parcel, 5, this.f32154e, false);
            SafeParcelWriter.k(parcel, 6, this.f32155f, false);
            SafeParcelWriter.k(parcel, 7, this.g, false);
            SafeParcelWriter.k(parcel, 8, this.f32156h, false);
            SafeParcelWriter.k(parcel, 9, this.f32157i, false);
            SafeParcelWriter.k(parcel, 10, this.f32158j, false);
            SafeParcelWriter.k(parcel, 11, this.f32159k, false);
            SafeParcelWriter.k(parcel, 12, this.l, false);
            SafeParcelWriter.k(parcel, 13, this.m, false);
            SafeParcelWriter.k(parcel, 14, this.n, false);
            SafeParcelWriter.k(parcel, 15, this.o, false);
            SafeParcelWriter.r(iQ, parcel);
        }

        public DriverLicense() {
        }
    }

    public Barcode() {
    }
}
