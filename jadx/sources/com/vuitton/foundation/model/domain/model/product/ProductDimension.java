package com.vuitton.foundation.model.domain.model.product;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ProductDimension;", "", "", "value", "", "unitText", "<init>", "(DLjava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductDimension {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f67899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67900b;

    public ProductDimension(double d, String str) {
        str.getClass();
        this.f67899a = d;
        this.f67900b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductDimension)) {
            return false;
        }
        ProductDimension productDimension = (ProductDimension) obj;
        return Double.compare(this.f67899a, productDimension.f67899a) == 0 && Intrinsics.c(this.f67900b, productDimension.f67900b);
    }

    public final int hashCode() {
        return this.f67900b.hashCode() + (Double.hashCode(this.f67899a) * 31);
    }

    public final String toString() {
        return "ProductDimension(value=" + this.f67899a + ", unitText=" + this.f67900b + ")";
    }
}
