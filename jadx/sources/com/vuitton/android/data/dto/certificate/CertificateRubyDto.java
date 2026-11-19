package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.cj;
import defpackage.cm;
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
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016Bc\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010Bk\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;", "Lcom/vuitton/android/data/dto/certificate/CertificateDto;", "", "identifier", "type", "Lcom/vuitton/android/data/dto/certificate/ProductDto;", "product", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "acquiredDate", "detailId", "Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;", "status", "Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lcom/vuitton/android/data/dto/certificate/CertificateRubyDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateRubyDto extends CertificateDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy[] f45196i = {null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new cm(4)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductDto f45199c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45201f;
    public final CertificateStatusDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CertificateRubyDataDto f45202h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateRubyDto> serializer() {
            return CertificateRubyDto$$serializer.f45203a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CertificateRubyDto(int i2, String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto, CertificateRubyDataDto certificateRubyDataDto, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if (64 != (i2 & 64)) {
            PluginExceptionsKt.b(i2, 64, CertificateRubyDto$$serializer.f45203a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45197a = null;
        } else {
            this.f45197a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45198b = null;
        } else {
            this.f45198b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45199c = null;
        } else {
            this.f45199c = productDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = assetDto;
        }
        if ((i2 & 16) == 0) {
            this.f45200e = null;
        } else {
            this.f45200e = str3;
        }
        if ((i2 & 32) == 0) {
            this.f45201f = null;
        } else {
            this.f45201f = str4;
        }
        this.g = certificateStatusDto;
        if ((i2 & 128) == 0) {
            this.f45202h = null;
        } else {
            this.f45202h = certificateRubyDataDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateRubyDto)) {
            return false;
        }
        CertificateRubyDto certificateRubyDto = (CertificateRubyDto) obj;
        return Intrinsics.c(this.f45197a, certificateRubyDto.f45197a) && Intrinsics.c(this.f45198b, certificateRubyDto.f45198b) && Intrinsics.c(this.f45199c, certificateRubyDto.f45199c) && Intrinsics.c(this.d, certificateRubyDto.d) && Intrinsics.c(this.f45200e, certificateRubyDto.f45200e) && Intrinsics.c(this.f45201f, certificateRubyDto.f45201f) && this.g == certificateRubyDto.g && Intrinsics.c(this.f45202h, certificateRubyDto.f45202h);
    }

    public final int hashCode() {
        String str = this.f45197a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45198b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ProductDto productDto = this.f45199c;
        int iHashCode3 = (iHashCode2 + (productDto == null ? 0 : productDto.hashCode())) * 31;
        AssetDto assetDto = this.d;
        int iHashCode4 = (iHashCode3 + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        String str3 = this.f45200e;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45201f;
        int iHashCode6 = (this.g.hashCode() + ((iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31)) * 31;
        CertificateRubyDataDto certificateRubyDataDto = this.f45202h;
        return iHashCode6 + (certificateRubyDataDto != null ? certificateRubyDataDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CertificateRubyDto(identifier=", this.f45197a, ", type=", this.f45198b, ", product=");
        sbS.append(this.f45199c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", acquiredDate=");
        cj.C(sbS, this.f45200e, ", detailId=", this.f45201f, ", status=");
        sbS.append(this.g);
        sbS.append(", data=");
        sbS.append(this.f45202h);
        sbS.append(")");
        return sbS.toString();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRubyDto(String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto, CertificateRubyDataDto certificateRubyDataDto) {
        super(null);
        certificateStatusDto.getClass();
        this.f45197a = str;
        this.f45198b = str2;
        this.f45199c = productDto;
        this.d = assetDto;
        this.f45200e = str3;
        this.f45201f = str4;
        this.g = certificateStatusDto;
        this.f45202h = certificateRubyDataDto;
    }

    public /* synthetic */ CertificateRubyDto(String str, String str2, ProductDto productDto, AssetDto assetDto, String str3, String str4, CertificateStatusDto certificateStatusDto, CertificateRubyDataDto certificateRubyDataDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : productDto, (i2 & 8) != 0 ? null : assetDto, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : str4, certificateStatusDto, (i2 & 128) != 0 ? null : certificateRubyDataDto);
    }
}
