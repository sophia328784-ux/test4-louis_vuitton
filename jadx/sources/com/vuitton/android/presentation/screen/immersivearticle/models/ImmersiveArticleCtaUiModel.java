package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;", "", "", "title", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "theme", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleCtaUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58648a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLinkUiModel f58649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SectionThemeUiModel f58650c;

    public ImmersiveArticleCtaUiModel(String str, ContributionLinkUiModel contributionLinkUiModel, SectionThemeUiModel sectionThemeUiModel) {
        contributionLinkUiModel.getClass();
        this.f58648a = str;
        this.f58649b = contributionLinkUiModel;
        this.f58650c = sectionThemeUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleCtaUiModel)) {
            return false;
        }
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = (ImmersiveArticleCtaUiModel) obj;
        return Intrinsics.c(this.f58648a, immersiveArticleCtaUiModel.f58648a) && Intrinsics.c(this.f58649b, immersiveArticleCtaUiModel.f58649b) && Intrinsics.c(this.f58650c, immersiveArticleCtaUiModel.f58650c);
    }

    public final int hashCode() {
        String str = this.f58648a;
        int iHashCode = (this.f58649b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31;
        SectionThemeUiModel sectionThemeUiModel = this.f58650c;
        return iHashCode + (sectionThemeUiModel != null ? sectionThemeUiModel.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleCtaUiModel(title=" + this.f58648a + ", contributionLink=" + this.f58649b + ", theme=" + this.f58650c + ")";
    }
}
