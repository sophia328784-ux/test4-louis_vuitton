package com.vuitton.android.presentation.screen.authentication;

import android.net.Uri;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.provider.consent.KisaConsentsParser;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetContactIdUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.RefreshFacadeUserSessionUseCase;
import com.vuitton.android.domain.usecase.account.UpdateContactIdUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.SetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.authentication.AuthenticateAtgCodeExchangeUseCase;
import com.vuitton.android.domain.usecase.authentication.FinaliseSalesforceAuthenticationUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticateCodeExchangeUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.AuthenticationAvailabilityUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LoginUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.RegisterUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.connectivity.GetConnectedObjectListUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSignUpEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentListUseCase;
import com.vuitton.android.domain.usecase.wishlist.RefreshWishlistUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.base.OauthCredentials;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.oauth.OauthCodeHelper;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.security.SecureRandom;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0081\u0002\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010B¨\u0006C"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;", "authenticationAvailabilityUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;", "oauthCodeHelper", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "contactUsDelegate", "Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;", "kisaConsentsParser", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;", "loginUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;", "logoutUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;", "registerUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;", "getContactIdUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;", "getConsentListUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;", "refreshWishlistUseCase", "Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;", "updateContactIdUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;", "reportDYLoginEventUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;", "codeExchangeUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;", "reportDYSignUpEventUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;", "resetDynamicYieldIdUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;", "setAppsFlyerCustomerIdUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;", "getConnectedObjectListUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;", "unsetAppsFlyerCustomerIdUseCase", "Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;", "refreshFacadeUserSessionUseCase", "Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;", "authenticateAtgCodeExchangeUseCase", "Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;", "finaliseSalesforceAuthenticationUseCase", "<init>", "(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticationViewModelImpl extends ViewModel implements AuthenticationViewModel, ContactUsDelegate {
    public final InAppDispatch A;
    public final boolean B;
    public final boolean C;
    public final boolean D;
    public final String E;
    public final String F;
    public final boolean G;
    public final BufferedChannel H;
    public final Flow I;
    public final BufferedChannel J;
    public final Flow K;
    public final BufferedChannel L;
    public final Flow M;
    public final BufferedChannel N;
    public final Flow O;
    public final BufferedChannel P;
    public final Flow Q;
    public final MutableStateFlow R;
    public final MutableStateFlow S;
    public final BufferedChannel T;
    public final Flow U;
    public final MutableStateFlow V;
    public OauthCredentials W;
    public final StateFlow X;
    public final StateFlow Y;
    public Job Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f53276a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f53277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f53278c;
    public final OauthCodeHelper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SavedStateHandle f53279e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactUsDelegate f53280f;
    public final KisaConsentsParser g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationsManager f53281h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LoginUseCase f53282i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LogoutUseCase f53283j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RegisterUseCase f53284k;
    public final GetProfileUseCase l;
    public final GetContactIdUseCase m;
    public final GetConsentListUseCase n;
    public final RefreshWishlistUseCase o;
    public final UpdateContactIdUseCase p;
    public final ReportDYLoginEventUseCase q;
    public final AuthenticateCodeExchangeUseCase r;
    public final ReportDYSignUpEventUseCase s;
    public final ResetDynamicYieldIdUseCase t;
    public final SetAppsFlyerCustomerIdUseCase u;
    public final GetConnectedObjectListUseCase v;
    public final UnsetAppsFlyerCustomerIdUseCase w;
    public final RefreshFacadeUserSessionUseCase x;
    public final AuthenticateAtgCodeExchangeUseCase y;
    public final FinaliseSalesforceAuthenticationUseCase z;

    @Inject
    public AuthenticationViewModelImpl(UserSessionService userSessionService, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, AuthenticationAvailabilityUseCase authenticationAvailabilityUseCase, Logger logger, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, OauthCodeHelper oauthCodeHelper, SavedStateHandle savedStateHandle, ContactUsDelegate contactUsDelegate, KisaConsentsParser kisaConsentsParser, NotificationsManager notificationsManager, LoginUseCase loginUseCase, LogoutUseCase logoutUseCase, RegisterUseCase registerUseCase, GetProfileUseCase getProfileUseCase, GetContactIdUseCase getContactIdUseCase, GetConsentListUseCase getConsentListUseCase, RefreshWishlistUseCase refreshWishlistUseCase, UpdateContactIdUseCase updateContactIdUseCase, ReportDYLoginEventUseCase reportDYLoginEventUseCase, AuthenticateCodeExchangeUseCase authenticateCodeExchangeUseCase, ReportDYSignUpEventUseCase reportDYSignUpEventUseCase, ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase, SetAppsFlyerCustomerIdUseCase setAppsFlyerCustomerIdUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, GetConnectedObjectListUseCase getConnectedObjectListUseCase, UnsetAppsFlyerCustomerIdUseCase unsetAppsFlyerCustomerIdUseCase, RefreshFacadeUserSessionUseCase refreshFacadeUserSessionUseCase, AuthenticateAtgCodeExchangeUseCase authenticateAtgCodeExchangeUseCase, FinaliseSalesforceAuthenticationUseCase finaliseSalesforceAuthenticationUseCase) {
        userSessionService.getClass();
        isFeatureAvailableUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        authenticationAvailabilityUseCase.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        oauthCodeHelper.getClass();
        savedStateHandle.getClass();
        contactUsDelegate.getClass();
        kisaConsentsParser.getClass();
        notificationsManager.getClass();
        loginUseCase.getClass();
        logoutUseCase.getClass();
        registerUseCase.getClass();
        getProfileUseCase.getClass();
        getContactIdUseCase.getClass();
        getConsentListUseCase.getClass();
        refreshWishlistUseCase.getClass();
        updateContactIdUseCase.getClass();
        reportDYLoginEventUseCase.getClass();
        authenticateCodeExchangeUseCase.getClass();
        reportDYSignUpEventUseCase.getClass();
        resetDynamicYieldIdUseCase.getClass();
        setAppsFlyerCustomerIdUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        getConnectedObjectListUseCase.getClass();
        unsetAppsFlyerCustomerIdUseCase.getClass();
        refreshFacadeUserSessionUseCase.getClass();
        authenticateAtgCodeExchangeUseCase.getClass();
        finaliseSalesforceAuthenticationUseCase.getClass();
        this.f53276a = logger;
        this.f53277b = analyticsTracker;
        this.f53278c = lVEventSender;
        this.d = oauthCodeHelper;
        this.f53279e = savedStateHandle;
        this.f53280f = contactUsDelegate;
        this.g = kisaConsentsParser;
        this.f53281h = notificationsManager;
        this.f53282i = loginUseCase;
        this.f53283j = logoutUseCase;
        this.f53284k = registerUseCase;
        this.l = getProfileUseCase;
        this.m = getContactIdUseCase;
        this.n = getConsentListUseCase;
        this.o = refreshWishlistUseCase;
        this.p = updateContactIdUseCase;
        this.q = reportDYLoginEventUseCase;
        this.r = authenticateCodeExchangeUseCase;
        this.s = reportDYSignUpEventUseCase;
        this.t = resetDynamicYieldIdUseCase;
        this.u = setAppsFlyerCustomerIdUseCase;
        this.v = getConnectedObjectListUseCase;
        this.w = unsetAppsFlyerCustomerIdUseCase;
        this.x = refreshFacadeUserSessionUseCase;
        this.y = authenticateAtgCodeExchangeUseCase;
        this.z = finaliseSalesforceAuthenticationUseCase;
        this.A = requireUserInAppDispatchUseCase.f49912a.b();
        this.B = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_LOGIN});
        this.C = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER});
        this.D = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER_KISA});
        this.E = requireCachedAppConfigUseCase.a().f67235h;
        this.F = requireCachedAppConfigUseCase.a().f67236i;
        this.G = requireCachedAppConfigUseCase.a().A;
        BufferedChannel bufferedChannelA = ChannelKt.a(1, 6, null);
        this.H = bufferedChannelA;
        this.I = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(1, 6, null);
        this.J = bufferedChannelA2;
        this.K = FlowKt.y(bufferedChannelA2);
        BufferedChannel bufferedChannelA3 = ChannelKt.a(1, 6, null);
        this.L = bufferedChannelA3;
        this.M = FlowKt.y(bufferedChannelA3);
        BufferedChannel bufferedChannelA4 = ChannelKt.a(1, 6, null);
        this.N = bufferedChannelA4;
        this.O = FlowKt.y(bufferedChannelA4);
        BufferedChannel bufferedChannelA5 = ChannelKt.a(1, 6, null);
        this.P = bufferedChannelA5;
        this.Q = FlowKt.y(bufferedChannelA5);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.R = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.S = mutableStateFlowA2;
        BufferedChannel bufferedChannelA6 = ChannelKt.a(1, 6, null);
        this.T = bufferedChannelA6;
        this.U = FlowKt.y(bufferedChannelA6);
        this.V = StateFlowKt.a(Boolean.valueOf(!InAppDispatchExtKt.c(authenticationAvailabilityUseCase.f49359a.f49912a.b()) && authenticationAvailabilityUseCase.f49360b.b(new Feature[]{Feature.TWIST})));
        byte[] bArr = new byte[128];
        new SecureRandom().nextBytes(bArr);
        OauthCodeHelper.f53710a.getClass();
        this.W = new OauthCredentials(null, OauthCodeHelper.Companion.a(bArr), null, null, null, 29, null);
        this.X = userSessionService.g;
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(mutableStateFlowA, mutableStateFlowA2, new AuthenticationViewModelImpl$loadingState$1(3, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.Y = FlowKt.A(flowKt__ZipKt$combine$$inlined$unsafeFlow$1, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, bool);
        contactUsDelegate.C(ScreenType.OTHER);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f53280f.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void B5(AuthToken.Atg atg) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$proceedAtgLoginLegacy$1(this, atg, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void B9() {
        this.S.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f53280f.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: D1, reason: from getter */
    public final OauthCredentials getW() {
        return this.W;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f53280f.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f53280f.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void I0(AuthenticationTrackingUiModel authenticationTrackingUiModel) {
        authenticationTrackingUiModel.getClass();
        this.f53277b.a(AuthenticationTrackingUiModelKt.a(authenticationTrackingUiModel, null));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void J8() {
        this.N.b(null);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: L0, reason: from getter */
    public final boolean getB() {
        return this.B;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f53280f.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: M7, reason: from getter */
    public final Flow getO() {
        return this.O;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: N5, reason: from getter */
    public final StateFlow getY() {
        return this.Y;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f53280f.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: R, reason: from getter */
    public final boolean getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void R4() {
        String str = this.E;
        if (str == null) {
            this.L.b(Unit.f71739a);
            ChannelResult.Companion companion = ChannelResult.f74759b;
            return;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        String strA = InAppDispatchExtKt.a(this.A, this.G);
        if (strA != null) {
            builderBuildUpon.appendQueryParameter("dispatchCountry", strA);
        }
        builderBuildUpon.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$appendQueryParameters$1(this, builderBuildUpon, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f53280f.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void V9(String str) {
        String str2 = this.F;
        if (str2 == null) {
            this.L.b(Unit.f71739a);
            ChannelResult.Companion companion = ChannelResult.f74759b;
            return;
        }
        Uri.Builder builderBuildUpon = Uri.parse(str2).buildUpon();
        String strA = InAppDispatchExtKt.a(this.A, this.G);
        if (strA != null) {
            builderBuildUpon.appendQueryParameter("dispatchCountry", strA);
        }
        if (str != null && !StringsKt.w(str)) {
            builderBuildUpon.appendQueryParameter("cid", str);
        }
        builderBuildUpon.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$appendQueryParameters$1(this, builderBuildUpon, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void X2(String str) {
        Job job;
        SavedStateHandle savedStateHandle = this.f53279e;
        if (str.equals((String) savedStateHandle.a("consumed_atg_code")) && (job = this.Z) != null && job.isActive()) {
            return;
        }
        savedStateHandle.b(str, "consumed_atg_code");
        Job job2 = this.Z;
        if (job2 != null) {
            job2.cancel(null);
        }
        this.Z = BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$proceedAtgLogin$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void a7() {
        this.S.setValue(Boolean.TRUE);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: ab, reason: from getter */
    public final StateFlow getX() {
        return this.X;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: e6, reason: from getter */
    public final Flow getQ() {
        return this.Q;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void f7(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$extractAndProcessKisaPayload$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f53280f.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: h, reason: from getter */
    public final Flow getI() {
        return this.I;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f53280f.i();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: j0, reason: from getter */
    public final boolean getC() {
        return this.C;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: k, reason: from getter */
    public final Flow getK() {
        return this.K;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void k6(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$proceedRegistration$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: l2, reason: from getter */
    public final Flow getM() {
        return this.M;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f53280f.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final Flow m7() {
        return this.V;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void q() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$logoutUser$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void q6() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$proceedLogin$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f53280f.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    /* JADX INFO: renamed from: r9, reason: from getter */
    public final Flow getU() {
        return this.U;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f53280f.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f53280f.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f53280f.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f53280f.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel
    public final void x4(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AuthenticationViewModelImpl$proceedCodeExchange$1(this, str, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d0 A[PHI: r9 r10 r11
      0x00d0: PHI (r9v6 boolean) = (r9v4 boolean), (r9v7 boolean) binds: [B:29:0x00cd, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]
      0x00d0: PHI (r10v6 boolean) = (r10v4 boolean), (r10v7 boolean) binds: [B:29:0x00cd, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]
      0x00d0: PHI (r11v10 java.lang.Object) = (r11v9 java.lang.Object), (r11v1 java.lang.Object) binds: [B:29:0x00cd, B:15:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e0 A[PHI: r9 r10 r11
      0x00e0: PHI (r9v8 boolean) = (r9v6 boolean), (r9v9 boolean) binds: [B:32:0x00dd, B:14:0x0037] A[DONT_GENERATE, DONT_INLINE]
      0x00e0: PHI (r10v8 boolean) = (r10v6 boolean), (r10v9 boolean) binds: [B:32:0x00dd, B:14:0x0037] A[DONT_GENERATE, DONT_INLINE]
      0x00e0: PHI (r11v13 java.lang.Object) = (r11v12 java.lang.Object), (r11v21 java.lang.Object) binds: [B:32:0x00dd, B:14:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:38:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:44:0x010f A[PHI: r9 r10
      0x010f: PHI (r9v10 boolean) = (r9v8 boolean), (r9v8 boolean), (r9v8 boolean), (r9v13 boolean) binds: [B:35:0x00e4, B:42:0x010c, B:39:0x00fa, B:13:0x002e] A[DONT_GENERATE, DONT_INLINE]
      0x010f: PHI (r10v10 boolean) = (r10v8 boolean), (r10v8 boolean), (r10v8 boolean), (r10v11 boolean) binds: [B:35:0x00e4, B:42:0x010c, B:39:0x00fa, B:13:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011e, code lost:
    
        if (r8.f53278c.a(com.vuitton.android.core.events.AppEvent.LogInEvent.f43497a, r0) == r1) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object yc(boolean r9, boolean r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl.yc(boolean, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f53280f.z();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object zc(ContinuationImpl continuationImpl) {
        AuthenticationViewModelImpl$updateContactId$1 authenticationViewModelImpl$updateContactId$1;
        Object objA;
        if (continuationImpl instanceof AuthenticationViewModelImpl$updateContactId$1) {
            authenticationViewModelImpl$updateContactId$1 = (AuthenticationViewModelImpl$updateContactId$1) continuationImpl;
            int i2 = authenticationViewModelImpl$updateContactId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                authenticationViewModelImpl$updateContactId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                authenticationViewModelImpl$updateContactId$1 = new AuthenticationViewModelImpl$updateContactId$1(this, continuationImpl);
            }
        } else {
            authenticationViewModelImpl$updateContactId$1 = new AuthenticationViewModelImpl$updateContactId$1(this, continuationImpl);
        }
        Object obj = authenticationViewModelImpl$updateContactId$1.f53324b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = authenticationViewModelImpl$updateContactId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            authenticationViewModelImpl$updateContactId$1.d = 1;
            objA = this.m.a(authenticationViewModelImpl$updateContactId$1);
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
            String str = ((Profile.ContactId) objA).f68174a;
            this.p.f49061a.e(str);
            this.f53281h.m(str);
            SetAppsFlyerCustomerIdUseCase setAppsFlyerCustomerIdUseCase = this.u;
            setAppsFlyerCustomerIdUseCase.f49219a.b(setAppsFlyerCustomerIdUseCase.f49220b.b());
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            LegacyLogger.f66205a.c("AuthenticationViewModelImpl", thA.getMessage(), null);
        }
        return Unit.f71739a;
    }
}
