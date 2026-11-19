package com.vuitton.android.presentation.screen.thankyou.models;

import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;", "", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;", "shippingAmount", "totalAmount", "totalTaxIncludedAmount", "", "Lcom/vuitton/android/presentation/screen/thankyou/models/TaxInfoUiModel;", "allTaxes", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPriceInfoUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPriceUiModel f65252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceUiModel f65253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPriceUiModel f65254c;
    public final List d;

    public CartPriceInfoUiModel(CartPriceUiModel cartPriceUiModel, CartPriceUiModel cartPriceUiModel2, CartPriceUiModel cartPriceUiModel3, List<TaxInfoUiModel> list) {
        cartPriceUiModel.getClass();
        cartPriceUiModel2.getClass();
        cartPriceUiModel3.getClass();
        list.getClass();
        this.f65252a = cartPriceUiModel;
        this.f65253b = cartPriceUiModel2;
        this.f65254c = cartPriceUiModel3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInfoUiModel)) {
            return false;
        }
        CartPriceInfoUiModel cartPriceInfoUiModel = (CartPriceInfoUiModel) obj;
        return Intrinsics.c(this.f65252a, cartPriceInfoUiModel.f65252a) && Intrinsics.c(this.f65253b, cartPriceInfoUiModel.f65253b) && Intrinsics.c(this.f65254c, cartPriceInfoUiModel.f65254c) && Intrinsics.c(this.d, cartPriceInfoUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f65254c.hashCode() + ((this.f65253b.hashCode() + (this.f65252a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CartPriceInfoUiModel(shippingAmount=" + this.f65252a + ", totalAmount=" + this.f65253b + ", totalTaxIncludedAmount=" + this.f65254c + ", allTaxes=" + this.d + ")";
    }
}
