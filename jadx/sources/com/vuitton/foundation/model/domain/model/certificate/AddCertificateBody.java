package com.vuitton.foundation.model.domain.model.certificate;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/certificate/AddCertificateBody;", "", "", "date", "keyword", "identifier", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddCertificateBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67045c;

    public AddCertificateBody(String str, String str2, String str3) {
        cj.z(str, str2, str3);
        this.f67043a = str;
        this.f67044b = str2;
        this.f67045c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddCertificateBody)) {
            return false;
        }
        AddCertificateBody addCertificateBody = (AddCertificateBody) obj;
        return Intrinsics.c(this.f67043a, addCertificateBody.f67043a) && Intrinsics.c(this.f67044b, addCertificateBody.f67044b) && Intrinsics.c(this.f67045c, addCertificateBody.f67045c);
    }

    public final int hashCode() {
        return this.f67045c.hashCode() + fc.b(this.f67043a.hashCode() * 31, 31, this.f67044b);
    }

    public final String toString() {
        return n00.r(this.f67045c, ")", fc.s("AddCertificateBody(date=", this.f67043a, ", keyword=", this.f67044b, ", identifier="));
    }
}
