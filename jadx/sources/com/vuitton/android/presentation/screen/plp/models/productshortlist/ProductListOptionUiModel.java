package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import defpackage.a;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;", "sortList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;", "filters", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;", "highlightedFilters", "<init>", "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductListOptionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f62976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductFiltersUiModel f62977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f62978c;

    public ProductListOptionUiModel(List<ProductSortUiModel> list, ProductFiltersUiModel productFiltersUiModel, List<ProductFilterValueUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f62976a = list;
        this.f62977b = productFiltersUiModel;
        this.f62978c = list2;
    }

    public static ProductListOptionUiModel a(ProductListOptionUiModel productListOptionUiModel, List list, ProductFiltersUiModel productFiltersUiModel, int i2) {
        if ((i2 & 1) != 0) {
            list = productListOptionUiModel.f62976a;
        }
        List list2 = productListOptionUiModel.f62978c;
        list.getClass();
        list2.getClass();
        return new ProductListOptionUiModel(list, productFiltersUiModel, list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListOptionUiModel)) {
            return false;
        }
        ProductListOptionUiModel productListOptionUiModel = (ProductListOptionUiModel) obj;
        return Intrinsics.c(this.f62976a, productListOptionUiModel.f62976a) && Intrinsics.c(this.f62977b, productListOptionUiModel.f62977b) && Intrinsics.c(this.f62978c, productListOptionUiModel.f62978c);
    }

    public final int hashCode() {
        int iHashCode = this.f62976a.hashCode() * 31;
        ProductFiltersUiModel productFiltersUiModel = this.f62977b;
        return this.f62978c.hashCode() + ((iHashCode + (productFiltersUiModel == null ? 0 : productFiltersUiModel.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProductListOptionUiModel(sortList=");
        sb.append(this.f62976a);
        sb.append(", filters=");
        sb.append(this.f62977b);
        sb.append(", highlightedFilters=");
        return a.o(sb, this.f62978c, ")");
    }

    public ProductListOptionUiModel(List list, ProductFiltersUiModel productFiltersUiModel, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, productFiltersUiModel, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }
}
