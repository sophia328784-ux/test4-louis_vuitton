package com.vuitton.android.data.database.entity.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b&\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 12\u00020\u0001:\u000221B§\u0003\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b)\u0010*B\u0093\u0003\b\u0010\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010-\u001a\u00020+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0002\u0012\b\u0010!\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010/\u001a\u0004\u0018\u00010.¢\u0006\u0004\b)\u00100¨\u00063"}, d2 = {"Lcom/vuitton/android/data/database/entity/address/AddressEntity;", "", "", "identifier", "", "isMain", "description", "civilityCode", "firstName", "lastName", "firstName2", "lastName2", "address1", "address2", "address3", "streetNumber", "street", "county", "city", "postalCode", "state", "displayStateName", "regionCodeIso31661Alpha2", "displayCountryName", "companyName", "phoneNumberInternational", "phoneNumber", "phoneNumberRegionCodeIso31661Alpha2", "phoneNumberType", "displayPhoneNumber", "otherPhoneNumberInternational", "otherPhoneNumber", "otherPhoneNumberRegionCodeIso31661Alpha2", "otherPhoneNumberType", "displayOtherPhoneNumber", "thirdPhoneNumberInternational", "thirdPhoneNumber", "thirdPhoneNumberRegionCodeIso31661Alpha2", "thirdPhoneNumberType", "displayThirdPhoneNumber", "latLong", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "seen1", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressEntity {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
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
    public final String f43576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f43577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43578c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f43579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f43580f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f43581h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f43582i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f43583j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f43584k;
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

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/database/entity/address/AddressEntity$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/database/entity/address/AddressEntity;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressEntity> serializer() {
            return AddressEntity$$serializer.f43585a;
        }
    }

    public /* synthetic */ AddressEntity(int i2, int i3, String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, SerializationConstructorMarker serializationConstructorMarker) {
        if (16777216 != (i2 & 16777216)) {
            PluginExceptionsKt.a(new int[]{i2, i3}, new int[]{16777216, 0}, AddressEntity$$serializer.f43585a.getF19838b());
            throw null;
        }
        this.f43576a = (i2 & 1) == 0 ? new String() : str;
        if ((i2 & 2) == 0) {
            this.f43577b = false;
        } else {
            this.f43577b = z;
        }
        if ((i2 & 4) == 0) {
            this.f43578c = null;
        } else {
            this.f43578c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = new String();
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f43579e = new String();
        } else {
            this.f43579e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f43580f = new String();
        } else {
            this.f43580f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        if ((i2 & 128) == 0) {
            this.f43581h = null;
        } else {
            this.f43581h = str7;
        }
        if ((i2 & 256) == 0) {
            this.f43582i = null;
        } else {
            this.f43582i = str8;
        }
        if ((i2 & 512) == 0) {
            this.f43583j = null;
        } else {
            this.f43583j = str9;
        }
        if ((i2 & 1024) == 0) {
            this.f43584k = null;
        } else {
            this.f43584k = str10;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str11;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str12;
        }
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str13;
        }
        this.o = (i2 & 16384) == 0 ? new String() : str14;
        if ((32768 & i2) == 0) {
            this.p = null;
        } else {
            this.p = str15;
        }
        if ((65536 & i2) == 0) {
            this.q = null;
        } else {
            this.q = str16;
        }
        if ((131072 & i2) == 0) {
            this.r = null;
        } else {
            this.r = str17;
        }
        this.s = (262144 & i2) == 0 ? new String() : str18;
        this.t = (524288 & i2) == 0 ? new String() : str19;
        if ((1048576 & i2) == 0) {
            this.u = null;
        } else {
            this.u = str20;
        }
        this.v = (2097152 & i2) == 0 ? new String() : str21;
        this.w = (4194304 & i2) == 0 ? new String() : str22;
        this.x = (8388608 & i2) == 0 ? new String() : str23;
        this.y = str24;
        this.z = (33554432 & i2) == 0 ? new String() : str25;
        if ((67108864 & i2) == 0) {
            this.A = null;
        } else {
            this.A = str26;
        }
        if ((134217728 & i2) == 0) {
            this.B = null;
        } else {
            this.B = str27;
        }
        if ((268435456 & i2) == 0) {
            this.C = null;
        } else {
            this.C = str28;
        }
        if ((536870912 & i2) == 0) {
            this.D = null;
        } else {
            this.D = str29;
        }
        if ((1073741824 & i2) == 0) {
            this.E = null;
        } else {
            this.E = str30;
        }
        if ((i2 & Integer.MIN_VALUE) == 0) {
            this.F = null;
        } else {
            this.F = str31;
        }
        if ((i3 & 1) == 0) {
            this.G = null;
        } else {
            this.G = str32;
        }
        if ((i3 & 2) == 0) {
            this.H = null;
        } else {
            this.H = str33;
        }
        if ((i3 & 4) == 0) {
            this.I = null;
        } else {
            this.I = str34;
        }
        if ((i3 & 8) == 0) {
            this.J = null;
        } else {
            this.J = str35;
        }
        if ((i3 & 16) == 0) {
            this.K = null;
        } else {
            this.K = str36;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressEntity)) {
            return false;
        }
        AddressEntity addressEntity = (AddressEntity) obj;
        return Intrinsics.c(this.f43576a, addressEntity.f43576a) && this.f43577b == addressEntity.f43577b && Intrinsics.c(this.f43578c, addressEntity.f43578c) && Intrinsics.c(this.d, addressEntity.d) && Intrinsics.c(this.f43579e, addressEntity.f43579e) && Intrinsics.c(this.f43580f, addressEntity.f43580f) && Intrinsics.c(this.g, addressEntity.g) && Intrinsics.c(this.f43581h, addressEntity.f43581h) && Intrinsics.c(this.f43582i, addressEntity.f43582i) && Intrinsics.c(this.f43583j, addressEntity.f43583j) && Intrinsics.c(this.f43584k, addressEntity.f43584k) && Intrinsics.c(this.l, addressEntity.l) && Intrinsics.c(this.m, addressEntity.m) && Intrinsics.c(this.n, addressEntity.n) && Intrinsics.c(this.o, addressEntity.o) && Intrinsics.c(this.p, addressEntity.p) && Intrinsics.c(this.q, addressEntity.q) && Intrinsics.c(this.r, addressEntity.r) && Intrinsics.c(this.s, addressEntity.s) && Intrinsics.c(this.t, addressEntity.t) && Intrinsics.c(this.u, addressEntity.u) && Intrinsics.c(this.v, addressEntity.v) && Intrinsics.c(this.w, addressEntity.w) && Intrinsics.c(this.x, addressEntity.x) && Intrinsics.c(this.y, addressEntity.y) && Intrinsics.c(this.z, addressEntity.z) && Intrinsics.c(this.A, addressEntity.A) && Intrinsics.c(this.B, addressEntity.B) && Intrinsics.c(this.C, addressEntity.C) && Intrinsics.c(this.D, addressEntity.D) && Intrinsics.c(this.E, addressEntity.E) && Intrinsics.c(this.F, addressEntity.F) && Intrinsics.c(this.G, addressEntity.G) && Intrinsics.c(this.H, addressEntity.H) && Intrinsics.c(this.I, addressEntity.I) && Intrinsics.c(this.J, addressEntity.J) && Intrinsics.c(this.K, addressEntity.K);
    }

    public final int hashCode() {
        int iB = o60.b(this.f43576a.hashCode() * 31, 31, this.f43577b);
        String str = this.f43578c;
        int iB2 = fc.b(fc.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d), 31, this.f43579e), 31, this.f43580f);
        String str2 = this.g;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f43581h;
        int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f43582i;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f43583j;
        int iHashCode4 = (iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f43584k;
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
        StringBuilder sbS = d21.s("AddressEntity(identifier=", this.f43576a, ", isMain=", ", description=", this.f43577b);
        cj.C(sbS, this.f43578c, ", civilityCode=", this.d, ", firstName=");
        cj.C(sbS, this.f43579e, ", lastName=", this.f43580f, ", firstName2=");
        cj.C(sbS, this.g, ", lastName2=", this.f43581h, ", address1=");
        cj.C(sbS, this.f43582i, ", address2=", this.f43583j, ", address3=");
        cj.C(sbS, this.f43584k, ", streetNumber=", this.l, ", street=");
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

    public AddressEntity(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36) {
        pq0.z(str, str3, str4, str5, str14);
        pq0.z(str18, str19, str21, str22, str23);
        str24.getClass();
        str25.getClass();
        this.f43576a = str;
        this.f43577b = z;
        this.f43578c = str2;
        this.d = str3;
        this.f43579e = str4;
        this.f43580f = str5;
        this.g = str6;
        this.f43581h = str7;
        this.f43582i = str8;
        this.f43583j = str9;
        this.f43584k = str10;
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

    public /* synthetic */ AddressEntity(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, String str26, String str27, String str28, String str29, String str30, String str31, String str32, String str33, String str34, String str35, String str36, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? new String() : str3, (i2 & 16) != 0 ? new String() : str4, (i2 & 32) != 0 ? new String() : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : str13, (i2 & 16384) != 0 ? new String() : str14, (32768 & i2) != 0 ? null : str15, (65536 & i2) != 0 ? null : str16, (131072 & i2) != 0 ? null : str17, (262144 & i2) != 0 ? new String() : str18, (524288 & i2) != 0 ? new String() : str19, (1048576 & i2) != 0 ? null : str20, (2097152 & i2) != 0 ? new String() : str21, (4194304 & i2) != 0 ? new String() : str22, (8388608 & i2) != 0 ? new String() : str23, str24, (33554432 & i2) != 0 ? new String() : str25, (67108864 & i2) != 0 ? null : str26, (134217728 & i2) != 0 ? null : str27, (268435456 & i2) != 0 ? null : str28, (536870912 & i2) != 0 ? null : str29, (1073741824 & i2) != 0 ? null : str30, (i2 & Integer.MIN_VALUE) != 0 ? null : str31, (i3 & 1) != 0 ? null : str32, (i3 & 2) != 0 ? null : str33, (i3 & 4) != 0 ? null : str34, (i3 & 8) != 0 ? null : str35, (i3 & 16) != 0 ? null : str36);
    }
}
