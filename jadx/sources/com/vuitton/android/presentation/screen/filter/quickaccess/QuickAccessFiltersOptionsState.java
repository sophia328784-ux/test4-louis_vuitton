package com.vuitton.android.presentation.screen.filter.quickaccess;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "options", "", "categoryId", "", "isDataReady", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class QuickAccessFiltersOptionsState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductListOptionUiModel f58016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f58018c;

    public QuickAccessFiltersOptionsState(ProductListOptionUiModel productListOptionUiModel, String str, boolean z) {
        this.f58016a = productListOptionUiModel;
        this.f58017b = str;
        this.f58018c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuickAccessFiltersOptionsState)) {
            return false;
        }
        QuickAccessFiltersOptionsState quickAccessFiltersOptionsState = (QuickAccessFiltersOptionsState) obj;
        return Intrinsics.c(this.f58016a, quickAccessFiltersOptionsState.f58016a) && Intrinsics.c(this.f58017b, quickAccessFiltersOptionsState.f58017b) && this.f58018c == quickAccessFiltersOptionsState.f58018c;
    }

    public final int hashCode() {
        ProductListOptionUiModel productListOptionUiModel = this.f58016a;
        int iHashCode = (productListOptionUiModel == null ? 0 : productListOptionUiModel.hashCode()) * 31;
        String str = this.f58017b;
        return Boolean.hashCode(this.f58018c) + ((iHashCode + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("QuickAccessFiltersOptionsState(options=");
        sb.append(this.f58016a);
        sb.append(", categoryId=");
        sb.append(this.f58017b);
        sb.append(", isDataReady=");
        return defpackage.a.p(sb, this.f58018c, ")");
    }
}
