package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;", "", "", b.a.f24015b, "Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;", "titles", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CarouselMItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CarouselItemTitlesUiModel f50793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkUiModel f50794c;
    public final AssetUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TargetingUiModel f50795e;

    public CarouselMItemUiModel(String str, CarouselItemTitlesUiModel carouselItemTitlesUiModel, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, TargetingUiModel targetingUiModel) {
        str.getClass();
        assetUiModel.getClass();
        this.f50792a = str;
        this.f50793b = carouselItemTitlesUiModel;
        this.f50794c = contributionLinkUiModel;
        this.d = assetUiModel;
        this.f50795e = targetingUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarouselMItemUiModel)) {
            return false;
        }
        CarouselMItemUiModel carouselMItemUiModel = (CarouselMItemUiModel) obj;
        return Intrinsics.c(this.f50792a, carouselMItemUiModel.f50792a) && Intrinsics.c(this.f50793b, carouselMItemUiModel.f50793b) && Intrinsics.c(this.f50794c, carouselMItemUiModel.f50794c) && Intrinsics.c(this.d, carouselMItemUiModel.d) && Intrinsics.c(this.f50795e, carouselMItemUiModel.f50795e);
    }

    public final int hashCode() {
        int iHashCode = this.f50792a.hashCode() * 31;
        CarouselItemTitlesUiModel carouselItemTitlesUiModel = this.f50793b;
        int iHashCode2 = (iHashCode + (carouselItemTitlesUiModel == null ? 0 : carouselItemTitlesUiModel.hashCode())) * 31;
        ContributionLinkUiModel contributionLinkUiModel = this.f50794c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (contributionLinkUiModel == null ? 0 : contributionLinkUiModel.hashCode())) * 31)) * 31;
        TargetingUiModel targetingUiModel = this.f50795e;
        return iHashCode3 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
    }

    public final String toString() {
        return "CarouselMItemUiModel(id=" + this.f50792a + ", titles=" + this.f50793b + ", contributionLink=" + this.f50794c + ", asset=" + this.d + ", targeting=" + this.f50795e + ")";
    }
}
