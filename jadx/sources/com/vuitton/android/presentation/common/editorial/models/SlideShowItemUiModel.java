package com.vuitton.android.presentation.common.editorial.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;", "", "", b.a.f24015b, "title", "surtitle", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SlideShowItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f50873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f50875c;
    public final ContributionLinkUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetUiModel f50876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TargetingUiModel f50877f;

    public SlideShowItemUiModel(String str, String str2, String str3, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, TargetingUiModel targetingUiModel) {
        str.getClass();
        this.f50873a = str;
        this.f50874b = str2;
        this.f50875c = str3;
        this.d = contributionLinkUiModel;
        this.f50876e = assetUiModel;
        this.f50877f = targetingUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SlideShowItemUiModel)) {
            return false;
        }
        SlideShowItemUiModel slideShowItemUiModel = (SlideShowItemUiModel) obj;
        return Intrinsics.c(this.f50873a, slideShowItemUiModel.f50873a) && Intrinsics.c(this.f50874b, slideShowItemUiModel.f50874b) && Intrinsics.c(this.f50875c, slideShowItemUiModel.f50875c) && Intrinsics.c(this.d, slideShowItemUiModel.d) && Intrinsics.c(this.f50876e, slideShowItemUiModel.f50876e) && Intrinsics.c(this.f50877f, slideShowItemUiModel.f50877f);
    }

    public final int hashCode() {
        int iHashCode = this.f50873a.hashCode() * 31;
        String str = this.f50874b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f50875c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ContributionLinkUiModel contributionLinkUiModel = this.d;
        int iHashCode4 = (iHashCode3 + (contributionLinkUiModel == null ? 0 : contributionLinkUiModel.hashCode())) * 31;
        AssetUiModel assetUiModel = this.f50876e;
        int iHashCode5 = (iHashCode4 + (assetUiModel == null ? 0 : assetUiModel.hashCode())) * 31;
        TargetingUiModel targetingUiModel = this.f50877f;
        return iHashCode5 + (targetingUiModel != null ? targetingUiModel.f50878a.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SlideShowItemUiModel(id=", this.f50873a, ", title=", this.f50874b, ", surtitle=");
        sbS.append(this.f50875c);
        sbS.append(", contributionLink=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f50876e);
        sbS.append(", targeting=");
        sbS.append(this.f50877f);
        sbS.append(")");
        return sbS.toString();
    }

    public /* synthetic */ SlideShowItemUiModel(String str, String str2, String str3, ContributionLinkUiModel contributionLinkUiModel, AssetUiModel assetUiModel, TargetingUiModel targetingUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, contributionLinkUiModel, assetUiModel, (i2 & 32) != 0 ? null : targetingUiModel);
    }
}
