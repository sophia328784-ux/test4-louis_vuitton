package com.vuitton.android.presentation.screen.authentication.social;

import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.authentication.SocialAuthMonitoring;
import com.vuitton.android.domain.usecase.authentication.social.SocialLoginUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.accountmanager.GoogleSignInManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.KakaoSignInManager;
import com.vuitton.android.presentation.screen.authentication.accountmanager.LineSignInManager;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginTrackingUiModelKt$WhenMappings;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.v40;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u001b\u001cBa\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;", "lineSignInManager", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;", "googleSignInManager", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;", "kakaoSignInManager", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;", "socialLoginUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;", "reportDYLoginEventUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;)V", "SocialAuthAction", "SocialAuthEventType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SocialLoginViewModelImpl extends ViewModel implements SocialLoginViewModel {
    public final Flow A;
    public final BufferedChannel B;
    public final Flow C;
    public final StateFlow D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f54039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f54040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f54041c;
    public final LineSignInManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GoogleSignInManager f54042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final KakaoSignInManager f54043f;
    public final NotificationBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SocialLoginUseCase f54044h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ReportDYLoginEventUseCase f54045i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InAppDispatch f54046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f54047k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public Pair s;
    public final BufferedChannel t;
    public final Flow u;
    public final BufferedChannel v;
    public final Flow w;
    public final BufferedChannel x;
    public final Flow y;
    public final BufferedChannel z;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;", "", "SignIn", "SignUp", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SocialAuthAction {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignIn;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class SignIn extends SocialAuthAction {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SignIn f54048a = new SignIn(null);
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction$SignUp;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthAction;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class SignUp extends SocialAuthAction {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SignUp f54049a = new SignUp(null);
        }

        public SocialAuthAction(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;", "", "Click", "Success", "Failure", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SocialAuthEventType {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Click;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Click extends SocialAuthEventType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Click f54050a = new Click(null);
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Failure extends SocialAuthEventType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Failure f54051a = new Failure(null);
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType$Success;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$SocialAuthEventType;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Success extends SocialAuthEventType {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final Success f54052a = new Success(null);
        }

        public SocialAuthEventType(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Inject
    public SocialLoginViewModelImpl(IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, LineSignInManager lineSignInManager, GoogleSignInManager googleSignInManager, KakaoSignInManager kakaoSignInManager, NotificationBuilder notificationBuilder, SocialLoginUseCase socialLoginUseCase, ReportDYLoginEventUseCase reportDYLoginEventUseCase) {
        isFeatureAvailableUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        lineSignInManager.getClass();
        googleSignInManager.getClass();
        kakaoSignInManager.getClass();
        notificationBuilder.getClass();
        socialLoginUseCase.getClass();
        reportDYLoginEventUseCase.getClass();
        this.f54039a = monitor;
        this.f54040b = analyticsTracker;
        this.f54041c = lVEventSender;
        this.d = lineSignInManager;
        this.f54042e = googleSignInManager;
        this.f54043f = kakaoSignInManager;
        this.g = notificationBuilder;
        this.f54044h = socialLoginUseCase;
        this.f54045i = reportDYLoginEventUseCase;
        this.f54046j = requireUserInAppDispatchUseCase.f49912a.b();
        this.f54047k = new LinkedHashMap();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.l = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new SocialLoginUiModel((String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (String) null, (TrackingAuthOrigin) null, (TrackingAuthEntryPoint) null, (SocialAuthMode) null, 4095, (DefaultConstructorMarker) null));
        this.m = mutableStateFlowA2;
        this.n = isFeatureAvailableUseCase.b(new Feature[]{Feature.GOOGLE_SIGN_IN});
        this.o = isFeatureAvailableUseCase.b(new Feature[]{Feature.SOCIAL_SIGN_IN_DEBUG});
        this.p = isFeatureAvailableUseCase.b(new Feature[]{Feature.LINE_SIGN_IN});
        this.q = isFeatureAvailableUseCase.b(new Feature[]{Feature.KAKAO_SIGN_IN});
        this.r = isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_REGISTER_KISA});
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.t = bufferedChannelA;
        this.u = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.v = bufferedChannelA2;
        this.w = FlowKt.y(bufferedChannelA2);
        BufferedChannel bufferedChannelA3 = ChannelKt.a(0, 7, null);
        this.x = bufferedChannelA3;
        this.y = FlowKt.y(bufferedChannelA3);
        BufferedChannel bufferedChannelA4 = ChannelKt.a(0, 7, null);
        this.z = bufferedChannelA4;
        this.A = FlowKt.y(bufferedChannelA4);
        BufferedChannel bufferedChannelA5 = ChannelKt.a(0, 7, null);
        this.B = bufferedChannelA5;
        this.C = FlowKt.y(bufferedChannelA5);
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(mutableStateFlowA2, mutableStateFlowA, new SocialLoginViewModelImpl$viewState$1(this, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.D = FlowKt.A(flowKt__ZipKt$combine$$inlined$unsafeFlow$1, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new SocialLoginViewState(null, false, false, false, false, false, 63, null));
    }

    public final void Ac(SocialAuthAction socialAuthAction, SocialAuthEventType socialAuthEventType, TrackingAuthOrigin trackingAuthOrigin, SocialAuthMode socialAuthMode) {
        if (socialAuthAction instanceof SocialAuthAction.SignUp) {
            boolean z = socialAuthEventType instanceof SocialAuthEventType.Click;
            AnalyticsTracker analyticsTracker = this.f54040b;
            if (z) {
                analyticsTracker.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterClickEvent(trackingAuthOrigin, TrackingAuthEntryPoint.SIGN_UP, socialAuthMode)));
                return;
            }
            if (socialAuthEventType instanceof SocialAuthEventType.Success) {
                analyticsTracker.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterSuccessEvent(trackingAuthOrigin, TrackingAuthEntryPoint.SIGN_UP, socialAuthMode)));
                return;
            } else if (socialAuthEventType instanceof SocialAuthEventType.Failure) {
                analyticsTracker.a(SocialRegisterTrackingUiModelKt.b(new SocialRegisterTrackingUiModel.OnSocialRegisterFailureEvent(trackingAuthOrigin, TrackingAuthEntryPoint.SIGN_UP, socialAuthMode)));
                return;
            } else {
                v40.g();
                return;
            }
        }
        if (!(socialAuthAction instanceof SocialAuthAction.SignIn)) {
            v40.g();
            return;
        }
        if (socialAuthEventType instanceof SocialAuthEventType.Click) {
            zc(new SocialLoginTrackingUiModel.OnSocialLoginClickEvent(trackingAuthOrigin, TrackingAuthEntryPoint.LOG_IN, socialAuthMode));
            return;
        }
        if (socialAuthEventType instanceof SocialAuthEventType.Success) {
            zc(new SocialLoginTrackingUiModel.OnSocialLoginSuccessEvent(trackingAuthOrigin, TrackingAuthEntryPoint.LOG_IN, socialAuthMode));
        } else if (socialAuthEventType instanceof SocialAuthEventType.Failure) {
            zc(new SocialLoginTrackingUiModel.OnSocialLoginFailureEvent(trackingAuthOrigin, TrackingAuthEntryPoint.LOG_IN, socialAuthMode));
        } else {
            v40.g();
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: Q6, reason: from getter */
    public final Flow getA() {
        return this.A;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getC() {
        return this.C;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void b2(ComponentActivity componentActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin) {
        trackingAuthOrigin.getClass();
        if (componentActivity == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.f54047k;
        Job job = (Job) linkedHashMap.get("onContinueWithGoogleClickedJob");
        if (job == null || !job.isActive()) {
            SocialAuthAction socialAuthAction = z ? SocialAuthAction.SignUp.f54049a : SocialAuthAction.SignIn.f54048a;
            SocialAuthEventType.Click click = SocialAuthEventType.Click.f54050a;
            SocialAuthMode socialAuthMode = SocialAuthMode.GOOGLE;
            Ac(socialAuthAction, click, trackingAuthOrigin, socialAuthMode);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f54039a.a(this.f54046j, SocialAuthMonitoring.Action.LogIn.f48831a);
            dynatraceMonitorActionA.c(socialAuthMode.getApiValue(), "social");
            linkedHashMap.put("onContinueWithGoogleClickedJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SocialLoginViewModelImpl$onContinueWithGoogleClicked$1(this, componentActivity, trackingAuthOrigin, z, dynatraceMonitorActionA, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void ec(AppCompatActivity appCompatActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin) {
        trackingAuthOrigin.getClass();
        if (appCompatActivity == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.f54047k;
        Job job = (Job) linkedHashMap.get("onContinueWithKakaoClickedJob");
        if (job == null || !job.isActive()) {
            SocialAuthAction socialAuthAction = z ? SocialAuthAction.SignUp.f54049a : SocialAuthAction.SignIn.f54048a;
            SocialAuthEventType.Click click = SocialAuthEventType.Click.f54050a;
            SocialAuthMode socialAuthMode = SocialAuthMode.KAKAO;
            Ac(socialAuthAction, click, trackingAuthOrigin, socialAuthMode);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f54039a.a(this.f54046j, SocialAuthMonitoring.Action.LogIn.f48831a);
            dynatraceMonitorActionA.c(socialAuthMode.getApiValue(), "social");
            linkedHashMap.put("onContinueWithKakaoClickedJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SocialLoginViewModelImpl$onContinueWithKakaoClicked$1(this, appCompatActivity, trackingAuthOrigin, z, dynatraceMonitorActionA, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: g0, reason: from getter */
    public final Flow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: g6, reason: from getter */
    public final Flow getY() {
        return this.y;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void g7(AppCompatActivity appCompatActivity) {
        Pair pair = this.s;
        if (pair == null) {
            return;
        }
        boolean zBooleanValue = ((Boolean) pair.f71705b).booleanValue();
        TrackingAuthOrigin trackingAuthOrigin = (TrackingAuthOrigin) pair.f71706c;
        this.s = null;
        b2(appCompatActivity, zBooleanValue, trackingAuthOrigin);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    /* JADX INFO: renamed from: k, reason: from getter */
    public final Flow getW() {
        return this.w;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void q2(AppCompatActivity appCompatActivity, boolean z, TrackingAuthOrigin trackingAuthOrigin) {
        trackingAuthOrigin.getClass();
        if (appCompatActivity == null) {
            return;
        }
        LinkedHashMap linkedHashMap = this.f54047k;
        Job job = (Job) linkedHashMap.get("onContinueWithLineClickedJob");
        if (job == null || !job.isActive()) {
            SocialAuthAction socialAuthAction = z ? SocialAuthAction.SignUp.f54049a : SocialAuthAction.SignIn.f54048a;
            SocialAuthEventType.Click click = SocialAuthEventType.Click.f54050a;
            SocialAuthMode socialAuthMode = SocialAuthMode.LINE;
            Ac(socialAuthAction, click, trackingAuthOrigin, socialAuthMode);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f54039a.a(this.f54046j, SocialAuthMonitoring.Action.LogIn.f48831a);
            dynatraceMonitorActionA.c(socialAuthMode.getApiValue(), "social");
            linkedHashMap.put("onContinueWithLineClickedJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SocialLoginViewModelImpl$onContinueWithLineClicked$1(this, appCompatActivity, trackingAuthOrigin, z, dynatraceMonitorActionA, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void rb(boolean z, TrackingAuthOrigin trackingAuthOrigin, SocialAuthMode socialAuthMode) {
        trackingAuthOrigin.getClass();
        socialAuthMode.getClass();
        DynatraceMonitorAction dynatraceMonitorActionA = this.f54039a.a(this.f54046j, SocialAuthMonitoring.Action.LogIn.f48831a);
        dynatraceMonitorActionA.c(socialAuthMode.getApiValue(), "social");
        yc(socialAuthMode, z, trackingAuthOrigin, dynatraceMonitorActionA);
    }

    public final void yc(SocialAuthMode socialAuthMode, boolean z, TrackingAuthOrigin trackingAuthOrigin, MonitorAction monitorAction) {
        LinkedHashMap linkedHashMap = this.f54047k;
        Job job = (Job) linkedHashMap.get("processSocialAuthenticationJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("processSocialAuthenticationJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SocialLoginViewModelImpl$processSocialAuth$1(this, z, socialAuthMode, monitorAction, trackingAuthOrigin, null), 3));
        } else {
            monitorAction.b();
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel
    public final void z8() {
        this.s = null;
    }

    public final void zc(SocialLoginTrackingUiModel socialLoginTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        String str;
        String str2;
        String str3;
        boolean z = socialLoginTrackingUiModel instanceof SocialLoginTrackingUiModel.OnSocialLoginClickEvent;
        String str4 = "line_log_in";
        HitType.Interaction interaction = HitType.Interaction.f66511a;
        if (!z) {
            String str5 = "authentication_with_line";
            if (socialLoginTrackingUiModel instanceof SocialLoginTrackingUiModel.OnSocialLoginSuccessEvent) {
                SocialLoginTrackingUiModel.OnSocialLoginSuccessEvent onSocialLoginSuccessEvent = (SocialLoginTrackingUiModel.OnSocialLoginSuccessEvent) socialLoginTrackingUiModel;
                SocialAuthMode socialAuthMode = onSocialLoginSuccessEvent.f54181c;
                int[] iArr = SocialLoginTrackingUiModelKt$WhenMappings.f54182a;
                int i2 = iArr[socialAuthMode.ordinal()];
                if (i2 != 1) {
                    str4 = i2 != 2 ? "google_log_in" : "kakao_log_in";
                }
                int i3 = iArr[socialAuthMode.ordinal()];
                if (i3 != 1) {
                    str2 = i3 != 2 ? "authentication_with_google" : "authentication_with_kakao";
                } else {
                    str2 = "authentication_with_line";
                }
                int i4 = iArr[socialAuthMode.ordinal()];
                if (i4 != 1) {
                    str3 = i4 != 2 ? "google_login_success" : "kakao_login_success";
                } else {
                    str3 = "line_login_success";
                }
                String str6 = str3;
                AdditionalProperty.ChannelId channelId = new AdditionalProperty.ChannelId("social_login");
                AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(str4);
                TrackingAuthOrigin trackingAuthOrigin = onSocialLoginSuccessEvent.f54179a;
                String trackingKey = trackingAuthOrigin != null ? trackingAuthOrigin.getTrackingKey() : null;
                if (trackingKey == null) {
                    trackingKey = "";
                }
                AdditionalProperty.Origin origin = new AdditionalProperty.Origin(trackingKey);
                TrackingAuthEntryPoint trackingAuthEntryPoint = onSocialLoginSuccessEvent.f54180b;
                String trackingKey2 = trackingAuthEntryPoint != null ? trackingAuthEntryPoint.getTrackingKey() : null;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(HitType.Login.f66514a, str2, str6, "mylv_native", MvelScriptManager.VAR_EVENT, "mylv_native_authentification", CollectionsKt.P(channelId, contentId, origin, new AdditionalProperty.EntryPoint(trackingKey2 != null ? trackingKey2 : "")));
            } else if (socialLoginTrackingUiModel instanceof SocialLoginTrackingUiModel.OnSocialLoginFailureEvent) {
                SocialLoginTrackingUiModel.OnSocialLoginFailureEvent onSocialLoginFailureEvent = (SocialLoginTrackingUiModel.OnSocialLoginFailureEvent) socialLoginTrackingUiModel;
                SocialAuthMode socialAuthMode2 = onSocialLoginFailureEvent.f54178c;
                int[] iArr2 = SocialLoginTrackingUiModelKt$WhenMappings.f54182a;
                int i5 = iArr2[socialAuthMode2.ordinal()];
                if (i5 != 1) {
                    str4 = i5 != 2 ? "google_log_in" : "kakao_log_in";
                }
                int i6 = iArr2[socialAuthMode2.ordinal()];
                if (i6 != 1) {
                    str5 = i6 != 2 ? "authentication_with_google" : "authentication_with_kakao";
                }
                int i7 = iArr2[socialAuthMode2.ordinal()];
                if (i7 != 1) {
                    str = i7 != 2 ? "google_login_fail" : "kakao_login_fail";
                } else {
                    str = "line_login_fail";
                }
                AdditionalProperty.ChannelId channelId2 = new AdditionalProperty.ChannelId("social_login");
                AdditionalProperty.ContentId contentId2 = new AdditionalProperty.ContentId(str4);
                TrackingAuthOrigin trackingAuthOrigin2 = onSocialLoginFailureEvent.f54176a;
                String trackingKey3 = trackingAuthOrigin2 != null ? trackingAuthOrigin2.getTrackingKey() : null;
                if (trackingKey3 == null) {
                    trackingKey3 = "";
                }
                AdditionalProperty.Origin origin2 = new AdditionalProperty.Origin(trackingKey3);
                TrackingAuthEntryPoint trackingAuthEntryPoint2 = onSocialLoginFailureEvent.f54177b;
                String trackingKey4 = trackingAuthEntryPoint2 != null ? trackingAuthEntryPoint2.getTrackingKey() : null;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, str5, str, "mylv_native", MvelScriptManager.VAR_EVENT, "mylv_native_authentification", CollectionsKt.P(channelId2, contentId2, origin2, new AdditionalProperty.EntryPoint(trackingKey4 != null ? trackingKey4 : "")));
            } else {
                if (!(socialLoginTrackingUiModel instanceof SocialLoginTrackingUiModel.OnSocialLoginCloseEvent)) {
                    v40.g();
                    return;
                }
                AdditionalProperty.ChannelId channelId3 = new AdditionalProperty.ChannelId("social_login");
                SocialLoginTrackingUiModel.OnSocialLoginCloseEvent onSocialLoginCloseEvent = (SocialLoginTrackingUiModel.OnSocialLoginCloseEvent) socialLoginTrackingUiModel;
                TrackingAuthOrigin trackingAuthOrigin3 = onSocialLoginCloseEvent.f54174a;
                String trackingKey5 = trackingAuthOrigin3 != null ? trackingAuthOrigin3.getTrackingKey() : null;
                if (trackingKey5 == null) {
                    trackingKey5 = "";
                }
                AdditionalProperty.Origin origin3 = new AdditionalProperty.Origin(trackingKey5);
                TrackingAuthEntryPoint trackingAuthEntryPoint3 = onSocialLoginCloseEvent.f54175b;
                String trackingKey6 = trackingAuthEntryPoint3 != null ? trackingAuthEntryPoint3.getTrackingKey() : null;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "i_already_have_an_account", "close_popin", "mylv_native", "i_already_have_an_account", "mylv_native_authentification", CollectionsKt.P(channelId3, origin3, new AdditionalProperty.EntryPoint(trackingKey6 != null ? trackingKey6 : "")));
            }
            this.f54040b.a(defaultEventHit);
        }
        SocialLoginTrackingUiModel.OnSocialLoginClickEvent onSocialLoginClickEvent = (SocialLoginTrackingUiModel.OnSocialLoginClickEvent) socialLoginTrackingUiModel;
        int i8 = SocialLoginTrackingUiModelKt$WhenMappings.f54182a[onSocialLoginClickEvent.f54173c.ordinal()];
        if (i8 != 1) {
            str4 = i8 != 2 ? "google_log_in" : "kakao_log_in";
        }
        AdditionalProperty.ChannelId channelId4 = new AdditionalProperty.ChannelId("social_login");
        TrackingAuthOrigin trackingAuthOrigin4 = onSocialLoginClickEvent.f54171a;
        String trackingKey7 = trackingAuthOrigin4 != null ? trackingAuthOrigin4.getTrackingKey() : null;
        if (trackingKey7 == null) {
            trackingKey7 = "";
        }
        AdditionalProperty.Origin origin4 = new AdditionalProperty.Origin(trackingKey7);
        TrackingAuthEntryPoint trackingAuthEntryPoint4 = onSocialLoginClickEvent.f54172b;
        String trackingKey8 = trackingAuthEntryPoint4 != null ? trackingAuthEntryPoint4.getTrackingKey() : null;
        defaultEventHit = new Hit.EventHit.DefaultEventHit(interaction, "mylv", str4, "mylv_native", "click", "mylv_native_authentification", CollectionsKt.P(channelId4, origin4, new AdditionalProperty.EntryPoint(trackingKey8 != null ? trackingKey8 : "")));
        this.f54040b.a(defaultEventHit);
    }
}
