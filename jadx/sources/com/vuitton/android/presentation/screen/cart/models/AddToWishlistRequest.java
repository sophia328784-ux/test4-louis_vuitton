package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;", "", "", "isUserLogged", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "cartItemToAdd", "<init>", "(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddToWishlistRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f55130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CartItemUiModel f55131b;

    public AddToWishlistRequest(boolean z, CartItemUiModel cartItemUiModel) {
        cartItemUiModel.getClass();
        this.f55130a = z;
        this.f55131b = cartItemUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AddToWishlistRequest)) {
            return false;
        }
        AddToWishlistRequest addToWishlistRequest = (AddToWishlistRequest) obj;
        return this.f55130a == addToWishlistRequest.f55130a && Intrinsics.c(this.f55131b, addToWishlistRequest.f55131b);
    }

    public final int hashCode() {
        return this.f55131b.hashCode() + (Boolean.hashCode(this.f55130a) * 31);
    }

    public final String toString() {
        return "AddToWishlistRequest(isUserLogged=" + this.f55130a + ", cartItemToAdd=" + this.f55131b + ")";
    }
}
