package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nBM\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;", "", "Lcom/vuitton/android/data/dto/certificate/CertificateDto;", "certificate", "", "date", "keyword", "email", "phoneNumber", "<init>", "(Lcom/vuitton/android/data/dto/certificate/CertificateDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/certificate/CertificateDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateBffBodyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CertificateDto f45147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45149c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45150e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateBffBodyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateBffBodyDto> serializer() {
            return CertificateBffBodyDto$$serializer.f45151a;
        }
    }

    public /* synthetic */ CertificateBffBodyDto(int i2, CertificateDto certificateDto, String str, String str2, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, CertificateBffBodyDto$$serializer.f45151a.getF19850b());
            throw null;
        }
        this.f45147a = certificateDto;
        this.f45148b = str;
        this.f45149c = str2;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45150e = null;
        } else {
            this.f45150e = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateBffBodyDto)) {
            return false;
        }
        CertificateBffBodyDto certificateBffBodyDto = (CertificateBffBodyDto) obj;
        return Intrinsics.c(this.f45147a, certificateBffBodyDto.f45147a) && Intrinsics.c(this.f45148b, certificateBffBodyDto.f45148b) && Intrinsics.c(this.f45149c, certificateBffBodyDto.f45149c) && Intrinsics.c(this.d, certificateBffBodyDto.d) && Intrinsics.c(this.f45150e, certificateBffBodyDto.f45150e);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f45147a.hashCode() * 31, 31, this.f45148b), 31, this.f45149c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45150e;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CertificateBffBodyDto(certificate=");
        sb.append(this.f45147a);
        sb.append(", date=");
        sb.append(this.f45148b);
        sb.append(", keyword=");
        cj.C(sb, this.f45149c, ", email=", this.d, ", phoneNumber=");
        return n00.r(this.f45150e, ")", sb);
    }

    public CertificateBffBodyDto(CertificateDto certificateDto, String str, String str2, String str3, String str4) {
        certificateDto.getClass();
        str.getClass();
        str2.getClass();
        this.f45147a = certificateDto;
        this.f45148b = str;
        this.f45149c = str2;
        this.d = str3;
        this.f45150e = str4;
    }

    public /* synthetic */ CertificateBffBodyDto(CertificateDto certificateDto, String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(certificateDto, str, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4);
    }
}
