package com.vuitton.foundation.model.domain.model.product.availability;

import defpackage.d21;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;", "", "", "Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;", "skuAvailabilityList", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductStock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67946a;

    public ProductStock(List<SkuAvailability> list) {
        this.f67946a = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ProductStock) && Intrinsics.c(this.f67946a, ((ProductStock) obj).f67946a);
    }

    public final int hashCode() {
        List list = this.f67946a;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public final String toString() {
        return d21.o("ProductStock(skuAvailabilityList=", ")", this.f67946a);
    }
}
