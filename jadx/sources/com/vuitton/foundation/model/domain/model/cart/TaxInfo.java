package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;", "", "", "identifier", "title", "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "priceInfo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TaxInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPrice f67006c;

    public TaxInfo(String str, String str2, CartPrice cartPrice) {
        str.getClass();
        str2.getClass();
        cartPrice.getClass();
        this.f67004a = str;
        this.f67005b = str2;
        this.f67006c = cartPrice;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TaxInfo)) {
            return false;
        }
        TaxInfo taxInfo = (TaxInfo) obj;
        return Intrinsics.c(this.f67004a, taxInfo.f67004a) && Intrinsics.c(this.f67005b, taxInfo.f67005b) && Intrinsics.c(this.f67006c, taxInfo.f67006c);
    }

    public final int hashCode() {
        return this.f67006c.hashCode() + fc.b(this.f67004a.hashCode() * 31, 31, this.f67005b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TaxInfo(identifier=", this.f67004a, ", title=", this.f67005b, ", priceInfo=");
        sbS.append(this.f67006c);
        sbS.append(")");
        return sbS.toString();
    }
}
