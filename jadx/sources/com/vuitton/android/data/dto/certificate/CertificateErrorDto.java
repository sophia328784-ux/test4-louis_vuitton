package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto;", "", "", "status", "Lcom/vuitton/android/data/dto/certificate/CertificateErrorDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateErrorDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateErrorDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateErrorDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CertificateErrorDataDto f45190b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateErrorDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateErrorDto> serializer() {
            return CertificateErrorDto$$serializer.f45191a;
        }
    }

    public /* synthetic */ CertificateErrorDto(int i2, String str, CertificateErrorDataDto certificateErrorDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45189a = null;
        } else {
            this.f45189a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45190b = null;
        } else {
            this.f45190b = certificateErrorDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateErrorDto)) {
            return false;
        }
        CertificateErrorDto certificateErrorDto = (CertificateErrorDto) obj;
        return Intrinsics.c(this.f45189a, certificateErrorDto.f45189a) && Intrinsics.c(this.f45190b, certificateErrorDto.f45190b);
    }

    public final int hashCode() {
        String str = this.f45189a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        CertificateErrorDataDto certificateErrorDataDto = this.f45190b;
        return iHashCode + (certificateErrorDataDto != null ? certificateErrorDataDto.hashCode() : 0);
    }

    public final String toString() {
        return "CertificateErrorDto(status=" + this.f45189a + ", data=" + this.f45190b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CertificateErrorDto() {
        this((String) null, (CertificateErrorDataDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public CertificateErrorDto(String str, CertificateErrorDataDto certificateErrorDataDto) {
        this.f45189a = str;
        this.f45190b = certificateErrorDataDto;
    }

    public /* synthetic */ CertificateErrorDto(String str, CertificateErrorDataDto certificateErrorDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : certificateErrorDataDto);
    }
}
