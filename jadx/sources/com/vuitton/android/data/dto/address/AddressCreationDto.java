package com.vuitton.android.data.dto.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import defpackage.cj;
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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 !2\u00020\u0001:\u0002\"!Bù\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017¢\u0006\u0004\b\u001a\u0010\u001bBç\u0001\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e¢\u0006\u0004\b\u001a\u0010 ¨\u0006#"}, d2 = {"Lcom/vuitton/android/data/dto/address/AddressCreationDto;", "", "", "mainAddress", "", "addressLine1", "addressLine2", "addressLine3", "postalCode", "description", "companyName", "streetNumber", "street", "stateName", "stateCode", "cityName", "countyName", "regionCodeIso31661Alpha2", "firstName", "lastName", "firstName2", "lastName2", "civilityCode", "", "Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;", "phoneNumbers", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AddressCreationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] u = {null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(25))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f44444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44446c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44448f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44452k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final List t;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/address/AddressCreationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/address/AddressCreationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AddressCreationDto> serializer() {
            return AddressCreationDto$$serializer.f44453a;
        }
    }

    public /* synthetic */ AddressCreationDto(int i2, boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, AddressCreationDto$$serializer.f44453a.getF19850b());
            throw null;
        }
        this.f44444a = z;
        if ((i2 & 2) == 0) {
            this.f44445b = null;
        } else {
            this.f44445b = str;
        }
        if ((i2 & 4) == 0) {
            this.f44446c = null;
        } else {
            this.f44446c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f44447e = null;
        } else {
            this.f44447e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f44448f = null;
        } else {
            this.f44448f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str6;
        }
        if ((i2 & 128) == 0) {
            this.f44449h = null;
        } else {
            this.f44449h = str7;
        }
        if ((i2 & 256) == 0) {
            this.f44450i = null;
        } else {
            this.f44450i = str8;
        }
        if ((i2 & 512) == 0) {
            this.f44451j = null;
        } else {
            this.f44451j = str9;
        }
        if ((i2 & 1024) == 0) {
            this.f44452k = null;
        } else {
            this.f44452k = str10;
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
        if ((i2 & 524288) == 0) {
            this.t = null;
        } else {
            this.t = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddressCreationDto)) {
            return false;
        }
        AddressCreationDto addressCreationDto = (AddressCreationDto) obj;
        return this.f44444a == addressCreationDto.f44444a && Intrinsics.c(this.f44445b, addressCreationDto.f44445b) && Intrinsics.c(this.f44446c, addressCreationDto.f44446c) && Intrinsics.c(this.d, addressCreationDto.d) && Intrinsics.c(this.f44447e, addressCreationDto.f44447e) && Intrinsics.c(this.f44448f, addressCreationDto.f44448f) && Intrinsics.c(this.g, addressCreationDto.g) && Intrinsics.c(this.f44449h, addressCreationDto.f44449h) && Intrinsics.c(this.f44450i, addressCreationDto.f44450i) && Intrinsics.c(this.f44451j, addressCreationDto.f44451j) && Intrinsics.c(this.f44452k, addressCreationDto.f44452k) && Intrinsics.c(this.l, addressCreationDto.l) && Intrinsics.c(this.m, addressCreationDto.m) && Intrinsics.c(this.n, addressCreationDto.n) && Intrinsics.c(this.o, addressCreationDto.o) && Intrinsics.c(this.p, addressCreationDto.p) && Intrinsics.c(this.q, addressCreationDto.q) && Intrinsics.c(this.r, addressCreationDto.r) && Intrinsics.c(this.s, addressCreationDto.s) && Intrinsics.c(this.t, addressCreationDto.t);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.f44444a) * 31;
        String str = this.f44445b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44446c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44447e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f44448f;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.g;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f44449h;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f44450i;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.f44451j;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.f44452k;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.l;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.m;
        int iHashCode13 = (iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.n;
        int iHashCode14 = (iHashCode13 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.o;
        int iHashCode15 = (iHashCode14 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.p;
        int iHashCode16 = (iHashCode15 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.q;
        int iHashCode17 = (iHashCode16 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.r;
        int iHashCode18 = (iHashCode17 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.s;
        int iHashCode19 = (iHashCode18 + (str18 == null ? 0 : str18.hashCode())) * 31;
        List list = this.t;
        return iHashCode19 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AddressCreationDto(mainAddress=");
        sb.append(this.f44444a);
        sb.append(", addressLine1=");
        sb.append(this.f44445b);
        sb.append(", addressLine2=");
        cj.C(sb, this.f44446c, ", addressLine3=", this.d, ", postalCode=");
        cj.C(sb, this.f44447e, ", description=", this.f44448f, ", companyName=");
        cj.C(sb, this.g, ", streetNumber=", this.f44449h, ", street=");
        cj.C(sb, this.f44450i, ", stateName=", this.f44451j, ", stateCode=");
        cj.C(sb, this.f44452k, ", cityName=", this.l, ", countyName=");
        cj.C(sb, this.m, ", regionCodeIso31661Alpha2=", this.n, ", firstName=");
        cj.C(sb, this.o, ", lastName=", this.p, ", firstName2=");
        cj.C(sb, this.q, ", lastName2=", this.r, ", civilityCode=");
        return o60.o(this.s, ", phoneNumbers=", ")", sb, this.t);
    }

    public AddressCreationDto(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, List<PhoneNumberDto> list) {
        this.f44444a = z;
        this.f44445b = str;
        this.f44446c = str2;
        this.d = str3;
        this.f44447e = str4;
        this.f44448f = str5;
        this.g = str6;
        this.f44449h = str7;
        this.f44450i = str8;
        this.f44451j = str9;
        this.f44452k = str10;
        this.l = str11;
        this.m = str12;
        this.n = str13;
        this.o = str14;
        this.p = str15;
        this.q = str16;
        this.r = str17;
        this.s = str18;
        this.t = list;
    }

    public /* synthetic */ AddressCreationDto(boolean z, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : str6, (i2 & 128) != 0 ? null : str7, (i2 & 256) != 0 ? null : str8, (i2 & 512) != 0 ? null : str9, (i2 & 1024) != 0 ? null : str10, (i2 & 2048) != 0 ? null : str11, (i2 & 4096) != 0 ? null : str12, (i2 & 8192) != 0 ? null : str13, (i2 & 16384) != 0 ? null : str14, (i2 & 32768) != 0 ? null : str15, (i2 & 65536) != 0 ? null : str16, (i2 & 131072) != 0 ? null : str17, (i2 & 262144) != 0 ? null : str18, (i2 & 524288) != 0 ? null : list);
    }
}
