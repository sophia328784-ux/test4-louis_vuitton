package com.vuitton.android.presentation.screen.options.settings;

import android.app.Application;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase;
import com.vuitton.android.domain.usecase.account.consent.PatchUserConsentsUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.mylv.models.UserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsTrackingUiModelKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BY\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;", "settingsTracker", "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;", "getUserConsentsUseCase", "Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;", "patchUserConsentsUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SettingsViewModelImpl extends AndroidViewModel implements SettingsViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f59996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f59997c;
    public final GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SettingsTracker f59998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetUserConsentsUseCase f59999f;
    public final PatchUserConsentsUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f60000h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedChannel f60001i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BufferedChannel f60002j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f60003k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final StateFlow t;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$1", f = "SettingsViewModelImpl.kt", l = {115, 116, 117}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f60004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f60005c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SettingsViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0075  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            MutableStateFlow mutableStateFlow2;
            MutableStateFlow mutableStateFlow3;
            Object objC;
            MutableStateFlow mutableStateFlow4;
            SettingsViewModelImpl settingsViewModelImpl = SettingsViewModelImpl.this;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = settingsViewModelImpl.f59997c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60005c;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableStateFlow = settingsViewModelImpl.q;
                Feature[] featureArr = {Feature.POWERFRONT};
                this.f60004b = mutableStateFlow;
                this.f60005c = 1;
                obj = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (obj != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                mutableStateFlow = (MutableStateFlow) this.f60004b;
                ResultKt.b(obj);
            } else {
                if (i2 == 2) {
                    mutableStateFlow2 = (MutableStateFlow) this.f60004b;
                    ResultKt.b(obj);
                    mutableStateFlow2.setValue(obj);
                    mutableStateFlow3 = settingsViewModelImpl.s;
                    Feature[] featureArr2 = {Feature.EMAIL_TRACKING_CONSENT};
                    this.f60004b = mutableStateFlow3;
                    this.f60005c = 3;
                    objC = isFeatureAvailableUseCase.c(featureArr2, false, this);
                    if (objC != coroutineSingletons) {
                        obj = objC;
                        mutableStateFlow4 = mutableStateFlow3;
                    }
                    return coroutineSingletons;
                }
                if (i2 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow4 = (MutableStateFlow) this.f60004b;
                ResultKt.b(obj);
            }
            mutableStateFlow4.setValue(obj);
            MutableStateFlow mutableStateFlow5 = settingsViewModelImpl.m;
            mutableStateFlow5.setValue(settingsViewModelImpl.yc((UserConsentsUiModel) mutableStateFlow5.getValue()));
            return Unit.f71739a;
            mutableStateFlow.setValue(obj);
            mutableStateFlow2 = settingsViewModelImpl.r;
            Feature[] featureArr3 = {Feature.SMS_CONSENT};
            this.f60004b = mutableStateFlow2;
            this.f60005c = 2;
            obj = isFeatureAvailableUseCase.c(featureArr3, false, this);
            if (obj != coroutineSingletons) {
                mutableStateFlow2.setValue(obj);
                mutableStateFlow3 = settingsViewModelImpl.s;
                Feature[] featureArr4 = {Feature.EMAIL_TRACKING_CONSENT};
                this.f60004b = mutableStateFlow3;
                this.f60005c = 3;
                objC = isFeatureAvailableUseCase.c(featureArr4, false, this);
                if (objC != coroutineSingletons) {
                    obj = objC;
                    mutableStateFlow4 = mutableStateFlow3;
                    mutableStateFlow4.setValue(obj);
                    MutableStateFlow mutableStateFlow6 = settingsViewModelImpl.m;
                    mutableStateFlow6.setValue(settingsViewModelImpl.yc((UserConsentsUiModel) mutableStateFlow6.getValue()));
                    return Unit.f71739a;
                }
            }
            return coroutineSingletons;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public SettingsViewModelImpl(Application application, UserSessionService userSessionService, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProfileUseCase getProfileUseCase, SettingsTracker settingsTracker, GetUserConsentsUseCase getUserConsentsUseCase, PatchUserConsentsUseCase patchUserConsentsUseCase, NotificationBuilder notificationBuilder) {
        super(application);
        application.getClass();
        userSessionService.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getProfileUseCase.getClass();
        settingsTracker.getClass();
        getUserConsentsUseCase.getClass();
        patchUserConsentsUseCase.getClass();
        notificationBuilder.getClass();
        this.f59996b = analyticsTracker;
        this.f59997c = isFeatureAvailableUseCase;
        this.d = getProfileUseCase;
        this.f59998e = settingsTracker;
        this.f59999f = getUserConsentsUseCase;
        this.g = patchUserConsentsUseCase;
        this.f60000h = notificationBuilder;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f60001i = ChannelKt.a(0, 7, null);
        this.f60002j = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f60003k = mutableStateFlowA;
        boolean zB = userSessionService.b();
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new UserConsentsUiModel(null, null, 3, null));
        this.m = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new UserConsentsUiModel(null, null, 3, null));
        this.n = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(Boolean.valueOf(InAppDispatchExtKt.b(inAppDispatchB) && InAppDispatchExtKt.k(inAppDispatchB)));
        this.o = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.GOOGLE_CUSTOMER_MATCH})));
        this.p = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.q = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.r = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA9;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA4, mutableStateFlowA3, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA5, mutableStateFlowA2, mutableStateFlowA8, mutableStateFlowA9};
        Flow<SettingsViewState> flow = new Flow<SettingsViewState>() { // from class: com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$special$$inlined$combine$1$3", f = "SettingsViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super SettingsViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60024b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60025c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f60025c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60025c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60024b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        UserConsentsUiModel userConsentsUiModel = (UserConsentsUiModel) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        UserConsentsUiModel userConsentsUiModel2 = (UserConsentsUiModel) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[7];
                        obj9.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[8];
                        obj10.getClass();
                        SettingsViewState settingsViewState = new SettingsViewState(zBooleanValue, userConsentsUiModel, userConsentsUiModel2, zBooleanValue2, false, zBooleanValue6, zBooleanValue3, false, false, false, zBooleanValue4, zBooleanValue5, ((Boolean) obj10).booleanValue(), 912, null);
                        this.f60025c = null;
                        this.d = null;
                        this.f60024b = 1;
                        if (flowCollector.emit(settingsViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.t = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new SettingsViewState(false, null, null, false, false, false, false, false, false, false, false, false, false, 8191, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        if (zB) {
            CloseableCoroutineScope closeableCoroutineScopeA2 = ViewModelKt.a(this);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            BuildersKt.c(closeableCoroutineScopeA2, DefaultIoScheduler.f75161b, null, new SettingsViewModelImpl$retrieveProfile$1(this, null), 2);
            BuildersKt.c(ViewModelKt.a(this), null, null, new SettingsViewModelImpl$retrieveConsents$1(this, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void Aa() {
        this.f59998e.f59995a.a(new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Profil", "EditProfil", "MyLV", "navigation", null, null, 97, null));
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final boolean N3() {
        MarketingUserConsentsUiModel marketingUserConsentsUiModel = (MarketingUserConsentsUiModel) ((UserConsentsUiModel) this.n.getValue()).f59457b.getF10755b();
        MarketingUserConsentsUiModel marketingUserConsentsUiModel2 = (MarketingUserConsentsUiModel) ((UserConsentsUiModel) this.m.getValue()).f59457b.getF10755b();
        if (!Intrinsics.c(marketingUserConsentsUiModel.f59409e, marketingUserConsentsUiModel2.f59409e) || marketingUserConsentsUiModel.d != marketingUserConsentsUiModel2.d || marketingUserConsentsUiModel.f59406a != marketingUserConsentsUiModel2.f59406a || marketingUserConsentsUiModel.f59407b != marketingUserConsentsUiModel2.f59407b || marketingUserConsentsUiModel.f59408c != marketingUserConsentsUiModel2.f59408c) {
            return true;
        }
        Boolean bool = marketingUserConsentsUiModel.g;
        Boolean boolValueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        Boolean bool2 = marketingUserConsentsUiModel2.g;
        if (bool2 == null) {
            bool2 = Boolean.FALSE;
        }
        return !boolValueOf.equals(bool2);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void Z5() {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new SettingsViewModelImpl$patchUserConsents$1(this, true, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final Flow b() {
        return FlowKt.y(this.f60001i);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void cc(SettingsTrackingUiModel settingsTrackingUiModel) {
        Hit hitA;
        Hit.EventHit.DefaultEventHit defaultEventHit;
        if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.GoogleCustomerMatchBottomSheetScreen.f60060a)) {
            hitA = new Hit.ScreenHit.DefaultScreenHit(null, "mylv_mysettings", "mylv_mysettings", "consent_manager", null, 17, null);
        } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.MissingPhoneNumberBottomSheetScreen.f60061a)) {
            hitA = new Hit.ScreenHit.DefaultScreenHit(null, "mylv_myinfo_missing_phone_number", "mylv_contactsettings", "consent_manager", null, 17, null);
        } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.ContactPreferencesScreen.f60058a)) {
            hitA = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/mysettings/contactPreferences", "mylv/my_settings/contact_preferences", Payload.RESPONSE, null, 17, null);
        } else {
            if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.ConsentToggleEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_myprivacysettings", ((SettingsTrackingUiModel.ConsentToggleEvent) settingsTrackingUiModel).f60054a ? "consent_enabled" : "consent_disabled", "google_customer_match_consent", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.ViaPartnersClickEvent.f60066a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_myprivacysettings", "via_partners", "google_customer_match_consent", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.PrivacyPolicyClickEvent.f60064a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_myprivacysettings", "privacy_policy", "google_customer_match_consent", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.CloseMissingPhoneNumberBottomSheetEvent.f60053a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "consent_manager", "close_popin", "sms_marketing", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel.equals(SettingsTrackingUiModel.OpenProfileClickEvent.f60063a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "consent_manager", "cta_complete_your_profile", "sms_marketing", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.SmsConsentToggleEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "consent_manager", ((SettingsTrackingUiModel.SmsConsentToggleEvent) settingsTrackingUiModel).f60065a ? "consent_enabled" : "consent_disabled", "sms_marketing", "click", null, null, 97, null);
            } else if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.ContactByPhoneToggleEvent) {
                hitA = SettingsTrackingUiModelKt.a("phone", ((SettingsTrackingUiModel.ContactByPhoneToggleEvent) settingsTrackingUiModel).f60056a);
            } else if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.ContactBySmsToggleEvent) {
                hitA = SettingsTrackingUiModelKt.a("sms", ((SettingsTrackingUiModel.ContactBySmsToggleEvent) settingsTrackingUiModel).f60057a);
            } else if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.ContactByMailToggleEvent) {
                hitA = SettingsTrackingUiModelKt.a("mail", ((SettingsTrackingUiModel.ContactByMailToggleEvent) settingsTrackingUiModel).f60055a);
            } else if (settingsTrackingUiModel instanceof SettingsTrackingUiModel.NewsletterToggleEvent) {
                hitA = SettingsTrackingUiModelKt.a("newsletter", ((SettingsTrackingUiModel.NewsletterToggleEvent) settingsTrackingUiModel).f60062a);
            } else {
                if (!(settingsTrackingUiModel instanceof SettingsTrackingUiModel.EmailTrackingToggleEvent)) {
                    v40.g();
                    return;
                }
                hitA = SettingsTrackingUiModelKt.a("email_tracking", ((SettingsTrackingUiModel.EmailTrackingToggleEvent) settingsTrackingUiModel).f60059a);
            }
            hitA = defaultEventHit;
        }
        this.f59996b.a(hitA);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void db(boolean z) {
        this.l.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void ja(boolean z) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new SettingsViewModelImpl$updatePartnerConsent$1(this, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final Flow k3() {
        return FlowKt.y(this.f60002j);
    }

    @Override // com.vuitton.android.presentation.screen.options.settings.SettingsViewModel
    public final void v1() {
        MutableStateFlow mutableStateFlow = this.n;
        this.m.setValue(yc(UserConsentsUiModel.a((UserConsentsUiModel) mutableStateFlow.getValue(), SnapshotStateKt.g(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) ((UserConsentsUiModel) mutableStateFlow.getValue()).f59457b.getF10755b(), false, false, false, false, null, null, null, CertificateBody.profileType)))));
    }

    public final UserConsentsUiModel yc(UserConsentsUiModel userConsentsUiModel) {
        MarketingUserConsentsUiModel marketingUserConsentsUiModel = (MarketingUserConsentsUiModel) userConsentsUiModel.f59457b.getF10755b();
        return (((Boolean) this.s.getValue()).booleanValue() && !marketingUserConsentsUiModel.f59408c && Intrinsics.c(marketingUserConsentsUiModel.g, Boolean.TRUE)) ? UserConsentsUiModel.a(userConsentsUiModel, SnapshotStateKt.g(MarketingUserConsentsUiModel.a(marketingUserConsentsUiModel, false, false, false, false, null, null, Boolean.FALSE, 63))) : userConsentsUiModel;
    }
}
