package com.vuitton.foundation.model.domain.model.certificate;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "productName", "Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;", "status", "diamondEngravingIdentifier", "productImageUrl", "acquiredDate", "pdfUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateRuby extends Certificate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67072a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67074c;
    public final CertificateStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67076f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67077h;

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateRuby(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        str = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 2) != 0) {
            SkuId.INSTANCE.getClass();
            str2 = SkuId.f67932b;
        }
        this(str, str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? CertificateStatus.UNLOCKED : certificateStatus, (i2 & 16) != 0 ? "" : str4, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? "" : str6, (i2 & 128) != 0 ? "" : str7, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateRuby)) {
            return false;
        }
        CertificateRuby certificateRuby = (CertificateRuby) obj;
        if (!Intrinsics.c(this.f67072a, certificateRuby.f67072a)) {
            return false;
        }
        String str = certificateRuby.f67073b;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67073b, str) && Intrinsics.c(this.f67074c, certificateRuby.f67074c) && this.d == certificateRuby.d && Intrinsics.c(this.f67075e, certificateRuby.f67075e) && Intrinsics.c(this.f67076f, certificateRuby.f67076f) && Intrinsics.c(this.g, certificateRuby.g) && Intrinsics.c(this.f67077h, certificateRuby.f67077h);
    }

    public final int hashCode() {
        int iHashCode = this.f67072a.hashCode() * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67077h.hashCode() + fc.b(fc.b(fc.b((this.d.hashCode() + fc.b(fc.b(iHashCode, 31, this.f67073b), 31, this.f67074c)) * 31, 31, this.f67075e), 31, this.f67076f), 31, this.g);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CertificateRuby(identifier=", this.f67072a, ", sku=", this.f67073b, ", productName=");
        sbS.append(this.f67074c);
        sbS.append(", status=");
        sbS.append(this.d);
        sbS.append(", diamondEngravingIdentifier=");
        cj.C(sbS, this.f67075e, ", productImageUrl=", this.f67076f, ", acquiredDate=");
        return tr.l(sbS, this.g, ", pdfUrl=", this.f67077h, ")");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateRuby(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        certificateStatus.getClass();
        str4.getClass();
        cj.z(str5, str6, str7);
        this.f67072a = str;
        this.f67073b = str2;
        this.f67074c = str3;
        this.d = certificateStatus;
        this.f67075e = str4;
        this.f67076f = str5;
        this.g = str6;
        this.f67077h = str7;
    }
}
