package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselLSingleItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50789a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetUiModel f50790b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TargetingUiModel f50791c;

    public CarouselLSingleItemUiModel(String str, AssetUiModel assetUiModel, TargetingUiModel targetingUiModel) {
        str.getClass();
        assetUiModel.getClass();
        this.f50789a = str;
        this.f50790b = assetUiModel;
        this.f50791c = targetingUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselLSingleItemUiModel)) {
            return false;
        }
        CarouselLSingleItemUiModel carouselLSingleItemUiModel = (CarouselLSingleItemUiModel) obj;
        return Intrinsics.c(this.f50789a, carouselLSingleItemUiModel.f50789a) && Intrinsics.c(this.f50790b, carouselLSingleItemUiModel.f50790b) && Intrinsics.c(this.f50791c, carouselLSingleItemUiModel.f50791c);
    }

    public final int hashCode() {
        int iHashCode = (this.f50790b.hashCode() + (this.f50789a.hashCode() * 31)) * 31;
        TargetingUiModel targetingUiModel = this.f50791c;
        return iHashCode + (targetingUiModel == null ? 0 : targetingUiModel.f50878a.hashCode());
    }

    public final String toString() {
        return "CarouselLSingleItemUiModel(id=" + this.f50789a + ", asset=" + this.f50790b + ", targeting=" + this.f50791c + ")";
    }
}
