package com.vuitton.foundation.model.domain.model.certificate;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateCapucine;", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "", "identifier", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "productName", "Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;", "status", "ttNumber", "acquiredDate", "artist", "mainImageUrl", "material", "", "slideshowImages", "videoUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateCapucine extends Certificate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67052c;
    public final CertificateStatus d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67053e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67054f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67055h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67056i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f67057j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67058k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateCapucine(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, String str8, List list, String str9, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str.getClass();
        str2.getClass();
        str3.getClass();
        certificateStatus.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        list.getClass();
        str9.getClass();
        this.f67050a = str;
        this.f67051b = str2;
        this.f67052c = str3;
        this.d = certificateStatus;
        this.f67053e = str4;
        this.f67054f = str5;
        this.g = str6;
        this.f67055h = str7;
        this.f67056i = str8;
        this.f67057j = list;
        this.f67058k = str9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateCapucine)) {
            return false;
        }
        CertificateCapucine certificateCapucine = (CertificateCapucine) obj;
        if (!Intrinsics.c(this.f67050a, certificateCapucine.f67050a)) {
            return false;
        }
        String str = certificateCapucine.f67051b;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67051b, str) && Intrinsics.c(this.f67052c, certificateCapucine.f67052c) && this.d == certificateCapucine.d && Intrinsics.c(this.f67053e, certificateCapucine.f67053e) && Intrinsics.c(this.f67054f, certificateCapucine.f67054f) && Intrinsics.c(this.g, certificateCapucine.g) && Intrinsics.c(this.f67055h, certificateCapucine.f67055h) && Intrinsics.c(this.f67056i, certificateCapucine.f67056i) && Intrinsics.c(this.f67057j, certificateCapucine.f67057j) && Intrinsics.c(this.f67058k, certificateCapucine.f67058k);
    }

    public final int hashCode() {
        int iHashCode = this.f67050a.hashCode() * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f67058k.hashCode() + n00.a(fc.b(fc.b(fc.b(fc.b(fc.b((this.d.hashCode() + fc.b(fc.b(iHashCode, 31, this.f67051b), 31, this.f67052c)) * 31, 31, this.f67053e), 31, this.f67054f), 31, this.g), 31, this.f67055h), 31, this.f67056i), 31, this.f67057j);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CertificateCapucine(identifier=", this.f67050a, ", sku=", this.f67051b, ", productName=");
        sbS.append(this.f67052c);
        sbS.append(", status=");
        sbS.append(this.d);
        sbS.append(", ttNumber=");
        cj.C(sbS, this.f67053e, ", acquiredDate=", this.f67054f, ", artist=");
        cj.C(sbS, this.g, ", mainImageUrl=", this.f67055h, ", material=");
        d21.z(this.f67056i, ", slideshowImages=", ", videoUrl=", sbS, this.f67057j);
        return n00.r(this.f67058k, ")", sbS);
    }

    public /* synthetic */ CertificateCapucine(String str, String str2, String str3, CertificateStatus certificateStatus, String str4, String str5, String str6, String str7, String str8, List list, String str9, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, str2, str3, (i2 & 8) != 0 ? CertificateStatus.UNLOCKED : certificateStatus, str4, str5, str6, str7, str8, list, str9, null);
    }
}
