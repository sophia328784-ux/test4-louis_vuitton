package com.vuitton.android.presentation.screen.orders.models;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;", "", "", "name", "sku", "imageUrl", "", "isAvailable", "Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;", "category", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CategoryOptionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60230c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductExchangeCategoryUiModel f60231e;

    public CategoryOptionUiModel(String str, String str2, String str3, boolean z, ProductExchangeCategoryUiModel productExchangeCategoryUiModel) {
        str.getClass();
        str2.getClass();
        this.f60228a = str;
        this.f60229b = str2;
        this.f60230c = str3;
        this.d = z;
        this.f60231e = productExchangeCategoryUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryOptionUiModel)) {
            return false;
        }
        CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) obj;
        return Intrinsics.c(this.f60228a, categoryOptionUiModel.f60228a) && Intrinsics.c(this.f60229b, categoryOptionUiModel.f60229b) && Intrinsics.c(this.f60230c, categoryOptionUiModel.f60230c) && this.d == categoryOptionUiModel.d && Intrinsics.c(this.f60231e, categoryOptionUiModel.f60231e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f60228a.hashCode() * 31, 31, this.f60229b);
        String str = this.f60230c;
        int iB2 = o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        ProductExchangeCategoryUiModel productExchangeCategoryUiModel = this.f60231e;
        return iB2 + (productExchangeCategoryUiModel != null ? productExchangeCategoryUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CategoryOptionUiModel(name=", this.f60228a, ", sku=", this.f60229b, ", imageUrl=");
        pq0.A(this.f60230c, ", isAvailable=", ", category=", sbS, this.d);
        sbS.append(this.f60231e);
        sbS.append(")");
        return sbS.toString();
    }
}
