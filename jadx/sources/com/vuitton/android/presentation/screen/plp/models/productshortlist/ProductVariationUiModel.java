package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;", "characteristic", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductVariationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductShortCharacteristicUiModel f62997b;

    public ProductVariationUiModel(String str, ProductShortCharacteristicUiModel productShortCharacteristicUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        productShortCharacteristicUiModel.getClass();
        this.f62996a = str;
        this.f62997b = productShortCharacteristicUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVariationUiModel)) {
            return false;
        }
        ProductVariationUiModel productVariationUiModel = (ProductVariationUiModel) obj;
        String str = productVariationUiModel.f62996a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62996a.equals(str) && this.f62997b.equals(productVariationUiModel.f62997b);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f62997b.hashCode() + (this.f62996a.hashCode() * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return "ProductVariationUiModel(sku=" + this.f62996a + ", characteristic=" + this.f62997b + ")";
    }
}
