package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;", "", "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;", "totalAmount", "taxAmount", "shippingAmount", "unitAmount", "totalTaxIncludedAmount", "Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;", "taxDetails", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPriceInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPrice f66920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPrice f66921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPrice f66922c;
    public final CartPrice d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPrice f66923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormattedTaxDetails f66924f;

    public CartPriceInformation(CartPrice cartPrice, CartPrice cartPrice2, CartPrice cartPrice3, CartPrice cartPrice4, CartPrice cartPrice5, FormattedTaxDetails formattedTaxDetails) {
        cartPrice.getClass();
        cartPrice2.getClass();
        this.f66920a = cartPrice;
        this.f66921b = cartPrice2;
        this.f66922c = cartPrice3;
        this.d = cartPrice4;
        this.f66923e = cartPrice5;
        this.f66924f = formattedTaxDetails;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInformation)) {
            return false;
        }
        CartPriceInformation cartPriceInformation = (CartPriceInformation) obj;
        return Intrinsics.c(this.f66920a, cartPriceInformation.f66920a) && Intrinsics.c(this.f66921b, cartPriceInformation.f66921b) && Intrinsics.c(this.f66922c, cartPriceInformation.f66922c) && Intrinsics.c(this.d, cartPriceInformation.d) && Intrinsics.c(this.f66923e, cartPriceInformation.f66923e) && Intrinsics.c(this.f66924f, cartPriceInformation.f66924f);
    }

    public final int hashCode() {
        int iHashCode = (this.f66921b.hashCode() + (this.f66920a.hashCode() * 31)) * 31;
        CartPrice cartPrice = this.f66922c;
        int iHashCode2 = (iHashCode + (cartPrice == null ? 0 : cartPrice.hashCode())) * 31;
        CartPrice cartPrice2 = this.d;
        int iHashCode3 = (iHashCode2 + (cartPrice2 == null ? 0 : cartPrice2.hashCode())) * 31;
        CartPrice cartPrice3 = this.f66923e;
        int iHashCode4 = (iHashCode3 + (cartPrice3 == null ? 0 : cartPrice3.hashCode())) * 31;
        FormattedTaxDetails formattedTaxDetails = this.f66924f;
        return iHashCode4 + (formattedTaxDetails != null ? formattedTaxDetails.hashCode() : 0);
    }

    public final String toString() {
        return "CartPriceInformation(totalAmount=" + this.f66920a + ", taxAmount=" + this.f66921b + ", shippingAmount=" + this.f66922c + ", unitAmount=" + this.d + ", totalTaxIncludedAmount=" + this.f66923e + ", taxDetails=" + this.f66924f + ")";
    }

    public /* synthetic */ CartPriceInformation(CartPrice cartPrice, CartPrice cartPrice2, CartPrice cartPrice3, CartPrice cartPrice4, CartPrice cartPrice5, FormattedTaxDetails formattedTaxDetails, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(cartPrice, cartPrice2, cartPrice3, cartPrice4, cartPrice5, (i2 & 32) != 0 ? null : formattedTaxDetails);
    }
}
