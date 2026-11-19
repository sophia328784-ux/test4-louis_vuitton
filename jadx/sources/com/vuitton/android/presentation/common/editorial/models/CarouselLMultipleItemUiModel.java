package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;", "titles", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselLMultipleItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50785a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CarouselItemTitlesUiModel f50786b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkUiModel f50787c;
    public final AssetUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TargetingUiModel f50788e;

    public CarouselLMultipleItemUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, TargetingUiModel targetingUiModel) {
        str.getClass();
        contributionLinkUiModel.getClass();
        assetUiModel.getClass();
        this.f50785a = str;
        this.f50786b = carouselItemTitlesUiModel;
        this.f50787c = contributionLinkUiModel;
        this.d = assetUiModel;
        this.f50788e = targetingUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselLMultipleItemUiModel)) {
            return false;
        }
        CarouselLMultipleItemUiModel carouselLMultipleItemUiModel = (CarouselLMultipleItemUiModel) obj;
        return Intrinsics.c(this.f50785a, carouselLMultipleItemUiModel.f50785a) && Intrinsics.c(this.f50786b, carouselLMultipleItemUiModel.f50786b) && Intrinsics.c(this.f50787c, carouselLMultipleItemUiModel.f50787c) && Intrinsics.c(this.d, carouselLMultipleItemUiModel.d) && Intrinsics.c(this.f50788e, carouselLMultipleItemUiModel.f50788e);
    }

    public final int hashCode() {
        int iHashCode = this.f50785a.hashCode() * 31;
        CarouselItemTitlesUiModel carouselItemTitlesUiModel = this.f50786b;
        int iHashCode2 = (this.d.hashCode() + ((this.f50787c.hashCode() + ((iHashCode + (carouselItemTitlesUiModel == null ? 0 : carouselItemTitlesUiModel.hashCode())) * 31)) * 31)) * 31;
        TargetingUiModel targetingUiModel = this.f50788e;
        return iHashCode2 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
    }

    public final String toString() {
        return "CarouselLMultipleItemUiModel(id=" + this.f50785a + ", titles=" + this.f50786b + ", contributionLink=" + this.f50787c + ", asset=" + this.d + ", targeting=" + this.f50788e + ")";
    }
}
