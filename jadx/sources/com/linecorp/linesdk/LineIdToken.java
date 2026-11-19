package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import com.linecorp.linesdk.utils.ParcelUtils;
import defpackage.fc;
import defpackage.n00;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LineIdToken implements Parcelable {
    public static final Parcelable.Creator<LineIdToken> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36072c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f36073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f36074f;
    public final Date g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Date f36075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f36076i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f36077j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f36078k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final Address q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineIdToken$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineIdToken> {
        @Override // android.os.Parcelable.Creator
        public final LineIdToken createFromParcel(Parcel parcel) {
            return new LineIdToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineIdToken[] newArray(int i2) {
            return new LineIdToken[i2];
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f36087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f36088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f36089c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Date f36090e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Date f36091f;
        public Date g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f36092h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public List f36093i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f36094j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f36095k;
        public String l;
        public String m;
        public String n;
        public String o;
        public Address p;
        public String q;
        public String r;
        public String s;
        public String t;
        public String u;
    }

    public LineIdToken(Parcel parcel) {
        this.f36071b = parcel.readString();
        this.f36072c = parcel.readString();
        this.d = parcel.readString();
        this.f36073e = parcel.readString();
        this.f36074f = ParcelUtils.a(parcel);
        this.g = ParcelUtils.a(parcel);
        this.f36075h = ParcelUtils.a(parcel);
        this.f36076i = parcel.readString();
        this.f36077j = parcel.createStringArrayList();
        this.f36078k = parcel.readString();
        this.l = parcel.readString();
        this.m = parcel.readString();
        this.n = parcel.readString();
        this.o = parcel.readString();
        this.p = parcel.readString();
        this.q = (Address) parcel.readParcelable(Address.class.getClassLoader());
        this.r = parcel.readString();
        this.s = parcel.readString();
        this.t = parcel.readString();
        this.u = parcel.readString();
        this.v = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            LineIdToken lineIdToken = (LineIdToken) obj;
            if (!this.f36071b.equals(lineIdToken.f36071b) || !this.f36072c.equals(lineIdToken.f36072c) || !this.d.equals(lineIdToken.d) || !this.f36073e.equals(lineIdToken.f36073e) || !this.f36074f.equals(lineIdToken.f36074f) || !this.g.equals(lineIdToken.g)) {
                return false;
            }
            Date date = lineIdToken.f36075h;
            Date date2 = this.f36075h;
            if (date2 == null ? date != null : !date2.equals(date)) {
                return false;
            }
            String str = lineIdToken.f36076i;
            String str2 = this.f36076i;
            if (str2 == null ? str != null : !str2.equals(str)) {
                return false;
            }
            List list = lineIdToken.f36077j;
            List list2 = this.f36077j;
            if (list2 == null ? list != null : !list2.equals(list)) {
                return false;
            }
            String str3 = lineIdToken.f36078k;
            String str4 = this.f36078k;
            if (str4 == null ? str3 != null : !str4.equals(str3)) {
                return false;
            }
            String str5 = lineIdToken.l;
            String str6 = this.l;
            if (str6 == null ? str5 != null : !str6.equals(str5)) {
                return false;
            }
            String str7 = lineIdToken.m;
            String str8 = this.m;
            if (str8 == null ? str7 != null : !str8.equals(str7)) {
                return false;
            }
            String str9 = lineIdToken.n;
            String str10 = this.n;
            if (str10 == null ? str9 != null : !str10.equals(str9)) {
                return false;
            }
            String str11 = lineIdToken.o;
            String str12 = this.o;
            if (str12 == null ? str11 != null : !str12.equals(str11)) {
                return false;
            }
            String str13 = lineIdToken.p;
            String str14 = this.p;
            if (str14 == null ? str13 != null : !str14.equals(str13)) {
                return false;
            }
            Address address = lineIdToken.q;
            Address address2 = this.q;
            if (address2 == null ? address != null : !address2.equals(address)) {
                return false;
            }
            String str15 = lineIdToken.r;
            String str16 = this.r;
            if (str16 == null ? str15 != null : !str16.equals(str15)) {
                return false;
            }
            String str17 = lineIdToken.s;
            String str18 = this.s;
            if (str18 == null ? str17 != null : !str18.equals(str17)) {
                return false;
            }
            String str19 = lineIdToken.t;
            String str20 = this.t;
            if (str20 == null ? str19 != null : !str20.equals(str19)) {
                return false;
            }
            String str21 = lineIdToken.u;
            String str22 = this.u;
            if (str22 == null ? str21 != null : !str22.equals(str21)) {
                return false;
            }
            String str23 = lineIdToken.v;
            String str24 = this.v;
            if (str24 != null) {
                return str24.equals(str23);
            }
            if (str23 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.g.hashCode() + ((this.f36074f.hashCode() + fc.b(fc.b(fc.b(this.f36071b.hashCode() * 31, 31, this.f36072c), 31, this.d), 31, this.f36073e)) * 31)) * 31;
        Date date = this.f36075h;
        int iHashCode2 = (iHashCode + (date != null ? date.hashCode() : 0)) * 31;
        String str = this.f36076i;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        List list = this.f36077j;
        int iHashCode4 = (iHashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.f36078k;
        int iHashCode5 = (iHashCode4 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.l;
        int iHashCode6 = (iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.m;
        int iHashCode7 = (iHashCode6 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.n;
        int iHashCode8 = (iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.o;
        int iHashCode9 = (iHashCode8 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.p;
        int iHashCode10 = (iHashCode9 + (str7 != null ? str7.hashCode() : 0)) * 31;
        Address address = this.q;
        int iHashCode11 = (iHashCode10 + (address != null ? address.hashCode() : 0)) * 31;
        String str8 = this.r;
        int iHashCode12 = (iHashCode11 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.s;
        int iHashCode13 = (iHashCode12 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.t;
        int iHashCode14 = (iHashCode13 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.u;
        int iHashCode15 = (iHashCode14 + (str11 != null ? str11.hashCode() : 0)) * 31;
        String str12 = this.v;
        return iHashCode15 + (str12 != null ? str12.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LineIdToken{rawString='");
        sb.append(this.f36071b);
        sb.append("', issuer='");
        sb.append(this.f36072c);
        sb.append("', subject='");
        sb.append(this.d);
        sb.append("', audience='");
        sb.append(this.f36073e);
        sb.append("', expiresAt=");
        sb.append(this.f36074f);
        sb.append(", issuedAt=");
        sb.append(this.g);
        sb.append(", authTime=");
        sb.append(this.f36075h);
        sb.append(", nonce='");
        sb.append(this.f36076i);
        sb.append("', amr=");
        sb.append(this.f36077j);
        sb.append(", name='");
        sb.append(this.f36078k);
        sb.append("', picture='");
        sb.append(this.l);
        sb.append("', phoneNumber='");
        sb.append(this.m);
        sb.append("', email='");
        sb.append(this.n);
        sb.append("', gender='");
        sb.append(this.o);
        sb.append("', birthdate='");
        sb.append(this.p);
        sb.append("', address=");
        sb.append(this.q);
        sb.append(", givenName='");
        sb.append(this.r);
        sb.append("', givenNamePronunciation='");
        sb.append(this.s);
        sb.append("', middleName='");
        sb.append(this.t);
        sb.append("', familyName='");
        sb.append(this.u);
        sb.append("', familyNamePronunciation='");
        return n00.r(this.v, "'}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36071b);
        parcel.writeString(this.f36072c);
        parcel.writeString(this.d);
        parcel.writeString(this.f36073e);
        Date date = this.f36074f;
        parcel.writeLong(date != null ? date.getTime() : -1L);
        Date date2 = this.g;
        parcel.writeLong(date2 != null ? date2.getTime() : -1L);
        Date date3 = this.f36075h;
        parcel.writeLong(date3 != null ? date3.getTime() : -1L);
        parcel.writeString(this.f36076i);
        parcel.writeStringList(this.f36077j);
        parcel.writeString(this.f36078k);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeString(this.n);
        parcel.writeString(this.o);
        parcel.writeString(this.p);
        parcel.writeParcelable(this.q, i2);
        parcel.writeString(this.r);
        parcel.writeString(this.s);
        parcel.writeString(this.t);
        parcel.writeString(this.u);
        parcel.writeString(this.v);
    }

    public static class Address implements Parcelable {
        public static final Parcelable.Creator<Address> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f36079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f36080c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f36081e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f36082f;

        /* JADX INFO: renamed from: com.linecorp.linesdk.LineIdToken$Address$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<Address> {
            @Override // android.os.Parcelable.Creator
            public final Address createFromParcel(Parcel parcel) {
                return new Address(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Address[] newArray(int i2) {
                return new Address[i2];
            }
        }

        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public String f36083a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f36084b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f36085c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f36086e;
        }

        public Address(Parcel parcel) {
            this.f36079b = parcel.readString();
            this.f36080c = parcel.readString();
            this.d = parcel.readString();
            this.f36081e = parcel.readString();
            this.f36082f = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Address address = (Address) obj;
                String str = address.f36079b;
                String str2 = this.f36079b;
                if (str2 == null ? str != null : !str2.equals(str)) {
                    return false;
                }
                String str3 = address.f36080c;
                String str4 = this.f36080c;
                if (str4 == null ? str3 != null : !str4.equals(str3)) {
                    return false;
                }
                String str5 = address.d;
                String str6 = this.d;
                if (str6 == null ? str5 != null : !str6.equals(str5)) {
                    return false;
                }
                String str7 = address.f36081e;
                String str8 = this.f36081e;
                if (str8 == null ? str7 != null : !str8.equals(str7)) {
                    return false;
                }
                String str9 = address.f36082f;
                String str10 = this.f36082f;
                if (str10 != null) {
                    return str10.equals(str9);
                }
                if (str9 == null) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            String str = this.f36079b;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f36080c;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.d;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f36081e;
            int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.f36082f;
            return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Address{streetAddress='");
            sb.append(this.f36079b);
            sb.append("', locality='");
            sb.append(this.f36080c);
            sb.append("', region='");
            sb.append(this.d);
            sb.append("', postalCode='");
            sb.append(this.f36081e);
            sb.append("', country='");
            return n00.r(this.f36082f, "'}", sb);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f36079b);
            parcel.writeString(this.f36080c);
            parcel.writeString(this.d);
            parcel.writeString(this.f36081e);
            parcel.writeString(this.f36082f);
        }

        public Address(Builder builder) {
            this.f36079b = builder.f36083a;
            this.f36080c = builder.f36084b;
            this.d = builder.f36085c;
            this.f36081e = builder.d;
            this.f36082f = builder.f36086e;
        }
    }

    public LineIdToken(Builder builder) {
        this.f36071b = builder.f36087a;
        this.f36072c = builder.f36088b;
        this.d = builder.f36089c;
        this.f36073e = builder.d;
        this.f36074f = builder.f36090e;
        this.g = builder.f36091f;
        this.f36075h = builder.g;
        this.f36076i = builder.f36092h;
        this.f36077j = builder.f36093i;
        this.f36078k = builder.f36094j;
        this.l = builder.f36095k;
        this.m = builder.l;
        this.n = builder.m;
        this.o = builder.n;
        this.p = builder.o;
        this.q = builder.p;
        this.r = builder.q;
        this.s = builder.r;
        this.t = builder.s;
        this.u = builder.t;
        this.v = builder.u;
    }
}
