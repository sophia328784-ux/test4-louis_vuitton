package com.vuitton.android.presentation.screen.plp.models;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "product", "", "imageIndex", "<init>", "(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FocusedProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlpProductUiModel f62873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f62874b;

    public FocusedProductUiModel(PlpProductUiModel plpProductUiModel, int i2) {
        plpProductUiModel.getClass();
        this.f62873a = plpProductUiModel;
        this.f62874b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FocusedProductUiModel)) {
            return false;
        }
        FocusedProductUiModel focusedProductUiModel = (FocusedProductUiModel) obj;
        return Intrinsics.c(this.f62873a, focusedProductUiModel.f62873a) && this.f62874b == focusedProductUiModel.f62874b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f62874b) + (this.f62873a.hashCode() * 31);
    }

    public final String toString() {
        return "FocusedProductUiModel(product=" + this.f62873a + ", imageIndex=" + this.f62874b + ")";
    }
}
