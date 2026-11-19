package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;", "", "", "title", "surtitle", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "ratio", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleSlideUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f58712c;
    public final ImmersiveArticleSizeCardUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLinkUiModel f58713e;

    public ImmersiveArticleSlideUiModel(String str, String str2, AssetUiModel assetUiModel, ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        assetUiModel.getClass();
        immersiveArticleSizeCardUiModel.getClass();
        contributionLinkUiModel.getClass();
        this.f58710a = str;
        this.f58711b = str2;
        this.f58712c = assetUiModel;
        this.d = immersiveArticleSizeCardUiModel;
        this.f58713e = contributionLinkUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleSlideUiModel)) {
            return false;
        }
        ImmersiveArticleSlideUiModel immersiveArticleSlideUiModel = (ImmersiveArticleSlideUiModel) obj;
        return Intrinsics.c(this.f58710a, immersiveArticleSlideUiModel.f58710a) && Intrinsics.c(this.f58711b, immersiveArticleSlideUiModel.f58711b) && Intrinsics.c(this.f58712c, immersiveArticleSlideUiModel.f58712c) && this.d == immersiveArticleSlideUiModel.d && Intrinsics.c(this.f58713e, immersiveArticleSlideUiModel.f58713e);
    }

    public final int hashCode() {
        int iHashCode = this.f58710a.hashCode() * 31;
        String str = this.f58711b;
        return this.f58713e.hashCode() + ((this.d.hashCode() + ((this.f58712c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleSlideUiModel(title=", this.f58710a, ", surtitle=", this.f58711b, ", asset=");
        sbS.append(this.f58712c);
        sbS.append(", ratio=");
        sbS.append(this.d);
        sbS.append(", contributionLink=");
        sbS.append(this.f58713e);
        sbS.append(")");
        return sbS.toString();
    }
}
