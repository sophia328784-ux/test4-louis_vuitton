package com.vuitton.foundation.model.domain.model.productshortlist;

import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;", "", "", "currentFiltersId", "", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;", "categoryList", "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;", "booleanList", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFilters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f68117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f68118c;

    public ProductFilters(String str, List<ProductFiltersCategory> list, List<ProductBooleanFilter> list2) {
        list.getClass();
        list2.getClass();
        this.f68116a = str;
        this.f68117b = list;
        this.f68118c = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFilters)) {
            return false;
        }
        ProductFilters productFilters = (ProductFilters) obj;
        return Intrinsics.c(this.f68116a, productFilters.f68116a) && Intrinsics.c(this.f68117b, productFilters.f68117b) && Intrinsics.c(this.f68118c, productFilters.f68118c);
    }

    public final int hashCode() {
        String str = this.f68116a;
        return this.f68118c.hashCode() + n00.a((str == null ? 0 : str.hashCode()) * 31, 31, this.f68117b);
    }

    public final String toString() {
        return a.o(d21.t("ProductFilters(currentFiltersId=", this.f68116a, ", categoryList=", this.f68117b, ", booleanList="), this.f68118c, ")");
    }
}
