package com.vuitton.foundation.model.domain.model.cart;

import com.vuitton.foundation.model.domain.error.cart.CartMultipleError;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;", "", "Lcom/vuitton/foundation/model/domain/model/cart/Cart;", "cart", "", "Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;", "errors", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Cart f66925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f66926b;

    public CartResponse(Cart cart, List<CartMultipleError> list) {
        cart.getClass();
        list.getClass();
        this.f66925a = cart;
        this.f66926b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartResponse)) {
            return false;
        }
        CartResponse cartResponse = (CartResponse) obj;
        return Intrinsics.c(this.f66925a, cartResponse.f66925a) && Intrinsics.c(this.f66926b, cartResponse.f66926b);
    }

    public final int hashCode() {
        return this.f66926b.hashCode() + (this.f66925a.hashCode() * 31);
    }

    public final String toString() {
        return "CartResponse(cart=" + this.f66925a + ", errors=" + this.f66926b + ")";
    }
}
