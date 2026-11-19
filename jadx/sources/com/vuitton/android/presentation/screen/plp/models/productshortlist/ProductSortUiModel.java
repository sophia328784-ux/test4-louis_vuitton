package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import com.batch.android.s.b;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;", "", "", b.a.f24015b, "title", "", "isSelected", "isEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductSortUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f62993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f62995c;
    public final boolean d;

    public ProductSortUiModel(String str, String str2, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f62993a = str;
        this.f62994b = str2;
        this.f62995c = z;
        this.d = z2;
    }

    public static ProductSortUiModel a(ProductSortUiModel productSortUiModel, boolean z) {
        String str = productSortUiModel.f62993a;
        String str2 = productSortUiModel.f62994b;
        boolean z2 = productSortUiModel.d;
        str.getClass();
        str2.getClass();
        return new ProductSortUiModel(str, str2, z, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductSortUiModel)) {
            return false;
        }
        ProductSortUiModel productSortUiModel = (ProductSortUiModel) obj;
        return Intrinsics.c(this.f62993a, productSortUiModel.f62993a) && Intrinsics.c(this.f62994b, productSortUiModel.f62994b) && this.f62995c == productSortUiModel.f62995c && this.d == productSortUiModel.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(fc.b(this.f62993a.hashCode() * 31, 31, this.f62994b), 31, this.f62995c);
    }

    public final String toString() {
        return pq0.p(fc.s("ProductSortUiModel(id=", this.f62993a, ", title=", this.f62994b, ", isSelected="), this.f62995c, ", isEnabled=", this.d, ")");
    }
}
