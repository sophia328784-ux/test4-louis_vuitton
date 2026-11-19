package com.vuitton.foundation.model.domain.model.certificate;

import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "productName", "Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;", "status", "detailId", "engravingIdentifier", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "productImageUrl", "carat", "color", "clarity", "certificateDetailsUrl", "", "Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamondStone;", "stoneList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateDiamond extends Certificate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67063c;
    public final CertificateStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67065f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67066h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67067i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67068j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67069k;
    public final String l;
    public final List m;

    /* JADX WARN: Illegal instructions before constructor call */
    public CertificateDiamond(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        String str12;
        String str13;
        str = (i2 & 1) != 0 ? "" : str;
        if ((i2 & 2) != 0) {
            SkuId.INSTANCE.getClass();
            str12 = SkuId.f67932b;
        } else {
            str12 = str2;
        }
        String str14 = (i2 & 4) != 0 ? "" : str3;
        CertificateStatus certificateStatus2 = (i2 & 8) != 0 ? CertificateStatus.UNLOCKED : certificateStatus;
        String str15 = (i2 & 16) != 0 ? "" : str4;
        String str16 = (i2 & 32) != 0 ? "" : str5;
        if ((i2 & 64) != 0) {
            ProductId.INSTANCE.getClass();
            str13 = ProductId.f67904b;
        } else {
            str13 = str6;
        }
        this(str, str12, str14, certificateStatus2, str15, str16, str13, (i2 & 128) != 0 ? "" : str7, (i2 & 256) != 0 ? "" : str8, (i2 & 512) != 0 ? "" : str9, (i2 & 1024) != 0 ? "" : str10, (i2 & 2048) == 0 ? str11 : "", (i2 & 4096) != 0 ? EmptyList.f71768b : list, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateDiamond)) {
            return false;
        }
        CertificateDiamond certificateDiamond = (CertificateDiamond) obj;
        if (!Intrinsics.c(this.f67061a, certificateDiamond.f67061a)) {
            return false;
        }
        String str = certificateDiamond.f67062b;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f67062b, str) || !Intrinsics.c(this.f67063c, certificateDiamond.f67063c) || this.d != certificateDiamond.d || !Intrinsics.c(this.f67064e, certificateDiamond.f67064e) || !Intrinsics.c(this.f67065f, certificateDiamond.f67065f)) {
            return false;
        }
        String str2 = certificateDiamond.g;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        return Intrinsics.c(this.g, str2) && Intrinsics.c(this.f67066h, certificateDiamond.f67066h) && Intrinsics.c(this.f67067i, certificateDiamond.f67067i) && Intrinsics.c(this.f67068j, certificateDiamond.f67068j) && Intrinsics.c(this.f67069k, certificateDiamond.f67069k) && Intrinsics.c(this.l, certificateDiamond.l) && Intrinsics.c(this.m, certificateDiamond.m);
    }

    public final int hashCode() {
        int iHashCode = this.f67061a.hashCode() * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(fc.b((this.d.hashCode() + fc.b(fc.b(iHashCode, 31, this.f67062b), 31, this.f67063c)) * 31, 31, this.f67064e), 31, this.f67065f);
        ProductId.Companion companion2 = ProductId.INSTANCE;
        return this.m.hashCode() + fc.b(fc.b(fc.b(fc.b(fc.b(fc.b(iB, 31, this.g), 31, this.f67066h), 31, this.f67067i), 31, this.f67068j), 31, this.f67069k), 31, this.l);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        ProductId.Companion companion2 = ProductId.INSTANCE;
        StringBuilder sbS = fc.s("CertificateDiamond(identifier=", this.f67061a, ", sku=", this.f67062b, ", productName=");
        sbS.append(this.f67063c);
        sbS.append(", status=");
        sbS.append(this.d);
        sbS.append(", detailId=");
        cj.C(sbS, this.f67064e, ", engravingIdentifier=", this.f67065f, ", productId=");
        cj.C(sbS, this.g, ", productImageUrl=", this.f67066h, ", carat=");
        cj.C(sbS, this.f67067i, ", color=", this.f67068j, ", clarity=");
        cj.C(sbS, this.f67069k, ", certificateDetailsUrl=", this.l, ", stoneList=");
        return a.o(sbS, this.m, ")");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateDiamond(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, List list, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        certificateStatus.getClass();
        str4.getClass();
        pq0.z(str5, str6, str7, str8, str9);
        pq0.B(str10, str11, list);
        this.f67061a = str;
        this.f67062b = str2;
        this.f67063c = str3;
        this.d = certificateStatus;
        this.f67064e = str4;
        this.f67065f = str5;
        this.g = str6;
        this.f67066h = str7;
        this.f67067i = str8;
        this.f67068j = str9;
        this.f67069k = str10;
        this.l = str11;
        this.m = list;
    }
}
