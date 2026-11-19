package com.vuitton.android.presentation.screen.cart.models;

import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;", "", "", "identifier", "", "itemCount", "", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "cartItems", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;", "priceInfo", "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;", "giftOption", "", "displayTax", "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;", "shoppingBag", "containsPerfume", "Lcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;", "cartSamples", "<init>", "(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f55181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f55182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f55183c;
    public final CartPriceInformationUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GiftOption f55184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f55185f;
    public final ShoppingBag g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f55186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CartSampleUiModel f55187i;

    public CartUiModel(String str, int i2, List<CartItemUiModel> list, CartPriceInformationUiModel cartPriceInformationUiModel, GiftOption giftOption, boolean z, ShoppingBag shoppingBag, boolean z2, CartSampleUiModel cartSampleUiModel) {
        str.getClass();
        list.getClass();
        giftOption.getClass();
        shoppingBag.getClass();
        this.f55181a = str;
        this.f55182b = i2;
        this.f55183c = list;
        this.d = cartPriceInformationUiModel;
        this.f55184e = giftOption;
        this.f55185f = z;
        this.g = shoppingBag;
        this.f55186h = z2;
        this.f55187i = cartSampleUiModel;
    }

    public static CartUiModel a(CartUiModel cartUiModel, ShoppingBag shoppingBag) {
        String str = cartUiModel.f55181a;
        int i2 = cartUiModel.f55182b;
        List list = cartUiModel.f55183c;
        CartPriceInformationUiModel cartPriceInformationUiModel = cartUiModel.d;
        GiftOption giftOption = cartUiModel.f55184e;
        boolean z = cartUiModel.f55185f;
        boolean z2 = cartUiModel.f55186h;
        CartSampleUiModel cartSampleUiModel = cartUiModel.f55187i;
        str.getClass();
        list.getClass();
        giftOption.getClass();
        return new CartUiModel(str, i2, list, cartPriceInformationUiModel, giftOption, z, shoppingBag, z2, cartSampleUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartUiModel)) {
            return false;
        }
        CartUiModel cartUiModel = (CartUiModel) obj;
        return Intrinsics.c(this.f55181a, cartUiModel.f55181a) && this.f55182b == cartUiModel.f55182b && Intrinsics.c(this.f55183c, cartUiModel.f55183c) && Intrinsics.c(this.d, cartUiModel.d) && Intrinsics.c(this.f55184e, cartUiModel.f55184e) && this.f55185f == cartUiModel.f55185f && Intrinsics.c(this.g, cartUiModel.g) && this.f55186h == cartUiModel.f55186h && Intrinsics.c(this.f55187i, cartUiModel.f55187i);
    }

    public final int hashCode() {
        int iA = n00.a(tr.b(this.f55182b, this.f55181a.hashCode() * 31, 31), 31, this.f55183c);
        CartPriceInformationUiModel cartPriceInformationUiModel = this.d;
        int iB = o60.b((this.g.hashCode() + o60.b((this.f55184e.hashCode() + ((iA + (cartPriceInformationUiModel == null ? 0 : cartPriceInformationUiModel.hashCode())) * 31)) * 31, 31, this.f55185f)) * 31, 31, this.f55186h);
        CartSampleUiModel cartSampleUiModel = this.f55187i;
        return iB + (cartSampleUiModel != null ? cartSampleUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbR = fc.r(this.f55182b, "CartUiModel(identifier=", this.f55181a, ", itemCount=", ", cartItems=");
        sbR.append(this.f55183c);
        sbR.append(", priceInfo=");
        sbR.append(this.d);
        sbR.append(", giftOption=");
        sbR.append(this.f55184e);
        sbR.append(", displayTax=");
        sbR.append(this.f55185f);
        sbR.append(", shoppingBag=");
        sbR.append(this.g);
        sbR.append(", containsPerfume=");
        sbR.append(this.f55186h);
        sbR.append(", cartSamples=");
        sbR.append(this.f55187i);
        sbR.append(")");
        return sbR.toString();
    }

    public /* synthetic */ CartUiModel(String str, int i2, List list, CartPriceInformationUiModel cartPriceInformationUiModel, GiftOption giftOption, boolean z, ShoppingBag shoppingBag, boolean z2, CartSampleUiModel cartSampleUiModel, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i2, list, cartPriceInformationUiModel, giftOption, (i3 & 32) != 0 ? false : z, shoppingBag, z2, cartSampleUiModel);
    }
}
