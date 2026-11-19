package com.vuitton.android.data.dto.authentication.oauth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bBa\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;", "", "", "accessTokenSFID", "refreshTokenSFID", "accessTokenSLAS", "userIdSLAS", "userIdSFID", "sotToken", "accessTokenExpiration", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ApiTokenDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44554c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44556f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ApiTokenDto> serializer() {
            return ApiTokenDto$$serializer.f44557a;
        }
    }

    public /* synthetic */ ApiTokenDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44552a = null;
        } else {
            this.f44552a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44553b = null;
        } else {
            this.f44553b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f44554c = null;
        } else {
            this.f44554c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f44555e = null;
        } else {
            this.f44555e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f44556f = null;
        } else {
            this.f44556f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ApiTokenDto)) {
            return false;
        }
        ApiTokenDto apiTokenDto = (ApiTokenDto) obj;
        return Intrinsics.c(this.f44552a, apiTokenDto.f44552a) && Intrinsics.c(this.f44553b, apiTokenDto.f44553b) && Intrinsics.c(this.f44554c, apiTokenDto.f44554c) && Intrinsics.c(this.d, apiTokenDto.d) && Intrinsics.c(this.f44555e, apiTokenDto.f44555e) && Intrinsics.c(this.f44556f, apiTokenDto.f44556f) && Intrinsics.c(this.g, apiTokenDto.g);
    }

    public final int hashCode() {
        String str = this.f44552a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f44553b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f44554c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f44555e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f44556f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ApiTokenDto(accessTokenSFID=", this.f44552a, ", refreshTokenSFID=", this.f44553b, ", accessTokenSLAS=");
        cj.C(sbS, this.f44554c, ", userIdSLAS=", this.d, ", userIdSFID=");
        cj.C(sbS, this.f44555e, ", sotToken=", this.f44556f, ", accessTokenExpiration=");
        return n00.r(this.g, ")", sbS);
    }

    public ApiTokenDto() {
        this((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public ApiTokenDto(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f44552a = str;
        this.f44553b = str2;
        this.f44554c = str3;
        this.d = str4;
        this.f44555e = str5;
        this.f44556f = str6;
        this.g = str7;
    }

    public /* synthetic */ ApiTokenDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7);
    }
}
