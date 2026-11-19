package com.vuitton.android.presentation.link;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.exception.SocialAuthException;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.authentication.SocialAuthMonitoring;
import com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivity;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineCredentialResult;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManager;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterActivity;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.social.LineAuthParams;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.link.WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1", f = "WebViewSocialAuthenticationHandlerImpl.kt", l = {142, 158, 160}, m = "invokeSuspend", v = 2)
final class WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f51625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SocialLoginUiModel f51626c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ WebViewSocialAuthenticationHandlerImpl f51628f;
    public final /* synthetic */ FragmentActivity g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1(WebViewSocialAuthenticationHandlerImpl webViewSocialAuthenticationHandlerImpl, FragmentActivity fragmentActivity, Continuation continuation) {
        super(2, continuation);
        this.f51628f = webViewSocialAuthenticationHandlerImpl;
        this.g = fragmentActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1(this.f51628f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewSocialAuthenticationHandlerImpl$handleLineAuthentication$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:34:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:35:0x011e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        SocialLoginUiModel socialLoginUiModel;
        Object objA2;
        LVEventSender lVEventSender;
        MonitorAction monitorAction;
        SocialLoginUiModel socialLoginUiModel2;
        Object obj2;
        Throwable thA;
        WebViewSocialAuthenticationHandlerImpl webViewSocialAuthenticationHandlerImpl = this.f51628f;
        Logger logger = webViewSocialAuthenticationHandlerImpl.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51627e;
        FragmentActivity fragmentActivity = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = webViewSocialAuthenticationHandlerImpl.f51614i.a((InAppDispatch) webViewSocialAuthenticationHandlerImpl.f51616k.getF71699b(), SocialAuthMonitoring.Action.LogIn.f48831a);
            monitorActionA.c(SocialAuthMode.LINE.getApiValue(), "social");
            LineSignInManager lineSignInManager = webViewSocialAuthenticationHandlerImpl.f51609b;
            TrackingAuthOrigin trackingAuthOrigin = TrackingAuthOrigin.MY_LV;
            TrackingAuthEntryPoint trackingAuthEntryPoint = TrackingAuthEntryPoint.LOG_IN;
            this.f51625b = monitorActionA;
            this.f51627e = 1;
            objA = lineSignInManager.a(fragmentActivity, trackingAuthOrigin, trackingAuthEntryPoint, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            monitorActionA = this.f51625b;
            ResultKt.b(obj);
            objA = obj;
        } else {
            if (i2 == 2) {
                SocialLoginUiModel socialLoginUiModel3 = this.f51626c;
                MonitorAction monitorAction2 = this.f51625b;
                ResultKt.b(obj);
                socialLoginUiModel = socialLoginUiModel3;
                monitorActionA = monitorAction2;
                objA2 = ((Result) obj).f71708b;
                Result.Companion companion = Result.INSTANCE;
                if (!(objA2 instanceof Result.Failure)) {
                    lVEventSender = webViewSocialAuthenticationHandlerImpl.f51613h;
                    this.f51625b = monitorActionA;
                    this.f51626c = socialLoginUiModel;
                    this.d = objA2;
                    this.f51627e = 3;
                    if (lVEventSender.a(AppEvent.LogInEvent.f43497a, this) != coroutineSingletons) {
                        monitorAction = monitorActionA;
                        socialLoginUiModel2 = socialLoginUiModel;
                        obj2 = objA2;
                    }
                    return coroutineSingletons;
                }
                thA = Result.a(objA2);
                if (thA != null) {
                    monitorActionA.d(new SocialAuthMonitoring.Error.LogInError(thA));
                    if (!(thA instanceof SocialAuthException.RegistrationNeeded)) {
                        a.y("Social Login Failed: ", thA.getMessage(), logger, "WebViewSocialAuthenticationHandler", thA);
                    } else if (webViewSocialAuthenticationHandlerImpl.f51615j) {
                        fragmentActivity.startActivity(AuthenticationActivity.Companion.b(AuthenticationActivity.u, fragmentActivity, AuthenticationActivity.Routes.KISA_FOR_SOCIAL_SIGN_IN, socialLoginUiModel, TrackingAuthOrigin.MY_LV));
                    } else {
                        AuthenticationActivityRouter authenticationActivityRouter = webViewSocialAuthenticationHandlerImpl.f51612f;
                        String str = socialLoginUiModel.f54183a;
                        String str2 = socialLoginUiModel.f54184b;
                        String str3 = socialLoginUiModel.f54185c;
                        String str4 = socialLoginUiModel.g;
                        String str5 = socialLoginUiModel.f54186e;
                        TrackingAuthOrigin trackingAuthOrigin2 = TrackingAuthOrigin.MY_LV;
                        TrackingAuthEntryPoint trackingAuthEntryPoint2 = TrackingAuthEntryPoint.LOG_IN;
                        SocialAuthMode socialAuthMode = SocialAuthMode.LINE;
                        authenticationActivityRouter.getClass();
                        SocialRegisterActivity.s.getClass();
                        fragmentActivity.startActivity(SocialRegisterActivity.Companion.a(fragmentActivity, str, str2, str3, str4, str5, trackingAuthOrigin2, trackingAuthEntryPoint2, socialAuthMode, null));
                    }
                }
                monitorActionA.b();
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.d;
            socialLoginUiModel2 = this.f51626c;
            monitorAction = this.f51625b;
            ResultKt.b(obj);
        }
        objA2 = obj2;
        socialLoginUiModel = socialLoginUiModel2;
        monitorActionA = monitorAction;
        thA = Result.a(objA2);
        if (thA != null) {
            monitorActionA.d(new SocialAuthMonitoring.Error.LogInError(thA));
            if (!(thA instanceof SocialAuthException.RegistrationNeeded)) {
                a.y("Social Login Failed: ", thA.getMessage(), logger, "WebViewSocialAuthenticationHandler", thA);
            } else if (webViewSocialAuthenticationHandlerImpl.f51615j) {
                fragmentActivity.startActivity(AuthenticationActivity.Companion.b(AuthenticationActivity.u, fragmentActivity, AuthenticationActivity.Routes.KISA_FOR_SOCIAL_SIGN_IN, socialLoginUiModel, TrackingAuthOrigin.MY_LV));
            } else {
                AuthenticationActivityRouter authenticationActivityRouter2 = webViewSocialAuthenticationHandlerImpl.f51612f;
                String str6 = socialLoginUiModel.f54183a;
                String str7 = socialLoginUiModel.f54184b;
                String str8 = socialLoginUiModel.f54185c;
                String str9 = socialLoginUiModel.g;
                String str10 = socialLoginUiModel.f54186e;
                TrackingAuthOrigin trackingAuthOrigin3 = TrackingAuthOrigin.MY_LV;
                TrackingAuthEntryPoint trackingAuthEntryPoint3 = TrackingAuthEntryPoint.LOG_IN;
                SocialAuthMode socialAuthMode2 = SocialAuthMode.LINE;
                authenticationActivityRouter2.getClass();
                SocialRegisterActivity.s.getClass();
                fragmentActivity.startActivity(SocialRegisterActivity.Companion.a(fragmentActivity, str6, str7, str8, str9, str10, trackingAuthOrigin3, trackingAuthEntryPoint3, socialAuthMode2, null));
            }
        }
        monitorActionA.b();
        return Unit.f71739a;
        LineCredentialResult lineCredentialResult = (LineCredentialResult) objA;
        if (lineCredentialResult instanceof LineCredentialResult.Success) {
            socialLoginUiModel = ((LineCredentialResult.Success) lineCredentialResult).f53436a;
            LineAuthParams lineAuthParams = new LineAuthParams(socialLoginUiModel.g, socialLoginUiModel.f54186e, socialLoginUiModel.f54183a, socialLoginUiModel.f54184b, socialLoginUiModel.f54185c, null, webViewSocialAuthenticationHandlerImpl.f51611e.f49912a.b().f67476a, null, null, DilithiumEngine.DilithiumPolyT0PackedBytes, null);
            SocialLoginUseCase socialLoginUseCase = webViewSocialAuthenticationHandlerImpl.d;
            this.f51625b = monitorActionA;
            this.f51626c = socialLoginUiModel;
            this.f51627e = 2;
            objA2 = socialLoginUseCase.a(lineAuthParams, this);
            if (objA2 != coroutineSingletons) {
                Result.Companion companion2 = Result.INSTANCE;
                if (!(objA2 instanceof Result.Failure)) {
                    lVEventSender = webViewSocialAuthenticationHandlerImpl.f51613h;
                    this.f51625b = monitorActionA;
                    this.f51626c = socialLoginUiModel;
                    this.d = objA2;
                    this.f51627e = 3;
                    if (lVEventSender.a(AppEvent.LogInEvent.f43497a, this) != coroutineSingletons) {
                        monitorAction = monitorActionA;
                        socialLoginUiModel2 = socialLoginUiModel;
                        obj2 = objA2;
                        objA2 = obj2;
                        socialLoginUiModel = socialLoginUiModel2;
                        monitorActionA = monitorAction;
                    }
                }
                thA = Result.a(objA2);
                if (thA != null) {
                    monitorActionA.d(new SocialAuthMonitoring.Error.LogInError(thA));
                    if (!(thA instanceof SocialAuthException.RegistrationNeeded)) {
                        a.y("Social Login Failed: ", thA.getMessage(), logger, "WebViewSocialAuthenticationHandler", thA);
                    } else if (webViewSocialAuthenticationHandlerImpl.f51615j) {
                        fragmentActivity.startActivity(AuthenticationActivity.Companion.b(AuthenticationActivity.u, fragmentActivity, AuthenticationActivity.Routes.KISA_FOR_SOCIAL_SIGN_IN, socialLoginUiModel, TrackingAuthOrigin.MY_LV));
                    } else {
                        AuthenticationActivityRouter authenticationActivityRouter3 = webViewSocialAuthenticationHandlerImpl.f51612f;
                        String str11 = socialLoginUiModel.f54183a;
                        String str12 = socialLoginUiModel.f54184b;
                        String str13 = socialLoginUiModel.f54185c;
                        String str14 = socialLoginUiModel.g;
                        String str15 = socialLoginUiModel.f54186e;
                        TrackingAuthOrigin trackingAuthOrigin4 = TrackingAuthOrigin.MY_LV;
                        TrackingAuthEntryPoint trackingAuthEntryPoint4 = TrackingAuthEntryPoint.LOG_IN;
                        SocialAuthMode socialAuthMode3 = SocialAuthMode.LINE;
                        authenticationActivityRouter3.getClass();
                        SocialRegisterActivity.s.getClass();
                        fragmentActivity.startActivity(SocialRegisterActivity.Companion.a(fragmentActivity, str11, str12, str13, str14, str15, trackingAuthOrigin4, trackingAuthEntryPoint4, socialAuthMode3, null));
                    }
                }
                monitorActionA.b();
            }
            return coroutineSingletons;
        }
        if (lineCredentialResult instanceof LineCredentialResult.Cancelled) {
            monitorActionA.b();
            logger.getClass();
        } else {
            if (!(lineCredentialResult instanceof LineCredentialResult.Failure)) {
                v40.g();
                return null;
            }
            monitorActionA.b();
            a.y("LINE authentication failed: ", ((LineCredentialResult.Failure) lineCredentialResult).f53435a, logger, "WebViewSocialAuthenticationHandler", null);
        }
        return Unit.f71739a;
    }
}
