package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;", "", "Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;", "gifting", "Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;", "shoppingBag", "Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;", "packaging", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartContributionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContributionGiftingUiModel f55136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionShoppingBagUiModel f55137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionPackagingUiModel f55138c;

    public CartContributionUiModel(ContributionGiftingUiModel contributionGiftingUiModel, ContributionShoppingBagUiModel contributionShoppingBagUiModel, ContributionPackagingUiModel contributionPackagingUiModel) {
        contributionGiftingUiModel.getClass();
        contributionShoppingBagUiModel.getClass();
        contributionPackagingUiModel.getClass();
        this.f55136a = contributionGiftingUiModel;
        this.f55137b = contributionShoppingBagUiModel;
        this.f55138c = contributionPackagingUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CartContributionUiModel)) {
            return false;
        }
        CartContributionUiModel cartContributionUiModel = (CartContributionUiModel) obj;
        return Intrinsics.c(this.f55136a, cartContributionUiModel.f55136a) && Intrinsics.c(this.f55137b, cartContributionUiModel.f55137b) && Intrinsics.c(this.f55138c, cartContributionUiModel.f55138c);
    }

    public final int hashCode() {
        return this.f55138c.hashCode() + ((this.f55137b.hashCode() + (this.f55136a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CartContributionUiModel(gifting=" + this.f55136a + ", shoppingBag=" + this.f55137b + ", packaging=" + this.f55138c + ")";
    }
}
