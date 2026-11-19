package com.vuitton.foundation.model.domain.model.certificate;

import com.vuitton.foundation.model.domain.model.contributionlink.ContributionLink;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateVisionnaire;", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "productName", "Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;", "status", "cxid", "currentOwnerId", "Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;", "journeyLink", "purchaseDate", "purchaseStore", "formattedDimensionValue", "productionDate", "productionSite", "material", "metallicPart", "productImageUrl", "acquiredDate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateVisionnaire extends Certificate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67080c;
    public final CertificateStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67081e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67082f;
    public final ContributionLink g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67083h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67086k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateVisionnaire(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, ContributionLink contributionLink, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        certificateStatus.getClass();
        str4.getClass();
        str5.getClass();
        str13.getClass();
        this.f67078a = str;
        this.f67079b = str2;
        this.f67080c = str3;
        this.d = certificateStatus;
        this.f67081e = str4;
        this.f67082f = str5;
        this.g = contributionLink;
        this.f67083h = str6;
        this.f67084i = str7;
        this.f67085j = str8;
        this.f67086k = str9;
        this.l = str10;
        this.m = str11;
        this.n = str12;
        this.o = str13;
        this.p = str14;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateVisionnaire)) {
            return false;
        }
        CertificateVisionnaire certificateVisionnaire = (CertificateVisionnaire) obj;
        if (!Intrinsics.c(this.f67078a, certificateVisionnaire.f67078a)) {
            return false;
        }
        String str = certificateVisionnaire.f67079b;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67079b, str) && Intrinsics.c(this.f67080c, certificateVisionnaire.f67080c) && this.d == certificateVisionnaire.d && Intrinsics.c(this.f67081e, certificateVisionnaire.f67081e) && Intrinsics.c(this.f67082f, certificateVisionnaire.f67082f) && Intrinsics.c(this.g, certificateVisionnaire.g) && Intrinsics.c(this.f67083h, certificateVisionnaire.f67083h) && Intrinsics.c(this.f67084i, certificateVisionnaire.f67084i) && Intrinsics.c(this.f67085j, certificateVisionnaire.f67085j) && Intrinsics.c(this.f67086k, certificateVisionnaire.f67086k) && Intrinsics.c(this.l, certificateVisionnaire.l) && Intrinsics.c(this.m, certificateVisionnaire.m) && Intrinsics.c(this.n, certificateVisionnaire.n) && Intrinsics.c(this.o, certificateVisionnaire.o) && Intrinsics.c(this.p, certificateVisionnaire.p);
    }

    public final int hashCode() {
        int iHashCode = this.f67078a.hashCode() * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(fc.b((this.d.hashCode() + fc.b(fc.b(iHashCode, 31, this.f67079b), 31, this.f67080c)) * 31, 31, this.f67081e), 31, this.f67082f);
        ContributionLink contributionLink = this.g;
        int iHashCode2 = (iB + (contributionLink == null ? 0 : contributionLink.hashCode())) * 31;
        String str = this.f67083h;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67084i;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67085j;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67086k;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.l;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.m;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.n;
        int iB2 = fc.b((iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31, 31, this.o);
        String str8 = this.p;
        return iB2 + (str8 != null ? str8.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CertificateVisionnaire(identifier=", this.f67078a, ", sku=", this.f67079b, ", productName=");
        sbS.append(this.f67080c);
        sbS.append(", status=");
        sbS.append(this.d);
        sbS.append(", cxid=");
        cj.C(sbS, this.f67081e, ", currentOwnerId=", this.f67082f, ", journeyLink=");
        sbS.append(this.g);
        sbS.append(", purchaseDate=");
        sbS.append(this.f67083h);
        sbS.append(", purchaseStore=");
        cj.C(sbS, this.f67084i, ", formattedDimensionValue=", this.f67085j, ", productionDate=");
        cj.C(sbS, this.f67086k, ", productionSite=", this.l, ", material=");
        cj.C(sbS, this.m, ", metallicPart=", this.n, ", productImageUrl=");
        return tr.l(sbS, this.o, ", acquiredDate=", this.p, ")");
    }
}
