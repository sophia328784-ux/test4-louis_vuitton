package com.vuitton.android.presentation.screen.personalselections.detail.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;", "", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;", "plpItems", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "unavailableProductSkus", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EnrichedProductsUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f62566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f62567b;

    public EnrichedProductsUiModel(List<PlpProductUiModel> list, List<SkuIdUiModel> list2) {
        list.getClass();
        list2.getClass();
        this.f62566a = list;
        this.f62567b = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EnrichedProductsUiModel)) {
            return false;
        }
        EnrichedProductsUiModel enrichedProductsUiModel = (EnrichedProductsUiModel) obj;
        return Intrinsics.c(this.f62566a, enrichedProductsUiModel.f62566a) && Intrinsics.c(this.f62567b, enrichedProductsUiModel.f62567b);
    }

    public final int hashCode() {
        return this.f62567b.hashCode() + (this.f62566a.hashCode() * 31);
    }

    public final String toString() {
        return "EnrichedProductsUiModel(plpItems=" + this.f62566a + ", unavailableProductSkus=" + this.f62567b + ")";
    }
}
