package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;", "", "Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;", "gifting", "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;", "shoppingBag", "Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;", "packaging", "<init>", "(Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartContribution {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GiftingContribution f66902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ShoppingBagContribution f66903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PackagingContribution f66904c;

    public CartContribution(GiftingContribution giftingContribution, ShoppingBagContribution shoppingBagContribution, PackagingContribution packagingContribution) {
        giftingContribution.getClass();
        shoppingBagContribution.getClass();
        packagingContribution.getClass();
        this.f66902a = giftingContribution;
        this.f66903b = shoppingBagContribution;
        this.f66904c = packagingContribution;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartContribution)) {
            return false;
        }
        CartContribution cartContribution = (CartContribution) obj;
        return Intrinsics.c(this.f66902a, cartContribution.f66902a) && Intrinsics.c(this.f66903b, cartContribution.f66903b) && Intrinsics.c(this.f66904c, cartContribution.f66904c);
    }

    public final int hashCode() {
        return this.f66904c.hashCode() + ((this.f66903b.hashCode() + (this.f66902a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CartContribution(gifting=" + this.f66902a + ", shoppingBag=" + this.f66903b + ", packaging=" + this.f66904c + ")";
    }
}
