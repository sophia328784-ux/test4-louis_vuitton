package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017B\u0093\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011B\u009d\u0001\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;", "", "", "identifier", "description", "addressLine1", "addressLine2", "addressLine3", "postalCode", "stateName", "stateCode", "cityName", "countryName", "countryCode", "firstName", "lastName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CareServiceAddressDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44861c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44862e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44863f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44866j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44867k;
    public final String l;
    public final String m;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CareServiceAddressDto> serializer() {
            return CareServiceAddressDto$$serializer.f44868a;
        }
    }

    public /* synthetic */ CareServiceAddressDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, SerializationConstructorMarker serializationConstructorMarker) {
        if (1316 != (i2 & 1316)) {
            PluginExceptionsKt.b(i2, 1316, CareServiceAddressDto$$serializer.f44868a.a());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f44859a = null;
        } else {
            this.f44859a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44860b = null;
        } else {
            this.f44860b = str2;
        }
        this.f44861c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44862e = null;
        } else {
            this.f44862e = str5;
        }
        this.f44863f = str6;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f44864h = null;
        } else {
            this.f44864h = str8;
        }
        this.f44865i = str9;
        if ((i2 & 512) == 0) {
            this.f44866j = null;
        } else {
            this.f44866j = str10;
        }
        this.f44867k = str11;
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = str12;
        }
        if ((i2 & 4096) == 0) {
            this.m = null;
        } else {
            this.m = str13;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceAddressDto)) {
            return false;
        }
        CareServiceAddressDto careServiceAddressDto = (CareServiceAddressDto) obj;
        return Intrinsics.c(this.f44859a, careServiceAddressDto.f44859a) && Intrinsics.c(this.f44860b, careServiceAddressDto.f44860b) && Intrinsics.c(this.f44861c, careServiceAddressDto.f44861c) && Intrinsics.c(this.d, careServiceAddressDto.d) && Intrinsics.c(this.f44862e, careServiceAddressDto.f44862e) && Intrinsics.c(this.f44863f, careServiceAddressDto.f44863f) && Intrinsics.c(this.g, careServiceAddressDto.g) && Intrinsics.c(this.f44864h, careServiceAddressDto.f44864h) && Intrinsics.c(this.f44865i, careServiceAddressDto.f44865i) && Intrinsics.c(this.f44866j, careServiceAddressDto.f44866j) && Intrinsics.c(this.f44867k, careServiceAddressDto.f44867k) && Intrinsics.c(this.l, careServiceAddressDto.l) && Intrinsics.c(this.m, careServiceAddressDto.m);
    }

    public final int hashCode() {
        String str = this.f44859a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44860b;
        int iB = fc.b((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f44861c);
        String str3 = this.d;
        int iHashCode2 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f44862e;
        int iB2 = fc.b((iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f44863f);
        String str5 = this.g;
        int iHashCode3 = (iB2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f44864h;
        int iB3 = fc.b((iHashCode3 + (str6 == null ? 0 : str6.hashCode())) * 31, 31, this.f44865i);
        String str7 = this.f44866j;
        int iB4 = fc.b((iB3 + (str7 == null ? 0 : str7.hashCode())) * 31, 31, this.f44867k);
        String str8 = this.l;
        int iHashCode4 = (iB4 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.m;
        return iHashCode4 + (str9 != null ? str9.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceAddressDto(identifier=", this.f44859a, ", description=", this.f44860b, ", addressLine1=");
        cj.C(sbS, this.f44861c, ", addressLine2=", this.d, ", addressLine3=");
        cj.C(sbS, this.f44862e, ", postalCode=", this.f44863f, ", stateName=");
        cj.C(sbS, this.g, ", stateCode=", this.f44864h, ", cityName=");
        cj.C(sbS, this.f44865i, ", countryName=", this.f44866j, ", countryCode=");
        cj.C(sbS, this.f44867k, ", firstName=", this.l, ", lastName=");
        return n00.r(this.m, ")", sbS);
    }

    public CareServiceAddressDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        d21.y(str3, str6, str9, str11);
        this.f44859a = str;
        this.f44860b = str2;
        this.f44861c = str3;
        this.d = str4;
        this.f44862e = str5;
        this.f44863f = str6;
        this.g = str7;
        this.f44864h = str8;
        this.f44865i = str9;
        this.f44866j = str10;
        this.f44867k = str11;
        this.l = str12;
        this.m = str13;
    }

    public /* synthetic */ CareServiceAddressDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, str9, (i2 & 512) != 0 ? null : str10, str11, (i2 & 2048) != 0 ? null : str12, (i2 & 4096) != 0 ? null : str13);
    }
}
