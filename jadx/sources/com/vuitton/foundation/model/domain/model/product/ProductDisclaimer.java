package com.vuitton.foundation.model.domain.model.product;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;", "", "", "value", "popInContent", "popInTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductDisclaimer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67903c;

    public ProductDisclaimer(String str, String str2, String str3) {
        str.getClass();
        this.f67901a = str;
        this.f67902b = str2;
        this.f67903c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDisclaimer)) {
            return false;
        }
        ProductDisclaimer productDisclaimer = (ProductDisclaimer) obj;
        return Intrinsics.c(this.f67901a, productDisclaimer.f67901a) && Intrinsics.c(this.f67902b, productDisclaimer.f67902b) && Intrinsics.c(this.f67903c, productDisclaimer.f67903c);
    }

    public final int hashCode() {
        int iHashCode = this.f67901a.hashCode() * 31;
        String str = this.f67902b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67903c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return n00.r(this.f67903c, ")", fc.s("ProductDisclaimer(value=", this.f67901a, ", popInContent=", this.f67902b, ", popInTitle="));
    }
}
