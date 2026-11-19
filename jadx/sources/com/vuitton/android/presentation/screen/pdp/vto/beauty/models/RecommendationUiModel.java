package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;", "", "Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;", "product", "", "description", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;", "tryOnProduct", "<init>", "(Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class RecommendationUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductTinyUiModel f62170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TryOnProductUiModel f62172c;

    public RecommendationUiModel(ProductTinyUiModel productTinyUiModel, String str, TryOnProductUiModel tryOnProductUiModel) {
        productTinyUiModel.getClass();
        str.getClass();
        this.f62170a = productTinyUiModel;
        this.f62171b = str;
        this.f62172c = tryOnProductUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecommendationUiModel)) {
            return false;
        }
        RecommendationUiModel recommendationUiModel = (RecommendationUiModel) obj;
        return Intrinsics.c(this.f62170a, recommendationUiModel.f62170a) && Intrinsics.c(this.f62171b, recommendationUiModel.f62171b) && Intrinsics.c(this.f62172c, recommendationUiModel.f62172c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f62170a.hashCode() * 31, 31, this.f62171b);
        TryOnProductUiModel tryOnProductUiModel = this.f62172c;
        return iB + (tryOnProductUiModel == null ? 0 : tryOnProductUiModel.hashCode());
    }

    public final String toString() {
        return "RecommendationUiModel(product=" + this.f62170a + ", description=" + this.f62171b + ", tryOnProduct=" + this.f62172c + ")";
    }
}
