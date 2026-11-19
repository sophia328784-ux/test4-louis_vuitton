package com.vuitton.foundation.model.domain.model.productshortlist;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;", "characteristic", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductVariation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductShortCharacteristic f68143b;

    public ProductVariation(String str, ProductShortCharacteristic productShortCharacteristic, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        productShortCharacteristic.getClass();
        this.f68142a = str;
        this.f68143b = productShortCharacteristic;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductVariation)) {
            return false;
        }
        ProductVariation productVariation = (ProductVariation) obj;
        String str = productVariation.f68142a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f68142a.equals(str) && this.f68143b.equals(productVariation.f68143b);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f68143b.hashCode() + (this.f68142a.hashCode() * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return "ProductVariation(sku=" + this.f68142a + ", characteristic=" + this.f68143b + ")";
    }
}
