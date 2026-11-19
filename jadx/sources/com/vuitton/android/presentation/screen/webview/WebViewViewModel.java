package com.vuitton.android.presentation.screen.webview;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetCachedAccessTokenUseCase;
import com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase;
import com.vuitton.android.domain.usecase.account.RefreshFacadeUserSessionUseCase;
import com.vuitton.android.domain.usecase.analytics.GetDeviceIdUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RefreshAuthFromCheckoutUseCase;
import com.vuitton.android.domain.usecase.cart.GetCheckoutUrlUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentListUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 By\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;", "refreshFacadeUserSessionUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;", "getConsentListUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "contactUsDelegate", "Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;", "getCachedUserIdUseCase", "Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;", "getCachedAccessTokenUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;", "getCheckoutUrlUseCase", "Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;", "getDeviceIdUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;", "refreshAuthFromCheckoutUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "<init>", "(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;Lcom/vuitton/android/core/events/LVEventSender;)V", "CheckoutEvent", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebViewViewModel extends ViewModel implements ContactUsDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserSessionService f65547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RefreshFacadeUserSessionUseCase f65548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetConsentListUseCase f65549c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContactUsDelegate f65550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetCachedUserIdUseCase f65551f;
    public final GetCachedAccessTokenUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetCheckoutUrlUseCase f65552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetDeviceIdUseCase f65553i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f65554j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RefreshAuthFromCheckoutUseCase f65555k;
    public final LVEventSender l;
    public final WebViewUiModel m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final SharedFlowImpl q;
    public final SharedFlow r;
    public final SharedFlowImpl s;
    public final SharedFlow t;
    public final BufferedChannel u;
    public final Flow v;
    public boolean w;
    public final StateFlow x;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewViewModel$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$1", f = "WebViewViewModel.kt", l = {111}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutableStateFlow f65556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WebViewViewModel f65557c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f65558e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f65559f;
        public final /* synthetic */ WebViewViewModel g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, WebViewViewModel webViewViewModel) {
            super(2, continuation);
            this.g = webViewViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.g);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0042 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:14:0x004b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0040 -> B:12:0x0043). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:11:0x0042
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r6.f65559f
                r2 = 1
                if (r1 == 0) goto L1c
                if (r1 != r2) goto L15
                int r1 = r6.f65558e
                java.lang.Object r3 = r6.d
                com.vuitton.android.presentation.screen.webview.WebViewViewModel r4 = r6.f65557c
                kotlinx.coroutines.flow.MutableStateFlow r5 = r6.f65556b
                kotlin.ResultKt.b(r7)
                goto L43
            L15:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                r6 = 0
                return r6
            L1c:
                kotlin.ResultKt.b(r7)
                com.vuitton.android.presentation.screen.webview.WebViewViewModel r7 = r6.g
                kotlinx.coroutines.flow.MutableStateFlow r1 = r7.p
                r3 = 0
                r4 = r7
                r5 = r1
                r1 = r3
            L27:
                java.lang.Object r3 = r5.getValue()
                r7 = r3
                java.lang.String r7 = (java.lang.String) r7
                com.vuitton.android.domain.usecase.analytics.GetDeviceIdUseCase r7 = r4.f65553i
                r6.f65556b = r5
                r6.f65557c = r4
                r6.d = r3
                r6.f65558e = r1
                r6.f65559f = r2
                com.vuitton.android.domain.repository.DeviceIdRepository r7 = r7.f49175a
                java.lang.Object r7 = r7.a(r6)
                if (r7 != r0) goto L43
                return r0
            L43:
                java.lang.String r7 = (java.lang.String) r7
                boolean r7 = r5.i(r3, r7)
                if (r7 == 0) goto L27
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.webview.WebViewViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewViewModel$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$2", f = "WebViewViewModel.kt", l = {114}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65560b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WebViewViewModel f65561c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, WebViewViewModel webViewViewModel) {
            super(2, continuation);
            this.f65561c = webViewViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f65561c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65560b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ContactUsDelegate contactUsDelegate = this.f65561c.f65550e;
                this.f65560b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewViewModel$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$3", f = "WebViewViewModel.kt", l = {117}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WebViewViewModel f65563c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Continuation continuation, WebViewViewModel webViewViewModel) {
            super(2, continuation);
            this.f65563c = webViewViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(continuation, this.f65563c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65562b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final WebViewViewModel webViewViewModel = this.f65563c;
                StateFlow stateFlow = webViewViewModel.f65547a.g;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.webview.WebViewViewModel.3.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        Object objYc;
                        return (((LoginState) obj2).a() && (objYc = WebViewViewModel.yc(continuation, webViewViewModel)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objYc : Unit.f71739a;
                    }
                };
                this.f65562b = 1;
                if (stateFlow.f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            os.d();
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent;", "", "NavigateToThankYou", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent$NavigateToThankYou;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface CheckoutEvent {

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent$NavigateToThankYou;", "Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel$CheckoutEvent;", "Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;", "previousScreen", "<init>", "(Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class NavigateToThankYou implements CheckoutEvent {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final CartPreviousScreen f65565a;

            public NavigateToThankYou(CartPreviousScreen cartPreviousScreen) {
                cartPreviousScreen.getClass();
                this.f65565a = cartPreviousScreen;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NavigateToThankYou) && this.f65565a == ((NavigateToThankYou) obj).f65565a;
            }

            public final int hashCode() {
                return this.f65565a.hashCode();
            }

            public final String toString() {
                return "NavigateToThankYou(previousScreen=" + this.f65565a + ")";
            }
        }
    }

    @Inject
    public WebViewViewModel(UserSessionService userSessionService, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RefreshFacadeUserSessionUseCase refreshFacadeUserSessionUseCase, GetConsentListUseCase getConsentListUseCase, AnalyticsTracker analyticsTracker, ContactUsDelegate contactUsDelegate, GetCachedUserIdUseCase getCachedUserIdUseCase, GetCachedAccessTokenUseCase getCachedAccessTokenUseCase, GetCheckoutUrlUseCase getCheckoutUrlUseCase, GetDeviceIdUseCase getDeviceIdUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RefreshAuthFromCheckoutUseCase refreshAuthFromCheckoutUseCase, LVEventSender lVEventSender) {
        userSessionService.getClass();
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        refreshFacadeUserSessionUseCase.getClass();
        getConsentListUseCase.getClass();
        analyticsTracker.getClass();
        contactUsDelegate.getClass();
        getCachedUserIdUseCase.getClass();
        getCachedAccessTokenUseCase.getClass();
        getCheckoutUrlUseCase.getClass();
        getDeviceIdUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        refreshAuthFromCheckoutUseCase.getClass();
        lVEventSender.getClass();
        this.f65547a = userSessionService;
        this.f65548b = refreshFacadeUserSessionUseCase;
        this.f65549c = getConsentListUseCase;
        this.d = analyticsTracker;
        this.f65550e = contactUsDelegate;
        this.f65551f = getCachedUserIdUseCase;
        this.g = getCachedAccessTokenUseCase;
        this.f65552h = getCheckoutUrlUseCase;
        this.f65553i = getDeviceIdUseCase;
        this.f65554j = isFeatureAvailableUseCase;
        this.f65555k = refreshAuthFromCheckoutUseCase;
        this.l = lVEventSender;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        WebViewUiModel webViewUiModel = new WebViewUiModel(null, InAppDispatchExtKt.f(inAppDispatchB), InAppDispatchExtKt.a(inAppDispatchB, appConfigA.A), appConfigA.d, appConfigA.l, appConfigA.q, appConfigA.r, appConfigA.s, getCachedAccessTokenUseCase.f49028a.c(), getCachedUserIdUseCase.f49029a.getUserId(), null, 1025, null);
        this.m = webViewUiModel;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(webViewUiModel.f65541i);
        this.n = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(webViewUiModel.f65542j);
        this.o = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.p = mutableStateFlowA3;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.q = sharedFlowImplB;
        this.r = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.s = sharedFlowImplB2;
        this.t = FlowKt.a(sharedFlowImplB2);
        BufferedChannel bufferedChannelA = ChannelKt.a(-2, 6, null);
        this.u = bufferedChannelA;
        this.v = FlowKt.y(bufferedChannelA);
        final Flow[] flowArr = {contactUsDelegate.i(), mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3};
        Flow<WebViewUiModel> flow = new Flow<WebViewUiModel>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewViewModel$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.webview.WebViewViewModel$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewViewModel$special$$inlined$combine$1$3", f = "WebViewViewModel.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WebViewUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f65579b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f65580c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ WebViewViewModel f65581e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, WebViewViewModel webViewViewModel) {
                    super(3, continuation);
                    this.f65581e = webViewViewModel;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f65581e);
                    anonymousClass3.f65580c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f65580c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f65579b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        WebViewUiModel webViewUiModel = this.f65581e.m;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        WebViewUiModel webViewUiModel2 = new WebViewUiModel((ContactUsUiModel) obj2, webViewUiModel.f65536b, webViewUiModel.f65537c, webViewUiModel.d, webViewUiModel.f65538e, webViewUiModel.f65539f, webViewUiModel.g, webViewUiModel.f65540h, (String) objArr[1], (String) objArr[2], (String) objArr[3], null);
                        this.f65580c = null;
                        this.d = null;
                        this.f65579b = 1;
                        if (flowCollector.emit(webViewUiModel2, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.webview.WebViewViewModel$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.x = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, webViewUiModel);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass3(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(Continuation continuation, WebViewViewModel webViewViewModel) {
        WebViewViewModel$updateTokenAndCheckoutUrl$1 webViewViewModel$updateTokenAndCheckoutUrl$1;
        Object value;
        Object value2;
        Object objA;
        if (continuation instanceof WebViewViewModel$updateTokenAndCheckoutUrl$1) {
            webViewViewModel$updateTokenAndCheckoutUrl$1 = (WebViewViewModel$updateTokenAndCheckoutUrl$1) continuation;
            int i2 = webViewViewModel$updateTokenAndCheckoutUrl$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                webViewViewModel$updateTokenAndCheckoutUrl$1.d = i2 - Integer.MIN_VALUE;
            } else {
                webViewViewModel$updateTokenAndCheckoutUrl$1 = new WebViewViewModel$updateTokenAndCheckoutUrl$1(continuation, webViewViewModel);
            }
        } else {
            webViewViewModel$updateTokenAndCheckoutUrl$1 = new WebViewViewModel$updateTokenAndCheckoutUrl$1(continuation, webViewViewModel);
        }
        Object obj = webViewViewModel$updateTokenAndCheckoutUrl$1.f65582b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = webViewViewModel$updateTokenAndCheckoutUrl$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow = webViewViewModel.n;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, webViewViewModel.g.f49028a.c()));
            MutableStateFlow mutableStateFlow2 = webViewViewModel.o;
            do {
                value2 = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value2, webViewViewModel.f65551f.f49029a.getUserId()));
            GetCheckoutUrlUseCase getCheckoutUrlUseCase = webViewViewModel.f65552h;
            webViewViewModel$updateTokenAndCheckoutUrl$1.d = 1;
            objA = getCheckoutUrlUseCase.a(webViewViewModel$updateTokenAndCheckoutUrl$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            webViewViewModel.q.a((String) objA);
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            webViewViewModel.u.b(new WebViewViewEvents.DisplayError(thA));
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f65550e.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f65550e.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f65550e.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f65550e.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f65550e.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f65550e.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f65550e.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f65550e.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f65550e.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f65550e.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f65550e.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f65550e.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f65550e.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f65550e.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f65550e.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f65550e.z();
    }

    public final void zc(WebViewTrackingUiModel webViewTrackingUiModel) {
        Hit defaultEventHit;
        webViewTrackingUiModel.getClass();
        if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.MyMonogramWebViewScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_monogram", "product_sheet/my_monogram", "product_sheet", null, 17, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnMyMonogramWebViewConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_monogram", "confirm_monogram_config", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetOpenEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_monogram", "close_bottom_webview", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_monogram", "close_popin_webview_confirm", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetCancelEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_monogram", "close_popin_webview_cancel", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.BeautyEngravingWebViewScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "engraving", "product_sheet/engraving", "product_sheet", null, 17, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnBeautyEngravingWebViewConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "confirm_engraving_config", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetOpenEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_bottom_webview", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_popin_webview_confirm", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetCancelEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_popin_webview_cancel", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.HotstampingWebViewScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "hotstamping", "product_sheet/hotstamping", "product_sheet", null, 17, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnHotstampingWebViewConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "hotstamping", "confirm_hotstamping_config", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetOpenEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "hotstamping", "close_bottom_webview", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "hotstamping", "close_popin_webview_confirm", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetCancelEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "hotstamping", "close_popin_webview_cancel", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.PerfumeEngravingWebViewScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "engraving", "product_sheet/engraving", "product_sheet", null, 17, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnPerfumeEngravingWebViewConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "confirm_engraving_config", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetOpenEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_bottom_webview", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_popin_webview_confirm", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetCancelEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "engraving", "close_popin_webview_cancel", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.DiamondEngravingWebViewScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "diamond_engraving", "product_sheet/diamond_engraving", "product_sheet", null, 17, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnDiamondEngravingWebViewConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "diamond_engraving", "confirm_engraving_config", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetOpenEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "diamond_engraving", "close_bottom_webview", "product_sheet", "click", null, null, 97, null);
        } else if (webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetConfirmEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "diamond_engraving", "close_popin_webview_confirm", "product_sheet", "click", null, null, 97, null);
        } else {
            if (!(webViewTrackingUiModel instanceof WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetCancelEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "diamond_engraving", "close_popin_webview_cancel", "product_sheet", "click", null, null, 97, null);
        }
        this.d.a(defaultEventHit);
    }
}
