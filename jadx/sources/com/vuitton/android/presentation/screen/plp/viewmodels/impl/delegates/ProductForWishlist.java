package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Landroidx/compose/runtime/MutableState;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;", "wishlistState", "<init>", "(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductForWishlist {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f63168b;

    public ProductForWishlist(String str, MutableState mutableState, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f63167a = str;
        this.f63168b = mutableState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductForWishlist)) {
            return false;
        }
        ProductForWishlist productForWishlist = (ProductForWishlist) obj;
        String str = productForWishlist.f63167a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f63167a.equals(str) && Intrinsics.c(this.f63168b, productForWishlist.f63168b);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iHashCode = this.f63167a.hashCode() * 31;
        MutableState mutableState = this.f63168b;
        return iHashCode + (mutableState == null ? 0 : mutableState.hashCode());
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return "ProductForWishlist(sku=" + this.f63167a + ", wishlistState=" + this.f63168b + ")";
    }
}
