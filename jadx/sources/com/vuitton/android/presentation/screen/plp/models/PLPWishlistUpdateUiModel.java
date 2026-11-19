package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;", "", "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;", "product", "", "putInWishlist", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPWishlistUpdateUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductForWishlist f62907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62908b;

    public PLPWishlistUpdateUiModel(ProductForWishlist productForWishlist, boolean z) {
        productForWishlist.getClass();
        this.f62907a = productForWishlist;
        this.f62908b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPWishlistUpdateUiModel)) {
            return false;
        }
        PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel = (PLPWishlistUpdateUiModel) obj;
        return Intrinsics.c(this.f62907a, pLPWishlistUpdateUiModel.f62907a) && this.f62908b == pLPWishlistUpdateUiModel.f62908b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f62908b) + (this.f62907a.hashCode() * 31);
    }

    public final String toString() {
        return "PLPWishlistUpdateUiModel(product=" + this.f62907a + ", putInWishlist=" + this.f62908b + ")";
    }
}
