package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.fj;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B_\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eBg\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;", "", "", "carat", "", "color", "clarity", "detailURL", "engravingIdentifier", "sku", "", "Lcom/vuitton/android/data/dto/certificate/CertificateDiamondStoneDto;", "stoneList", "<init>", "(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CertificateDiamondDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45166h = {null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(28))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Double f45167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45169c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45171f;
    public final List g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateDiamondDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CertificateDiamondDataDto> serializer() {
            return CertificateDiamondDataDto$$serializer.f45172a;
        }
    }

    public CertificateDiamondDataDto(int i2, Double d, String str, String str2, String str3, String str4, String str5, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45167a = null;
        } else {
            this.f45167a = d;
        }
        if ((i2 & 2) == 0) {
            this.f45168b = null;
        } else {
            this.f45168b = str;
        }
        if ((i2 & 4) == 0) {
            this.f45169c = null;
        } else {
            this.f45169c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45170e = null;
        } else {
            this.f45170e = str4;
        }
        if ((i2 & 32) == 0) {
            this.f45171f = null;
        } else {
            this.f45171f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = EmptyList.f71768b;
        } else {
            this.g = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateDiamondDataDto)) {
            return false;
        }
        CertificateDiamondDataDto certificateDiamondDataDto = (CertificateDiamondDataDto) obj;
        return Intrinsics.c(this.f45167a, certificateDiamondDataDto.f45167a) && Intrinsics.c(this.f45168b, certificateDiamondDataDto.f45168b) && Intrinsics.c(this.f45169c, certificateDiamondDataDto.f45169c) && Intrinsics.c(this.d, certificateDiamondDataDto.d) && Intrinsics.c(this.f45170e, certificateDiamondDataDto.f45170e) && Intrinsics.c(this.f45171f, certificateDiamondDataDto.f45171f) && Intrinsics.c(this.g, certificateDiamondDataDto.g);
    }

    public final int hashCode() {
        Double d = this.f45167a;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        String str = this.f45168b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45169c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45170e;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f45171f;
        return this.g.hashCode() + ((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CertificateDiamondDataDto(carat=");
        sb.append(this.f45167a);
        sb.append(", color=");
        sb.append(this.f45168b);
        sb.append(", clarity=");
        cj.C(sb, this.f45169c, ", detailURL=", this.d, ", engravingIdentifier=");
        cj.C(sb, this.f45170e, ", sku=", this.f45171f, ", stoneList=");
        return a.o(sb, this.g, ")");
    }

    public CertificateDiamondDataDto(Double d, String str, String str2, String str3, String str4, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : d, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? EmptyList.f71768b : list);
    }

    public CertificateDiamondDataDto() {
        this((Double) null, (String) null, (String) null, (String) null, (String) null, (String) null, (List) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public CertificateDiamondDataDto(Double d, String str, String str2, String str3, String str4, String str5, List<CertificateDiamondStoneDto> list) {
        list.getClass();
        this.f45167a = d;
        this.f45168b = str;
        this.f45169c = str2;
        this.d = str3;
        this.f45170e = str4;
        this.f45171f = str5;
        this.g = list;
    }
}
