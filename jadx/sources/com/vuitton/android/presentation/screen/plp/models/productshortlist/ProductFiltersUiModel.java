package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import defpackage.a;
import defpackage.d21;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;", "", "", "currentFiltersId", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;", "categoryList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;", "booleanList", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFiltersUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62974b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f62975c;

    public ProductFiltersUiModel(String str, List<ProductFiltersCategoryUiModel> list, List<ProductBooleanFilterUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f62973a = str;
        this.f62974b = list;
        this.f62975c = list2;
    }

    public static ProductFiltersUiModel a(ProductFiltersUiModel productFiltersUiModel, String str, List list, List list2, int i2) {
        if ((i2 & 1) != 0) {
            str = productFiltersUiModel.f62973a;
        }
        if ((i2 & 2) != 0) {
            list = productFiltersUiModel.f62974b;
        }
        if ((i2 & 4) != 0) {
            list2 = productFiltersUiModel.f62975c;
        }
        productFiltersUiModel.getClass();
        list.getClass();
        list2.getClass();
        return new ProductFiltersUiModel(str, list, list2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFiltersUiModel)) {
            return false;
        }
        ProductFiltersUiModel productFiltersUiModel = (ProductFiltersUiModel) obj;
        return Intrinsics.c(this.f62973a, productFiltersUiModel.f62973a) && Intrinsics.c(this.f62974b, productFiltersUiModel.f62974b) && Intrinsics.c(this.f62975c, productFiltersUiModel.f62975c);
    }

    public final int hashCode() {
        String str = this.f62973a;
        return this.f62975c.hashCode() + n00.a((str == null ? 0 : str.hashCode()) * 31, 31, this.f62974b);
    }

    public final String toString() {
        return a.o(d21.t("ProductFiltersUiModel(currentFiltersId=", this.f62973a, ", categoryList=", this.f62974b, ", booleanList="), this.f62975c, ")");
    }
}
