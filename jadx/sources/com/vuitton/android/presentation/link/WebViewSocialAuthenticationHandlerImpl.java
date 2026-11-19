package com.vuitton.android.presentation.link;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManager;
import com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.k61;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0018BY\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;", "Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;", "googleSignInManager", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;", "lineSignInManager", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;", "kakaoSignInManager", "Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;", "socialLoginUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;", "authenticationActivityRouter", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebViewSocialAuthenticationHandlerImpl implements WebViewSocialAuthenticationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GoogleSignInManager f51608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LineSignInManager f51609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KakaoSignInManager f51610c;
    public final SocialLoginUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f51611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AuthenticationActivityRouter f51612f;
    public final Logger g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LVEventSender f51613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Monitor f51614i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f51615j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lazy f51616k;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public WebViewSocialAuthenticationHandlerImpl(GoogleSignInManager googleSignInManager, LineSignInManager lineSignInManager, KakaoSignInManager kakaoSignInManager, SocialLoginUseCase socialLoginUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AuthenticationActivityRouter authenticationActivityRouter, Logger logger, LVEventSender lVEventSender, Monitor monitor, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        googleSignInManager.getClass();
        lineSignInManager.getClass();
        kakaoSignInManager.getClass();
        socialLoginUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        authenticationActivityRouter.getClass();
        logger.getClass();
        lVEventSender.getClass();
        monitor.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f51608a = googleSignInManager;
        this.f51609b = lineSignInManager;
        this.f51610c = kakaoSignInManager;
        this.d = socialLoginUseCase;
        this.f51611e = requireUserInAppDispatchUseCase;
        this.f51612f = authenticationActivityRouter;
        this.g = logger;
        this.f51613h = lVEventSender;
        this.f51614i = monitor;
        this.f51615j = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER_KISA});
        this.f51616k = LazyKt.b(new k61(this, 4));
    }

    @Override // com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler
    public final void a(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            fragmentActivity = null;
        }
        if (fragmentActivity == null) {
            return;
        }
        BuildersKt.c(LifecycleOwnerKt.a(fragmentActivity), null, null, new WebViewSocialAuthenticationHandlerImpl$handleKakaoAuthentication$1(this, fragmentActivity, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler
    public final void b(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            fragmentActivity = null;
        }
        if (fragmentActivity == null) {
            return;
        }
        BuildersKt.c(LifecycleOwnerKt.a(fragmentActivity), null, null, new WebViewSocialAuthenticationHandlerImpl$handleGoogleAuthentication$1(this, fragmentActivity, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.webview.WebViewSocialAuthenticationHandler
    public final void c(FragmentActivity fragmentActivity) {
        if (fragmentActivity == null) {
            fragmentActivity = null;
        }
        if (fragmentActivity == null) {
            return;
        }
        BuildersKt.c(LifecycleOwnerKt.a(fragmentActivity), null, null, new WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1(this, fragmentActivity, null), 3);
    }
}
