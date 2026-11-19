package com.vuitton.android.data.dto.product.reinsurance.error;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B[\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rBa\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\f\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;", "", "", "traceId", "date", "path", "", "statusCode", "error", "Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;", "errors", "message", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ErrorResponseDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46455c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ErrorDetailsDto f46457f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ErrorResponseDto> serializer() {
            return ErrorResponseDto$$serializer.f46458a;
        }
    }

    public /* synthetic */ ErrorResponseDto(int i2, String str, String str2, String str3, Integer num, String str4, ErrorDetailsDto errorDetailsDto, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46453a = null;
        } else {
            this.f46453a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46454b = null;
        } else {
            this.f46454b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46455c = null;
        } else {
            this.f46455c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = num;
        }
        if ((i2 & 16) == 0) {
            this.f46456e = null;
        } else {
            this.f46456e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f46457f = null;
        } else {
            this.f46457f = errorDetailsDto;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorResponseDto)) {
            return false;
        }
        ErrorResponseDto errorResponseDto = (ErrorResponseDto) obj;
        return Intrinsics.c(this.f46453a, errorResponseDto.f46453a) && Intrinsics.c(this.f46454b, errorResponseDto.f46454b) && Intrinsics.c(this.f46455c, errorResponseDto.f46455c) && Intrinsics.c(this.d, errorResponseDto.d) && Intrinsics.c(this.f46456e, errorResponseDto.f46456e) && Intrinsics.c(this.f46457f, errorResponseDto.f46457f) && Intrinsics.c(this.g, errorResponseDto.g);
    }

    public final int hashCode() {
        String str = this.f46453a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46454b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46455c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.f46456e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        ErrorDetailsDto errorDetailsDto = this.f46457f;
        int iHashCode6 = (iHashCode5 + (errorDetailsDto == null ? 0 : errorDetailsDto.hashCode())) * 31;
        String str5 = this.g;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ErrorResponseDto(traceId=", this.f46453a, ", date=", this.f46454b, ", path=");
        sbS.append(this.f46455c);
        sbS.append(", statusCode=");
        sbS.append(this.d);
        sbS.append(", error=");
        sbS.append(this.f46456e);
        sbS.append(", errors=");
        sbS.append(this.f46457f);
        sbS.append(", message=");
        return n00.r(this.g, ")", sbS);
    }

    public ErrorResponseDto() {
        this((String) null, (String) null, (String) null, (Integer) null, (String) null, (ErrorDetailsDto) null, (String) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public ErrorResponseDto(String str, String str2, String str3, Integer num, String str4, ErrorDetailsDto errorDetailsDto, String str5) {
        this.f46453a = str;
        this.f46454b = str2;
        this.f46455c = str3;
        this.d = num;
        this.f46456e = str4;
        this.f46457f = errorDetailsDto;
        this.g = str5;
    }

    public /* synthetic */ ErrorResponseDto(String str, String str2, String str3, Integer num, String str4, ErrorDetailsDto errorDetailsDto, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : errorDetailsDto, (i2 & 64) != 0 ? null : str5);
    }
}
