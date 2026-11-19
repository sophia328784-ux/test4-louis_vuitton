package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;", "", "Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;", "totalAmount", "taxAmount", "shippingAmount", "unitAmount", "totalTaxIncludedAmount", "Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;", "taxDetails", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartPriceInformationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CartPriceUiModel f55153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartPriceUiModel f55154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CartPriceUiModel f55155c;
    public final CartPriceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CartPriceUiModel f55156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormattedTaxDetailsUiModel f55157f;

    public CartPriceInformationUiModel(CartPriceUiModel cartPriceUiModel, CartPriceUiModel cartPriceUiModel2, CartPriceUiModel cartPriceUiModel3, CartPriceUiModel cartPriceUiModel4, CartPriceUiModel cartPriceUiModel5, FormattedTaxDetailsUiModel formattedTaxDetailsUiModel) {
        cartPriceUiModel.getClass();
        cartPriceUiModel2.getClass();
        this.f55153a = cartPriceUiModel;
        this.f55154b = cartPriceUiModel2;
        this.f55155c = cartPriceUiModel3;
        this.d = cartPriceUiModel4;
        this.f55156e = cartPriceUiModel5;
        this.f55157f = formattedTaxDetailsUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartPriceInformationUiModel)) {
            return false;
        }
        CartPriceInformationUiModel cartPriceInformationUiModel = (CartPriceInformationUiModel) obj;
        return Intrinsics.c(this.f55153a, cartPriceInformationUiModel.f55153a) && Intrinsics.c(this.f55154b, cartPriceInformationUiModel.f55154b) && Intrinsics.c(this.f55155c, cartPriceInformationUiModel.f55155c) && Intrinsics.c(this.d, cartPriceInformationUiModel.d) && Intrinsics.c(this.f55156e, cartPriceInformationUiModel.f55156e) && Intrinsics.c(this.f55157f, cartPriceInformationUiModel.f55157f);
    }

    public final int hashCode() {
        int iHashCode = (this.f55154b.hashCode() + (this.f55153a.hashCode() * 31)) * 31;
        CartPriceUiModel cartPriceUiModel = this.f55155c;
        int iHashCode2 = (iHashCode + (cartPriceUiModel == null ? 0 : cartPriceUiModel.hashCode())) * 31;
        CartPriceUiModel cartPriceUiModel2 = this.d;
        int iHashCode3 = (iHashCode2 + (cartPriceUiModel2 == null ? 0 : cartPriceUiModel2.hashCode())) * 31;
        CartPriceUiModel cartPriceUiModel3 = this.f55156e;
        int iHashCode4 = (iHashCode3 + (cartPriceUiModel3 == null ? 0 : cartPriceUiModel3.hashCode())) * 31;
        FormattedTaxDetailsUiModel formattedTaxDetailsUiModel = this.f55157f;
        return iHashCode4 + (formattedTaxDetailsUiModel != null ? formattedTaxDetailsUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "CartPriceInformationUiModel(totalAmount=" + this.f55153a + ", taxAmount=" + this.f55154b + ", shippingAmount=" + this.f55155c + ", unitAmount=" + this.d + ", totalTaxIncludedAmount=" + this.f55156e + ", taxDetails=" + this.f55157f + ")";
    }
}
