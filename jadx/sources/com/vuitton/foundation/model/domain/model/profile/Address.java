package com.vuitton.foundation.model.domain.model.profile;

import com.vuitton.foundation.model.domain.model.account.address.AddressId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b&\b\u0086\b\u0018\u00002\u00020\u0001B¥\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/profile/Address;", "", "Lcom/vuitton/foundation/model/domain/model/account/address/AddressId;", "addressId", "", "isMain", "", "description", "civilityCode", "firstName", "lastName", "firstName2", "lastName2", "address1", "address2", "address3", "streetNumber", "street", "county", "city", "postalCode", "state", "displayStateName", "regionCodeIso31661Alpha2", "displayCountryName", "companyName", "phoneNumberInternational", "phoneNumber", "phoneNumberRegionCodeIso31661Alpha2", "phoneNumberType", "displayPhoneNumber", "otherPhoneNumberInternational", "otherPhoneNumber", "otherPhoneNumberRegionCodeIso31661Alpha2", "otherPhoneNumberType", "displayOtherPhoneNumber", "thirdPhoneNumberInternational", "thirdPhoneNumber", "thirdPhoneNumberRegionCodeIso31661Alpha2", "thirdPhoneNumberType", "displayThirdPhoneNumber", "latLong", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Address {
    public final String A;
    public final String B;
    public final String C;
    public final String D;
    public final String E;
    public final String F;
    public final String G;
    public final String H;
    public final String I;
    public final String J;
    public final String K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f68152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68153c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f68154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f68155f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f68156h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f68157i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f68158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f68159k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;

    public /* synthetic */ Address(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? "" : str3, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : str13, (i2 & 16384) != 0 ? "" : str14, (32768 & i2) != 0 ? null : str15, (65536 & i2) != 0 ? null : str16, (131072 & i2) != 0 ? null : str17, (262144 & i2) != 0 ? "" : str18, (524288 & i2) != 0 ? "" : str19, (1048576 & i2) != 0 ? null : str20, (2097152 & i2) != 0 ? "" : str21, (4194304 & i2) != 0 ? "" : str22, (8388608 & i2) != 0 ? "" : str23, str24, (33554432 & i2) != 0 ? "" : str25, (67108864 & i2) != 0 ? null : str26, (134217728 & i2) != 0 ? null : str27, (268435456 & i2) != 0 ? null : str28, (536870912 & i2) != 0 ? null : str29, (1073741824 & i2) != 0 ? null : str30, (i2 & Integer.MIN_VALUE) != 0 ? null : str31, (i3 & 1) != 0 ? null : str32, (i3 & 2) != 0 ? null : str33, (i3 & 4) != 0 ? null : str34, (i3 & 8) != 0 ? null : str35, (i3 & 16) != 0 ? null : str36, null);
    }

    public final boolean a() {
        String str;
        String str2;
        String str3 = this.B;
        return (str3 == null || StringsKt.w(str3) || (str = this.C) == null || StringsKt.w(str) || (str2 = this.D) == null || StringsKt.w(str2)) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Address)) {
            return false;
        }
        Address address = (Address) obj;
        return Intrinsics.c(this.f68151a, address.f68151a) && this.f68152b == address.f68152b && Intrinsics.c(this.f68153c, address.f68153c) && Intrinsics.c(this.d, address.d) && Intrinsics.c(this.f68154e, address.f68154e) && Intrinsics.c(this.f68155f, address.f68155f) && Intrinsics.c(this.g, address.g) && Intrinsics.c(this.f68156h, address.f68156h) && Intrinsics.c(this.f68157i, address.f68157i) && Intrinsics.c(this.f68158j, address.f68158j) && Intrinsics.c(this.f68159k, address.f68159k) && Intrinsics.c(this.l, address.l) && Intrinsics.c(this.m, address.m) && Intrinsics.c(this.n, address.n) && Intrinsics.c(this.o, address.o) && Intrinsics.c(this.p, address.p) && Intrinsics.c(this.q, address.q) && Intrinsics.c(this.r, address.r) && Intrinsics.c(this.s, address.s) && Intrinsics.c(this.t, address.t) && Intrinsics.c(this.u, address.u) && Intrinsics.c(this.v, address.v) && Intrinsics.c(this.w, address.w) && Intrinsics.c(this.x, address.x) && Intrinsics.c(this.y, address.y) && Intrinsics.c(this.z, address.z) && Intrinsics.c(this.A, address.A) && Intrinsics.c(this.B, address.B) && Intrinsics.c(this.C, address.C) && Intrinsics.c(this.D, address.D) && Intrinsics.c(this.E, address.E) && Intrinsics.c(this.F, address.F) && Intrinsics.c(this.G, address.G) && Intrinsics.c(this.H, address.H) && Intrinsics.c(this.I, address.I) && Intrinsics.c(this.J, address.J) && Intrinsics.c(this.K, address.K);
    }

    public final int hashCode() {
        int iB = o60.b(this.f68151a.hashCode() * 31, 31, this.f68152b);
        String str = this.f68153c;
        int iB2 = fc.b(fc.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31, this.f68154e), 31, this.f68155f);
        String str2 = this.g;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f68156h;
        int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f68157i;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f68158j;
        int iHashCode4 = (iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f68159k;
        int iHashCode5 = (iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.l;
        int iHashCode6 = (iHashCode5 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.m;
        int iHashCode7 = (iHashCode6 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.n;
        int iB3 = fc.b((iHashCode7 + (str9 == null ? 0 : str9.hashCode())) * 31, 31, this.o);
        String str10 = this.p;
        int iHashCode8 = (iB3 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.q;
        int iHashCode9 = (iHashCode8 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.r;
        int iB4 = fc.b(fc.b((iHashCode9 + (str12 == null ? 0 : str12.hashCode())) * 31, 31, this.s), 31, this.t);
        String str13 = this.u;
        int iB5 = fc.b(fc.b(fc.b(fc.b(fc.b((iB4 + (str13 == null ? 0 : str13.hashCode())) * 31, 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z);
        String str14 = this.A;
        int iHashCode10 = (iB5 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.B;
        int iHashCode11 = (iHashCode10 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.C;
        int iHashCode12 = (iHashCode11 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.D;
        int iHashCode13 = (iHashCode12 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.E;
        int iHashCode14 = (iHashCode13 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.F;
        int iHashCode15 = (iHashCode14 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.G;
        int iHashCode16 = (iHashCode15 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.H;
        int iHashCode17 = (iHashCode16 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.I;
        int iHashCode18 = (iHashCode17 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.J;
        int iHashCode19 = (iHashCode18 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.K;
        return iHashCode19 + (str24 != null ? str24.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = d21.s("Address(addressId=", AddressId.a(this.f68151a), ", isMain=", ", description=", this.f68152b);
        cj.C(sbS, this.f68153c, ", civilityCode=", this.d, ", firstName=");
        cj.C(sbS, this.f68154e, ", lastName=", this.f68155f, ", firstName2=");
        cj.C(sbS, this.g, ", lastName2=", this.f68156h, ", address1=");
        cj.C(sbS, this.f68157i, ", address2=", this.f68158j, ", address3=");
        cj.C(sbS, this.f68159k, ", streetNumber=", this.l, ", street=");
        cj.C(sbS, this.m, ", county=", this.n, ", city=");
        cj.C(sbS, this.o, ", postalCode=", this.p, ", state=");
        cj.C(sbS, this.q, ", displayStateName=", this.r, ", regionCodeIso31661Alpha2=");
        cj.C(sbS, this.s, ", displayCountryName=", this.t, ", companyName=");
        cj.C(sbS, this.u, ", phoneNumberInternational=", this.v, ", phoneNumber=");
        cj.C(sbS, this.w, ", phoneNumberRegionCodeIso31661Alpha2=", this.x, ", phoneNumberType=");
        cj.C(sbS, this.y, ", displayPhoneNumber=", this.z, ", otherPhoneNumberInternational=");
        cj.C(sbS, this.A, ", otherPhoneNumber=", this.B, ", otherPhoneNumberRegionCodeIso31661Alpha2=");
        cj.C(sbS, this.C, ", otherPhoneNumberType=", this.D, ", displayOtherPhoneNumber=");
        cj.C(sbS, this.E, ", thirdPhoneNumberInternational=", this.F, ", thirdPhoneNumber=");
        cj.C(sbS, this.G, ", thirdPhoneNumberRegionCodeIso31661Alpha2=", this.H, ", thirdPhoneNumberType=");
        cj.C(sbS, this.I, ", displayThirdPhoneNumber=", this.J, ", latLong=");
        return n00.r(this.K, ")", sbS);
    }

    public Address(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str3, str4, str5, str14);
        pq0.z(str18, str19, str21, str22, str23);
        str24.getClass();
        str25.getClass();
        this.f68151a = str;
        this.f68152b = z;
        this.f68153c = str2;
        this.d = str3;
        this.f68154e = str4;
        this.f68155f = str5;
        this.g = str6;
        this.f68156h = str7;
        this.f68157i = str8;
        this.f68158j = str9;
        this.f68159k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = str14;
        this.p = str15;
        this.q = str16;
        this.r = str17;
        this.s = str18;
        this.t = str19;
        this.u = str20;
        this.v = str21;
        this.w = str22;
        this.x = str23;
        this.y = str24;
        this.z = str25;
        this.A = str26;
        this.B = str27;
        this.C = str28;
        this.D = str29;
        this.E = str30;
        this.F = str31;
        this.G = str32;
        this.H = str33;
        this.I = str34;
        this.J = str35;
        this.K = str36;
    }
}
