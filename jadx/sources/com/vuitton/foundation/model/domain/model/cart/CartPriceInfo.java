package com.vuitton.foundation.model.domain.model.cart;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;", "", "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "shippingAmount", "totalAmount", "totalTaxIncludedAmount", "", "Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;", "allTaxes", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPriceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPrice f66917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPrice f66918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPrice f66919c;
    public final List d;

    public CartPriceInfo(CartPrice cartPrice, CartPrice cartPrice2, CartPrice cartPrice3, List<TaxInfo> list) {
        cartPrice.getClass();
        cartPrice2.getClass();
        cartPrice3.getClass();
        list.getClass();
        this.f66917a = cartPrice;
        this.f66918b = cartPrice2;
        this.f66919c = cartPrice3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInfo)) {
            return false;
        }
        CartPriceInfo cartPriceInfo = (CartPriceInfo) obj;
        return Intrinsics.c(this.f66917a, cartPriceInfo.f66917a) && Intrinsics.c(this.f66918b, cartPriceInfo.f66918b) && Intrinsics.c(this.f66919c, cartPriceInfo.f66919c) && Intrinsics.c(this.d, cartPriceInfo.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f66919c.hashCode() + ((this.f66918b.hashCode() + (this.f66917a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CartPriceInfo(shippingAmount=" + this.f66917a + ", totalAmount=" + this.f66918b + ", totalTaxIncludedAmount=" + this.f66919c + ", allTaxes=" + this.d + ")";
    }
}
