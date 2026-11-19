package com.vuitton.android.presentation.screen.immersivearticle;

import android.net.Uri;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "", "ToImmersiveArticlePage", "ToSpotlightPage", "ToPrivacyPolicyPage", "ToLoginPage", "ToRegisterPage", "ToLiveVideoPage", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ImmersiveArticleDestinations {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLiveVideoPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;", "liveVideoId", "Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;", "format", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLiveVideoPage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f58264a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LiveFormatUiModel f58265b;

        public ToLiveVideoPage(String str, LiveFormatUiModel liveFormatUiModel, DefaultConstructorMarker defaultConstructorMarker) {
            str.getClass();
            liveFormatUiModel.getClass();
            this.f58264a = str;
            this.f58265b = liveFormatUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToLiveVideoPage)) {
                return false;
            }
            ToLiveVideoPage toLiveVideoPage = (ToLiveVideoPage) obj;
            String str = toLiveVideoPage.f58264a;
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return this.f58264a.equals(str) && this.f58265b == toLiveVideoPage.f58265b;
        }

        public final int hashCode() {
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return this.f58265b.hashCode() + (this.f58264a.hashCode() * 31);
        }

        public final String toString() {
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            return "ToLiveVideoPage(liveVideoId=" + this.f58264a + ", format=" + this.f58265b + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f58266a;

        public ToLoginPage(LoginContext loginContext) {
            loginContext.getClass();
            this.f58266a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToLoginPage) && this.f58266a == ((ToLoginPage) obj).f58266a;
        }

        public final int hashCode() {
            return this.f58266a.hashCode();
        }

        public final String toString() {
            return "ToLoginPage(loginContext=" + this.f58266a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToPrivacyPolicyPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToPrivacyPolicyPage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToPrivacyPolicyPage f58267a = new ToPrivacyPolicyPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToPrivacyPolicyPage);
        }

        public final int hashCode() {
            return 1164435380;
        }

        public final String toString() {
            return "ToPrivacyPolicyPage";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "loginContext", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterPage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoginContext f58268a;

        public ToRegisterPage(LoginContext loginContext) {
            loginContext.getClass();
            this.f58268a = loginContext;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToRegisterPage) && this.f58268a == ((ToRegisterPage) obj).f58268a;
        }

        public final int hashCode() {
            return this.f58268a.hashCode();
        }

        public final String toString() {
            return "ToRegisterPage(loginContext=" + this.f58268a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToSpotlightPage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "Landroid/net/Uri;", "uri", "<init>", "(Landroid/net/Uri;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToSpotlightPage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f58269a;

        public ToSpotlightPage(Uri uri) {
            this.f58269a = uri;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToSpotlightPage) && Intrinsics.c(this.f58269a, ((ToSpotlightPage) obj).f58269a);
        }

        public final int hashCode() {
            Uri uri = this.f58269a;
            if (uri == null) {
                return 0;
            }
            return uri.hashCode();
        }

        public final String toString() {
            return "ToSpotlightPage(uri=" + this.f58269a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;", "Landroid/net/Uri;", "uri", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;", "immersiveArticleParameters", "<init>", "(Landroid/net/Uri;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;)V", "ImmersiveArticleParameters", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToImmersiveArticlePage implements ImmersiveArticleDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f58257a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmersiveArticleParameters f58258b;

        public ToImmersiveArticlePage(Uri uri, ImmersiveArticleParameters immersiveArticleParameters) {
            immersiveArticleParameters.getClass();
            this.f58257a = uri;
            this.f58258b = immersiveArticleParameters;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ToImmersiveArticlePage)) {
                return false;
            }
            ToImmersiveArticlePage toImmersiveArticlePage = (ToImmersiveArticlePage) obj;
            return Intrinsics.c(this.f58257a, toImmersiveArticlePage.f58257a) && Intrinsics.c(this.f58258b, toImmersiveArticlePage.f58258b);
        }

        public final int hashCode() {
            Uri uri = this.f58257a;
            return this.f58258b.hashCode() + ((uri == null ? 0 : uri.hashCode()) * 31);
        }

        public final String toString() {
            return "ToImmersiveArticlePage(uri=" + this.f58257a + ", immersiveArticleParameters=" + this.f58258b + ")";
        }

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations$ToImmersiveArticlePage$ImmersiveArticleParameters;", "", "", "articleKey", "articleType", "redirectionKey", "redirectionArticleKey", "redirectionLookKey", "", "isDeepInHierarchy", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ImmersiveArticleParameters {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f58259a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f58260b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f58261c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f58262e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final boolean f58263f;

            public /* synthetic */ ImmersiveArticleParameters(String str, String str2, String str3, String str4, String str5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, (i2 & 2) != 0 ? ImmersiveArticleType.IMMERSIVE_ARTICLE.getType() : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, z);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ImmersiveArticleParameters)) {
                    return false;
                }
                ImmersiveArticleParameters immersiveArticleParameters = (ImmersiveArticleParameters) obj;
                return Intrinsics.c(this.f58259a, immersiveArticleParameters.f58259a) && Intrinsics.c(this.f58260b, immersiveArticleParameters.f58260b) && Intrinsics.c(this.f58261c, immersiveArticleParameters.f58261c) && Intrinsics.c(this.d, immersiveArticleParameters.d) && Intrinsics.c(this.f58262e, immersiveArticleParameters.f58262e) && this.f58263f == immersiveArticleParameters.f58263f;
            }

            public final int hashCode() {
                int iB = fc.b(this.f58259a.hashCode() * 31, 31, this.f58260b);
                String str = this.f58261c;
                int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.d;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f58262e;
                return Boolean.hashCode(this.f58263f) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
            }

            public final String toString() {
                StringBuilder sbS = fc.s("ImmersiveArticleParameters(articleKey=", this.f58259a, ", articleType=", this.f58260b, ", redirectionKey=");
                cj.C(sbS, this.f58261c, ", redirectionArticleKey=", this.d, ", redirectionLookKey=");
                sbS.append(this.f58262e);
                sbS.append(", isDeepInHierarchy=");
                sbS.append(this.f58263f);
                sbS.append(")");
                return sbS.toString();
            }

            public ImmersiveArticleParameters(String str, String str2, String str3, String str4, String str5, boolean z) {
                str.getClass();
                str2.getClass();
                this.f58259a = str;
                this.f58260b = str2;
                this.f58261c = str3;
                this.d = str4;
                this.f58262e = str5;
                this.f58263f = z;
            }
        }
    }
}
