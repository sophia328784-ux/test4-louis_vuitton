package com.vuitton.foundation.model.domain.model.productshortlist;

import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;", "", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;", "sortList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;", "filters", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;", "highlightedFilters", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductListOption {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f68122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductFilters f68123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f68124c;

    public ProductListOption(List<ProductSort> list, ProductFilters productFilters, List<ProductFilterValue> list2) {
        list.getClass();
        list2.getClass();
        this.f68122a = list;
        this.f68123b = productFilters;
        this.f68124c = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListOption)) {
            return false;
        }
        ProductListOption productListOption = (ProductListOption) obj;
        return Intrinsics.c(this.f68122a, productListOption.f68122a) && Intrinsics.c(this.f68123b, productListOption.f68123b) && Intrinsics.c(this.f68124c, productListOption.f68124c);
    }

    public final int hashCode() {
        int iHashCode = this.f68122a.hashCode() * 31;
        ProductFilters productFilters = this.f68123b;
        return this.f68124c.hashCode() + ((iHashCode + (productFilters == null ? 0 : productFilters.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProductListOption(sortList=");
        sb.append(this.f68122a);
        sb.append(", filters=");
        sb.append(this.f68123b);
        sb.append(", highlightedFilters=");
        return a.o(sb, this.f68124c, ")");
    }

    public ProductListOption(List list, ProductFilters productFilters, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, productFilters, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }
}
