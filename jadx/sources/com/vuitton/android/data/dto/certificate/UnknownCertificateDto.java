package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.b51;
import defpackage.cj;
import defpackage.fc;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BW\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBa\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;", "Lcom/vuitton/android/data/dto/certificate/CertificateDto;", "", "identifier", "type", "Lcom/vuitton/android/data/dto/certificate/ProductDto;", "product", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "acquiredDate", "detailId", "Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;", "status", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UnknownCertificateDto extends CertificateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45224h = {null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(6))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductDto f45227c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45229f;
    public final CertificateStatusDto g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UnknownCertificateDto> serializer() {
            return UnknownCertificateDto$$serializer.f45230a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UnknownCertificateDto(int i2, String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (64 != (i2 & 64)) {
            PluginExceptionsKt.b(i2, 64, UnknownCertificateDto$$serializer.f45230a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45225a = null;
        } else {
            this.f45225a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45226b = null;
        } else {
            this.f45226b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45227c = null;
        } else {
            this.f45227c = productDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = assetDto;
        }
        if ((i2 & 16) == 0) {
            this.f45228e = null;
        } else {
            this.f45228e = str3;
        }
        if ((i2 & 32) == 0) {
            this.f45229f = null;
        } else {
            this.f45229f = str4;
        }
        this.g = certificateStatusDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UnknownCertificateDto)) {
            return false;
        }
        UnknownCertificateDto unknownCertificateDto = (UnknownCertificateDto) obj;
        return Intrinsics.c(this.f45225a, unknownCertificateDto.f45225a) && Intrinsics.c(this.f45226b, unknownCertificateDto.f45226b) && Intrinsics.c(this.f45227c, unknownCertificateDto.f45227c) && Intrinsics.c(this.d, unknownCertificateDto.d) && Intrinsics.c(this.f45228e, unknownCertificateDto.f45228e) && Intrinsics.c(this.f45229f, unknownCertificateDto.f45229f) && this.g == unknownCertificateDto.g;
    }

    public final int hashCode() {
        String str = this.f45225a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45226b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ProductDto productDto = this.f45227c;
        int iHashCode3 = (iHashCode2 + (productDto == null ? 0 : productDto.hashCode())) * 31;
        AssetDto assetDto = this.d;
        int iHashCode4 = (iHashCode3 + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        String str3 = this.f45228e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45229f;
        return this.g.hashCode() + ((iHashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("UnknownCertificateDto(identifier=", this.f45225a, ", type=", this.f45226b, ", product=");
        sbS.append(this.f45227c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", acquiredDate=");
        cj.C(sbS, this.f45228e, ", detailId=", this.f45229f, ", status=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnknownCertificateDto(String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto) {
        super(null);
        certificateStatusDto.getClass();
        this.f45225a = str;
        this.f45226b = str2;
        this.f45227c = productDto;
        this.d = assetDto;
        this.f45228e = str3;
        this.f45229f = str4;
        this.g = certificateStatusDto;
    }

    public /* synthetic */ UnknownCertificateDto(String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : productDto, (i2 & 8) != 0 ? null : assetDto, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, certificateStatusDto);
    }
}
