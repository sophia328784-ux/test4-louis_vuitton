package com.vuitton.android.data.dto.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.cj;
import defpackage.d21;
import defpackage.n00;
import defpackage.o60;
import defpackage.v;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 $2\u00020\u0001:\u0002%$B\u009f\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001d\u0010\u001eB\u0085\u0002\b\u0010\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\u001d\u0010#¨\u0006&"}, d2 = {"Lcom/vuitton/android/data/dto/address/AddressDto;", "", "", "identifier", "", "isMain", "addressLine1", "addressLine2", "addressLine3", "postalCode", "description", "companyName", "streetNumber", "street", "stateName", "stateCode", "cityName", "countyName", "regionCodeIso31661Alpha2", "countryName", "firstName", "lastName", "firstName2", "lastName2", "civilityCode", "", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phoneNumbers", "latLong", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] x = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(26)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f44461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44462c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44463e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44464f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44468k;
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
    public final List v;
    public final String w;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/address/AddressDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/address/AddressDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressDto> serializer() {
            return AddressDto$$serializer.f44469a;
        }
    }

    public /* synthetic */ AddressDto(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, List list, String str21, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : str13, (i2 & 16384) != 0 ? null : str14, (i2 & 32768) != 0 ? null : str15, (i2 & 65536) != 0 ? null : str16, (i2 & 131072) != 0 ? null : str17, (i2 & 262144) != 0 ? null : str18, (i2 & 524288) != 0 ? null : str19, (i2 & 1048576) != 0 ? null : str20, (i2 & PKIFailureInfo.badSenderNonce) != 0 ? null : list, (i2 & 4194304) != 0 ? null : str21);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressDto)) {
            return false;
        }
        AddressDto addressDto = (AddressDto) obj;
        return Intrinsics.c(this.f44460a, addressDto.f44460a) && this.f44461b == addressDto.f44461b && Intrinsics.c(this.f44462c, addressDto.f44462c) && Intrinsics.c(this.d, addressDto.d) && Intrinsics.c(this.f44463e, addressDto.f44463e) && Intrinsics.c(this.f44464f, addressDto.f44464f) && Intrinsics.c(this.g, addressDto.g) && Intrinsics.c(this.f44465h, addressDto.f44465h) && Intrinsics.c(this.f44466i, addressDto.f44466i) && Intrinsics.c(this.f44467j, addressDto.f44467j) && Intrinsics.c(this.f44468k, addressDto.f44468k) && Intrinsics.c(this.l, addressDto.l) && Intrinsics.c(this.m, addressDto.m) && Intrinsics.c(this.n, addressDto.n) && Intrinsics.c(this.o, addressDto.o) && Intrinsics.c(this.p, addressDto.p) && Intrinsics.c(this.q, addressDto.q) && Intrinsics.c(this.r, addressDto.r) && Intrinsics.c(this.s, addressDto.s) && Intrinsics.c(this.t, addressDto.t) && Intrinsics.c(this.u, addressDto.u) && Intrinsics.c(this.v, addressDto.v) && Intrinsics.c(this.w, addressDto.w);
    }

    public final int hashCode() {
        String str = this.f44460a;
        int iB = o60.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f44461b);
        String str2 = this.f44462c;
        int iHashCode = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44463e;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f44464f;
        int iHashCode4 = (iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iHashCode5 = (iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f44465h;
        int iHashCode6 = (iHashCode5 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44466i;
        int iHashCode7 = (iHashCode6 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f44467j;
        int iHashCode8 = (iHashCode7 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f44468k;
        int iHashCode9 = (iHashCode8 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.l;
        int iHashCode10 = (iHashCode9 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.m;
        int iHashCode11 = (iHashCode10 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.n;
        int iHashCode12 = (iHashCode11 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.o;
        int iHashCode13 = (iHashCode12 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.p;
        int iHashCode14 = (iHashCode13 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.q;
        int iHashCode15 = (iHashCode14 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.r;
        int iHashCode16 = (iHashCode15 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.s;
        int iHashCode17 = (iHashCode16 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.t;
        int iHashCode18 = (iHashCode17 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.u;
        int iHashCode19 = (iHashCode18 + (str20 == null ? 0 : str20.hashCode())) * 31;
        List list = this.v;
        int iHashCode20 = (iHashCode19 + (list == null ? 0 : list.hashCode())) * 31;
        String str21 = this.w;
        return iHashCode20 + (str21 != null ? str21.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = d21.s("AddressDto(identifier=", this.f44460a, ", isMain=", ", addressLine1=", this.f44461b);
        cj.C(sbS, this.f44462c, ", addressLine2=", this.d, ", addressLine3=");
        cj.C(sbS, this.f44463e, ", postalCode=", this.f44464f, ", description=");
        cj.C(sbS, this.g, ", companyName=", this.f44465h, ", streetNumber=");
        cj.C(sbS, this.f44466i, ", street=", this.f44467j, ", stateName=");
        cj.C(sbS, this.f44468k, ", stateCode=", this.l, ", cityName=");
        cj.C(sbS, this.m, ", countyName=", this.n, ", regionCodeIso31661Alpha2=");
        cj.C(sbS, this.o, ", countryName=", this.p, ", firstName=");
        cj.C(sbS, this.q, ", lastName=", this.r, ", firstName2=");
        cj.C(sbS, this.s, ", lastName2=", this.t, ", civilityCode=");
        d21.z(this.u, ", phoneNumbers=", ", latLong=", sbS, this.v);
        return n00.r(this.w, ")", sbS);
    }

    public /* synthetic */ AddressDto(int i2, String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, List list, String str21, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44460a = null;
        } else {
            this.f44460a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44461b = false;
        } else {
            this.f44461b = z;
        }
        if ((i2 & 4) == 0) {
            this.f44462c = null;
        } else {
            this.f44462c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f44463e = null;
        } else {
            this.f44463e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f44464f = null;
        } else {
            this.f44464f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        if ((i2 & 128) == 0) {
            this.f44465h = null;
        } else {
            this.f44465h = str7;
        }
        if ((i2 & 256) == 0) {
            this.f44466i = null;
        } else {
            this.f44466i = str8;
        }
        if ((i2 & 512) == 0) {
            this.f44467j = null;
        } else {
            this.f44467j = str9;
        }
        if ((i2 & 1024) == 0) {
            this.f44468k = null;
        } else {
            this.f44468k = str10;
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
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = str14;
        }
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
        if ((262144 & i2) == 0) {
            this.s = null;
        } else {
            this.s = str18;
        }
        if ((524288 & i2) == 0) {
            this.t = null;
        } else {
            this.t = str19;
        }
        if ((1048576 & i2) == 0) {
            this.u = null;
        } else {
            this.u = str20;
        }
        if ((2097152 & i2) == 0) {
            this.v = null;
        } else {
            this.v = list;
        }
        if ((i2 & 4194304) == 0) {
            this.w = null;
        } else {
            this.w = str21;
        }
    }

    public AddressDto(String str, boolean z, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, List<PhoneNumberDto> list, String str21) {
        this.f44460a = str;
        this.f44461b = z;
        this.f44462c = str2;
        this.d = str3;
        this.f44463e = str4;
        this.f44464f = str5;
        this.g = str6;
        this.f44465h = str7;
        this.f44466i = str8;
        this.f44467j = str9;
        this.f44468k = str10;
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
        this.v = list;
        this.w = str21;
    }

    public AddressDto() {
        this((String) null, false, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (List) null, (String) null, 8388607, (DefaultConstructorMarker) null);
    }
}
