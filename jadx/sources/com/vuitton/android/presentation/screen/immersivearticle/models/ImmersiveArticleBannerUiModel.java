package com.vuitton.android.presentation.screen.immersivearticle.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;", "", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;", "theme", "", "title", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;", "cta", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleBannerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionThemeUiModel f58645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f58646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleCtaUiModel f58647c;

    public ImmersiveArticleBannerUiModel(SectionThemeUiModel sectionThemeUiModel, String str, ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel) {
        sectionThemeUiModel.getClass();
        str.getClass();
        this.f58645a = sectionThemeUiModel;
        this.f58646b = str;
        this.f58647c = immersiveArticleCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleBannerUiModel)) {
            return false;
        }
        ImmersiveArticleBannerUiModel immersiveArticleBannerUiModel = (ImmersiveArticleBannerUiModel) obj;
        return Intrinsics.c(this.f58645a, immersiveArticleBannerUiModel.f58645a) && Intrinsics.c(this.f58646b, immersiveArticleBannerUiModel.f58646b) && Intrinsics.c(this.f58647c, immersiveArticleBannerUiModel.f58647c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f58645a.hashCode() * 31, 31, this.f58646b);
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = this.f58647c;
        return iB + (immersiveArticleCtaUiModel == null ? 0 : immersiveArticleCtaUiModel.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleBannerUiModel(theme=" + this.f58645a + ", title=" + this.f58646b + ", cta=" + this.f58647c + ")";
    }
}
