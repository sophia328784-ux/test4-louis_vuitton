package com.vuitton.foundation.model.domain.model.cart;

import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "", "", "priceRaw", "", "price", "currency", "<init>", "(DLjava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPrice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f66914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66916c;

    public CartPrice(double d, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f66914a = d;
        this.f66915b = str;
        this.f66916c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPrice)) {
            return false;
        }
        CartPrice cartPrice = (CartPrice) obj;
        return Double.compare(this.f66914a, cartPrice.f66914a) == 0 && Intrinsics.c(this.f66915b, cartPrice.f66915b) && Intrinsics.c(this.f66916c, cartPrice.f66916c);
    }

    public final int hashCode() {
        return this.f66916c.hashCode() + fc.b(Double.hashCode(this.f66914a) * 31, 31, this.f66915b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CartPrice(priceRaw=");
        sb.append(this.f66914a);
        sb.append(", price=");
        sb.append(this.f66915b);
        return d21.p(sb, ", currency=", this.f66916c, ")");
    }
}
