package com.vuitton.foundation.model.domain.model.dynamicyield;

import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;", "", "Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;", "product", "", "slotId", "<init>", "(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DYRecommendedProduct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductTiny f67562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67563b;

    public DYRecommendedProduct(ProductTiny productTiny, String str) {
        productTiny.getClass();
        str.getClass();
        this.f67562a = productTiny;
        this.f67563b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DYRecommendedProduct)) {
            return false;
        }
        DYRecommendedProduct dYRecommendedProduct = (DYRecommendedProduct) obj;
        return Intrinsics.c(this.f67562a, dYRecommendedProduct.f67562a) && Intrinsics.c(this.f67563b, dYRecommendedProduct.f67563b);
    }

    public final int hashCode() {
        return this.f67563b.hashCode() + (this.f67562a.hashCode() * 31);
    }

    public final String toString() {
        return "DYRecommendedProduct(product=" + this.f67562a + ", slotId=" + this.f67563b + ")";
    }
}
