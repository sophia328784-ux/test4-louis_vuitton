package com.vuitton.foundation.model.domain.model.connectivity.common;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;", "", "", "file", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FaqPdf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67314b;

    public FaqPdf(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f67313a = str;
        this.f67314b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FaqPdf)) {
            return false;
        }
        FaqPdf faqPdf = (FaqPdf) obj;
        return Intrinsics.c(this.f67313a, faqPdf.f67313a) && Intrinsics.c(this.f67314b, faqPdf.f67314b);
    }

    public final int hashCode() {
        return this.f67314b.hashCode() + (this.f67313a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("FaqPdf(file=", this.f67313a, ", title=", this.f67314b, ")");
    }
}
