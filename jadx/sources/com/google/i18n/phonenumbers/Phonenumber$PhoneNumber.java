package com.google.i18n.phonenumbers;

import defpackage.fc;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class Phonenumber$PhoneNumber implements Serializable {
    private static final long serialVersionUID = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f35644b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f35646e;
    public boolean g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f35649i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f35645c = 0;
    public long d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f35647f = "";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f35648h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f35650j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f35651k = "";
    public final String m = "";
    public final CountryCodeSource l = CountryCodeSource.UNSPECIFIED;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class CountryCodeSource {
        private static final /* synthetic */ CountryCodeSource[] $VALUES;
        public static final CountryCodeSource FROM_DEFAULT_COUNTRY;
        public static final CountryCodeSource FROM_NUMBER_WITHOUT_PLUS_SIGN;
        public static final CountryCodeSource FROM_NUMBER_WITH_IDD;
        public static final CountryCodeSource FROM_NUMBER_WITH_PLUS_SIGN;
        public static final CountryCodeSource UNSPECIFIED;

        static {
            CountryCodeSource countryCodeSource = new CountryCodeSource("FROM_NUMBER_WITH_PLUS_SIGN", 0);
            FROM_NUMBER_WITH_PLUS_SIGN = countryCodeSource;
            CountryCodeSource countryCodeSource2 = new CountryCodeSource("FROM_NUMBER_WITH_IDD", 1);
            FROM_NUMBER_WITH_IDD = countryCodeSource2;
            CountryCodeSource countryCodeSource3 = new CountryCodeSource("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
            FROM_NUMBER_WITHOUT_PLUS_SIGN = countryCodeSource3;
            CountryCodeSource countryCodeSource4 = new CountryCodeSource("FROM_DEFAULT_COUNTRY", 3);
            FROM_DEFAULT_COUNTRY = countryCodeSource4;
            CountryCodeSource countryCodeSource5 = new CountryCodeSource("UNSPECIFIED", 4);
            UNSPECIFIED = countryCodeSource5;
            $VALUES = new CountryCodeSource[]{countryCodeSource, countryCodeSource2, countryCodeSource3, countryCodeSource4, countryCodeSource5};
        }

        public static CountryCodeSource valueOf(String str) {
            return (CountryCodeSource) Enum.valueOf(CountryCodeSource.class, str);
        }

        public static CountryCodeSource[] values() {
            return (CountryCodeSource[]) $VALUES.clone();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Phonenumber$PhoneNumber)) {
            return false;
        }
        Phonenumber$PhoneNumber phonenumber$PhoneNumber = (Phonenumber$PhoneNumber) obj;
        if (this == phonenumber$PhoneNumber) {
            return true;
        }
        return this.f35645c == phonenumber$PhoneNumber.f35645c && this.d == phonenumber$PhoneNumber.d && this.f35647f.equals(phonenumber$PhoneNumber.f35647f) && this.f35648h == phonenumber$PhoneNumber.f35648h && this.f35650j == phonenumber$PhoneNumber.f35650j && this.f35651k.equals(phonenumber$PhoneNumber.f35651k) && this.l == phonenumber$PhoneNumber.l && this.m.equals(phonenumber$PhoneNumber.m);
    }

    public final int hashCode() {
        return ((this.m.hashCode() + ((this.l.hashCode() + fc.b((((fc.b((Long.valueOf(this.d).hashCode() + ((2173 + this.f35645c) * 53)) * 53, 53, this.f35647f) + (this.f35648h ? 1231 : 1237)) * 53) + this.f35650j) * 53, 53, this.f35651k)) * 53)) * 53) + 1237;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Country Code: ");
        sb.append(this.f35645c);
        sb.append(" National Number: ");
        sb.append(this.d);
        if (this.g && this.f35648h) {
            sb.append(" Leading Zero(s): true");
        }
        if (this.f35649i) {
            sb.append(" Number of leading zeros: ");
            sb.append(this.f35650j);
        }
        if (this.f35646e) {
            sb.append(" Extension: ");
            sb.append(this.f35647f);
        }
        return sb.toString();
    }
}
