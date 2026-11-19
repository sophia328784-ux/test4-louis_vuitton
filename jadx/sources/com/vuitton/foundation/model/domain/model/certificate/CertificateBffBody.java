package com.vuitton.foundation.model.domain.model.certificate;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/CertificateBffBody;", "", "Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;", "certificate", "", "date", "keyword", "email", "phoneNumber", "<init>", "(Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CertificateBffBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Certificate f67046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67048c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67049e;

    public CertificateBffBody(Certificate certificate, String str, String str2, String str3, String str4) {
        certificate.getClass();
        str.getClass();
        str2.getClass();
        this.f67046a = certificate;
        this.f67047b = str;
        this.f67048c = str2;
        this.d = str3;
        this.f67049e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CertificateBffBody)) {
            return false;
        }
        CertificateBffBody certificateBffBody = (CertificateBffBody) obj;
        return Intrinsics.c(this.f67046a, certificateBffBody.f67046a) && Intrinsics.c(this.f67047b, certificateBffBody.f67047b) && Intrinsics.c(this.f67048c, certificateBffBody.f67048c) && Intrinsics.c(this.d, certificateBffBody.d) && Intrinsics.c(this.f67049e, certificateBffBody.f67049e);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f67046a.hashCode() * 31, 31, this.f67047b), 31, this.f67048c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67049e;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CertificateBffBody(certificate=");
        sb.append(this.f67046a);
        sb.append(", date=");
        sb.append(this.f67047b);
        sb.append(", keyword=");
        cj.C(sb, this.f67048c, ", email=", this.d, ", phoneNumber=");
        return n00.r(this.f67049e, ")", sb);
    }

    public /* synthetic */ CertificateBffBody(Certificate certificate, String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(certificate, str, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : str4);
    }
}
