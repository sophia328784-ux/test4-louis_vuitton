package com.vuitton.android.presentation.screen.immersivearticle.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "", "OpenVideoInFullScreen", "OnContributionLinkClick", "OnLookModuleCtaClick", "OnProductModuleClick", "RedirectToWishlist", "OnLaunchAuthentication", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnProductModuleClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleNavigationType {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "<init>", "(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnContributionLinkClick extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContributionLinkUiModel f58691a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnContributionLinkClick(ContributionLinkUiModel contributionLinkUiModel) {
            super(null);
            contributionLinkUiModel.getClass();
            this.f58691a = contributionLinkUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnContributionLinkClick) && Intrinsics.c(this.f58691a, ((OnContributionLinkClick) obj).f58691a);
        }

        public final int hashCode() {
            return this.f58691a.hashCode();
        }

        public final String toString() {
            return "OnContributionLinkClick(contributionLink=" + this.f58691a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLaunchAuthentication;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLaunchAuthentication extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f58692a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnLaunchAuthentication(LoginContext loginContext) {
            super(null);
            loginContext.getClass();
            this.f58692a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnLaunchAuthentication) && this.f58692a == ((OnLaunchAuthentication) obj).f58692a;
        }

        public final int hashCode() {
            return this.f58692a.hashCode();
        }

        public final String toString() {
            return "OnLaunchAuthentication(loginContext=" + this.f58692a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnLookModuleCtaClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;", "lookSection", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnLookModuleCtaClick extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final VideoCtaArticleSectionUiModel f58693a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnLookModuleCtaClick(VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel) {
            super(null);
            videoCtaArticleSectionUiModel.getClass();
            this.f58693a = videoCtaArticleSectionUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnLookModuleCtaClick) && Intrinsics.c(this.f58693a, ((OnLookModuleCtaClick) obj).f58693a);
        }

        public final int hashCode() {
            return this.f58693a.hashCode();
        }

        public final String toString() {
            return "OnLookModuleCtaClick(lookSection=" + this.f58693a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnProductModuleClick;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "<init>", "(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OnProductModuleClick extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58694a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnProductModuleClick(String str, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            str.getClass();
            this.f58694a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof OnProductModuleClick)) {
                return false;
            }
            String str = ((OnProductModuleClick) obj).f58694a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return Intrinsics.c(this.f58694a, str);
        }

        public final int hashCode() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return this.f58694a.hashCode();
        }

        public final String toString() {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            return fc.h("OnProductModuleClick(sku=", this.f58694a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OpenVideoInFullScreen;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;", "video", "<init>", "(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleVideoUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenVideoInFullScreen extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmersiveArticleVideoUiModel f58695a;

        public OpenVideoInFullScreen(ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel) {
            super(null);
            this.f58695a = immersiveArticleVideoUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OpenVideoInFullScreen) && Intrinsics.c(this.f58695a, ((OpenVideoInFullScreen) obj).f58695a);
        }

        public final int hashCode() {
            ImmersiveArticleVideoUiModel immersiveArticleVideoUiModel = this.f58695a;
            if (immersiveArticleVideoUiModel == null) {
                return 0;
            }
            return immersiveArticleVideoUiModel.hashCode();
        }

        public final String toString() {
            return "OpenVideoInFullScreen(video=" + this.f58695a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;", "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class RedirectToWishlist extends ImmersiveArticleNavigationType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final RedirectToWishlist f58696a = new RedirectToWishlist(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof RedirectToWishlist);
        }

        public final int hashCode() {
            return 524637105;
        }

        public final String toString() {
            return "RedirectToWishlist";
        }
    }

    public ImmersiveArticleNavigationType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
