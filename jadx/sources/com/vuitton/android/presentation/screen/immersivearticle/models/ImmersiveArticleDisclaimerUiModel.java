package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleDisclaimerUiModel;", "", "", "description", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;", "cta", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ImmersiveArticleDisclaimerUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f58651a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleCtaUiModel f58652b;

    public ImmersiveArticleDisclaimerUiModel(String str, ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel) {
        str.getClass();
        this.f58651a = str;
        this.f58652b = immersiveArticleCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleDisclaimerUiModel)) {
            return false;
        }
        ImmersiveArticleDisclaimerUiModel immersiveArticleDisclaimerUiModel = (ImmersiveArticleDisclaimerUiModel) obj;
        return Intrinsics.c(this.f58651a, immersiveArticleDisclaimerUiModel.f58651a) && Intrinsics.c(this.f58652b, immersiveArticleDisclaimerUiModel.f58652b);
    }

    public final int hashCode() {
        int iHashCode = this.f58651a.hashCode() * 31;
        ImmersiveArticleCtaUiModel immersiveArticleCtaUiModel = this.f58652b;
        return iHashCode + (immersiveArticleCtaUiModel == null ? 0 : immersiveArticleCtaUiModel.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleDisclaimerUiModel(description=" + this.f58651a + ", cta=" + this.f58652b + ")";
    }
}
