package com.vuitton.foundation.model.domain.model.cart;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/Cart;", "", "", "identifier", "", "itemCount", "", "Lcom/vuitton/foundation/model/domain/model/cart/CartItem;", "cartItems", "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;", "priceInfo", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "giftOption", "", "displayTax", "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;", "shoppingBag", "containsPerfume", "Lcom/vuitton/foundation/model/domain/model/cart/CartSample;", "cartSample", "<init>", "(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Cart {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66895a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f66896b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f66897c;
    public final CartPriceInformation d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GiftOption f66898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f66899f;
    public final ShoppingBag g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f66900h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CartSample f66901i;

    public Cart(String str, int i2, List<CartItem> list, CartPriceInformation cartPriceInformation, GiftOption giftOption, boolean z, ShoppingBag shoppingBag, boolean z2, CartSample cartSample) {
        str.getClass();
        list.getClass();
        giftOption.getClass();
        shoppingBag.getClass();
        this.f66895a = str;
        this.f66896b = i2;
        this.f66897c = list;
        this.d = cartPriceInformation;
        this.f66898e = giftOption;
        this.f66899f = z;
        this.g = shoppingBag;
        this.f66900h = z2;
        this.f66901i = cartSample;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cart)) {
            return false;
        }
        Cart cart = (Cart) obj;
        return Intrinsics.c(this.f66895a, cart.f66895a) && this.f66896b == cart.f66896b && Intrinsics.c(this.f66897c, cart.f66897c) && Intrinsics.c(this.d, cart.d) && Intrinsics.c(this.f66898e, cart.f66898e) && this.f66899f == cart.f66899f && Intrinsics.c(this.g, cart.g) && this.f66900h == cart.f66900h && Intrinsics.c(this.f66901i, cart.f66901i);
    }

    public final int hashCode() {
        int iA = n00.a(tr.b(this.f66896b, this.f66895a.hashCode() * 31, 31), 31, this.f66897c);
        CartPriceInformation cartPriceInformation = this.d;
        int iB = o60.b((this.g.hashCode() + o60.b((this.f66898e.hashCode() + ((iA + (cartPriceInformation == null ? 0 : cartPriceInformation.hashCode())) * 31)) * 31, 31, this.f66899f)) * 31, 31, this.f66900h);
        CartSample cartSample = this.f66901i;
        return iB + (cartSample != null ? cartSample.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbR = fc.r(this.f66896b, "Cart(identifier=", this.f66895a, ", itemCount=", ", cartItems=");
        sbR.append(this.f66897c);
        sbR.append(", priceInfo=");
        sbR.append(this.d);
        sbR.append(", giftOption=");
        sbR.append(this.f66898e);
        sbR.append(", displayTax=");
        sbR.append(this.f66899f);
        sbR.append(", shoppingBag=");
        sbR.append(this.g);
        sbR.append(", containsPerfume=");
        sbR.append(this.f66900h);
        sbR.append(", cartSample=");
        sbR.append(this.f66901i);
        sbR.append(")");
        return sbR.toString();
    }

    public /* synthetic */ Cart(String str, int i2, List list, CartPriceInformation cartPriceInformation, GiftOption giftOption, boolean z, ShoppingBag shoppingBag, boolean z2, CartSample cartSample, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i2, list, cartPriceInformation, giftOption, (i3 & 32) != 0 ? false : z, shoppingBag, z2, cartSample);
    }
}
