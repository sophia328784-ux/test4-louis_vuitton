package com.vuitton.android.presentation.screen.account.myinformation;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase;
import com.vuitton.android.domain.usecase.account.profile.DeleteAccountUseCase;
import com.vuitton.android.domain.usecase.account.profile.UpdatePasswordUseCase;
import com.vuitton.android.domain.usecase.account.profile.UpdateProfileInfoUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import com.vuitton.android.domain.usecase.forms.GetProfileFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetProfileCivilitiesMappingUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.addresseditor.error.AddressErrorMessageMapper;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoFeatureFlags;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoLocaleFlags;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.ba0;
import defpackage.g3;
import defpackage.ka;
import defpackage.md;
import defpackage.o60;
import defpackage.rq;
import defpackage.v40;
import defpackage.vd0;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
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
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B©\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "myInfoEditFormSupervisor", "Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;", "addressErrorMessageMapper", "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;", "logoutUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;", "deleteAccountUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;", "getProfileFormUseCase", "Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;", "updatePasswordUseCase", "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;", "getUserConsentsUseCase", "Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;", "updateProfileInfoUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;", "resetDynamicYieldIdUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;", "unsetAppsFlyerCustomerIdUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;", "getProfileCivilitiesMappingUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MyInformationViewModelImpl extends ViewModel implements MyInformationViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final SharedFlowImpl E;
    public final SharedFlow F;
    public final LinkedHashMap G;
    public MonitorAction H;
    public final StateFlow I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f52527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f52528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f52529c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationsManager f52530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DynamicFormSupervisor f52531f;
    public final AddressErrorMessageMapper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LogoutUseCase f52532h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetProfileUseCase f52533i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DeleteAccountUseCase f52534j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetProfileFormUseCase f52535k;
    public final UpdatePasswordUseCase l;
    public final GetUserConsentsUseCase m;
    public final UpdateProfileInfoUseCase n;
    public final IsFeatureAvailableUseCase o;
    public final ResetDynamicYieldIdUseCase p;
    public final UnsetAppsFlyerCustomerIdUseCase q;
    public final GetProfileCivilitiesMappingUseCase r;
    public final InAppDispatch s;
    public final AppConfig t;
    public List u;
    public final SharedFlowImpl v;
    public final SharedFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$1", f = "MyInformationViewModelImpl.kt", l = {159}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52536b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return MyInformationViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52536b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f52536b = 1;
                if (MyInformationViewModelImpl.zc(MyInformationViewModelImpl.this, this) == coroutineSingletons) {
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

    @Inject
    public MyInformationViewModelImpl(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, NotificationBuilder notificationBuilder, NotificationsManager notificationsManager, DynamicFormSupervisor dynamicFormSupervisor, AddressErrorMessageMapper addressErrorMessageMapper, LogoutUseCase logoutUseCase, GetProfileUseCase getProfileUseCase, DeleteAccountUseCase deleteAccountUseCase, GetProfileFormUseCase getProfileFormUseCase, UpdatePasswordUseCase updatePasswordUseCase, GetUserConsentsUseCase getUserConsentsUseCase, UpdateProfileInfoUseCase updateProfileInfoUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase, UnsetAppsFlyerCustomerIdUseCase unsetAppsFlyerCustomerIdUseCase, GetProfileCivilitiesMappingUseCase getProfileCivilitiesMappingUseCase) {
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        notificationBuilder.getClass();
        notificationsManager.getClass();
        dynamicFormSupervisor.getClass();
        addressErrorMessageMapper.getClass();
        logoutUseCase.getClass();
        getProfileUseCase.getClass();
        deleteAccountUseCase.getClass();
        getProfileFormUseCase.getClass();
        updatePasswordUseCase.getClass();
        getUserConsentsUseCase.getClass();
        updateProfileInfoUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        resetDynamicYieldIdUseCase.getClass();
        unsetAppsFlyerCustomerIdUseCase.getClass();
        getProfileCivilitiesMappingUseCase.getClass();
        this.f52527a = logger;
        this.f52528b = monitor;
        this.f52529c = analyticsTracker;
        this.d = notificationBuilder;
        this.f52530e = notificationsManager;
        this.f52531f = dynamicFormSupervisor;
        this.g = addressErrorMessageMapper;
        this.f52532h = logoutUseCase;
        this.f52533i = getProfileUseCase;
        this.f52534j = deleteAccountUseCase;
        this.f52535k = getProfileFormUseCase;
        this.l = updatePasswordUseCase;
        this.m = getUserConsentsUseCase;
        this.n = updateProfileInfoUseCase;
        this.o = isFeatureAvailableUseCase;
        this.p = resetDynamicYieldIdUseCase;
        this.q = unsetAppsFlyerCustomerIdUseCase;
        this.r = getProfileCivilitiesMappingUseCase;
        this.s = requireUserInAppDispatchUseCase.f49912a.b();
        this.t = requireCachedAppConfigUseCase.a();
        this.u = EmptyList.f71768b;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.v = sharedFlowImplB;
        this.w = FlowKt.a(sharedFlowImplB);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.x = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA2;
        this.z = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.A = mutableStateFlowA3;
        boolean z = false;
        boolean z2 = false;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new MyInfoLocaleFlags(false, z, z2, 7, null));
        this.B = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new MyInfoFeatureFlags(z, z2, false, 7, null));
        this.C = mutableStateFlowA5;
        MyInfoUiModel.f52656j.getClass();
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(MyInfoUiModel.f52657k);
        this.D = mutableStateFlowA6;
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(1, 1, null, 4);
        this.E = sharedFlowImplB2;
        this.F = FlowKt.a(sharedFlowImplB2);
        this.G = new LinkedHashMap();
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, dynamicFormSupervisor.getF57468c(), mutableStateFlowA2};
        Flow<MyInformationViewState> flow = new Flow<MyInformationViewState>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$special$$inlined$combine$1$3", f = "MyInformationViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super MyInformationViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f52574b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f52575c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f52575c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f52575c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f52574b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        MyInfoLocaleFlags myInfoLocaleFlags = (MyInfoLocaleFlags) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        MyInfoFeatureFlags myInfoFeatureFlags = (MyInfoFeatureFlags) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        MyInfoUiModel myInfoUiModel = (MyInfoUiModel) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        MyInformationViewState myInformationViewState = new MyInformationViewState(zBooleanValue2, zBooleanValue, myInfoLocaleFlags, myInfoFeatureFlags, myInfoUiModel, formUiModel, ((Boolean) obj8).booleanValue());
                        this.f52575c = null;
                        this.d = null;
                        this.f52574b = 1;
                        if (flowCollector.emit(myInformationViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$special$$inlined$combine$1.2
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
        this.I = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new MyInformationViewState(false, false, null, null, null, (FormUiModel) dynamicFormSupervisor.getF57468c().getValue(), false, 95, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        if (((kotlinx.coroutines.flow.Flow) r7).f(r4, r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Ac(final com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1 r0 = (com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1) r0
            int r1 = r0.f52578e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f52578e = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1 r0 = new com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f52577c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f52578e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L31
            if (r2 != r3) goto L2b
            kotlin.ResultKt.b(r7)
            goto L77
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r4
        L31:
            int r2 = r0.f52576b
            kotlin.ResultKt.b(r7)
            goto L65
        L37:
            kotlin.ResultKt.b(r7)
            kotlinx.coroutines.flow.MutableStateFlow r7 = r6.z
            java.lang.Object r7 = r7.getValue()
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = (com.vuitton.foundation.model.domain.model.profile.Profile) r7
            if (r7 == 0) goto L46
            com.vuitton.foundation.model.domain.model.account.PhoneNumber r4 = r7.q
        L46:
            if (r4 == 0) goto L4a
            r2 = r5
            goto L4c
        L4a:
            r7 = 0
            r2 = r7
        L4c:
            if (r2 != 0) goto L58
            kotlinx.coroutines.flow.MutableStateFlow r6 = r6.y
            java.lang.Boolean r7 = java.lang.Boolean.FALSE
            r6.setValue(r7)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L58:
            com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase r7 = r6.m
            r0.f52576b = r2
            r0.f52578e = r5
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L65
            goto L76
        L65:
            kotlinx.coroutines.flow.Flow r7 = (kotlinx.coroutines.flow.Flow) r7
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2 r4 = new com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateMarketingDisclaimerVisibility$2
            r4.<init>()
            r0.f52576b = r2
            r0.f52578e = r3
            java.lang.Object r6 = r7.f(r4, r0)
            if (r6 != r1) goto L77
        L76:
            return r1
        L77:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl.Ac(com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008e  */
    /* JADX WARN: Code duplicated, block: B:36:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:37:0x00be  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:45:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:59:0x0103  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
    
        if (r1 == r3) goto L29;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x0103, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl.yc(com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0091  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00da  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:39:0x011e  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00da -> B:14:0x003f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r17, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl.zc(com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Bc(ContinuationImpl continuationImpl) {
        MyInformationViewModelImpl$getProfileCivilitiesMapping$1 myInformationViewModelImpl$getProfileCivilitiesMapping$1;
        Object objA;
        if (continuationImpl instanceof MyInformationViewModelImpl$getProfileCivilitiesMapping$1) {
            myInformationViewModelImpl$getProfileCivilitiesMapping$1 = (MyInformationViewModelImpl$getProfileCivilitiesMapping$1) continuationImpl;
            int i2 = myInformationViewModelImpl$getProfileCivilitiesMapping$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                myInformationViewModelImpl$getProfileCivilitiesMapping$1.d = i2 - Integer.MIN_VALUE;
            } else {
                myInformationViewModelImpl$getProfileCivilitiesMapping$1 = new MyInformationViewModelImpl$getProfileCivilitiesMapping$1(this, continuationImpl);
            }
        } else {
            myInformationViewModelImpl$getProfileCivilitiesMapping$1 = new MyInformationViewModelImpl$getProfileCivilitiesMapping$1(this, continuationImpl);
        }
        Object obj = myInformationViewModelImpl$getProfileCivilitiesMapping$1.f52541b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = myInformationViewModelImpl$getProfileCivilitiesMapping$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            String str = this.s.f67483j;
            boolean z = ((MyInfoFeatureFlags) this.C.getValue()).f52641b;
            myInformationViewModelImpl$getProfileCivilitiesMapping$1.d = 1;
            objA = this.r.a(str, z, myInformationViewModelImpl$getProfileCivilitiesMapping$1);
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
            this.u = (List) objA;
        }
        return objA;
    }

    public final void Cc(Function1 function1, Function1 function2) {
        LinkedHashMap linkedHashMap = this.G;
        Job job = (Job) linkedHashMap.get("loadDynamicProfileFormJob");
        if (job == null || !job.isActive()) {
            this.H = this.f52528b.a(this.s, MyInformationMonitoring.Action.OpenMyInformation.f48922a);
            linkedHashMap.put("loadDynamicProfileFormJob", BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$loadDynamicProfileForm$3(this, function1, function2, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void Da() {
        Ec(new vd0(this, 2));
    }

    public final boolean Dc(StringResourceUiModel stringResourceUiModel, boolean z) {
        return this.E.a(NotificationBuilder.a(this.d, stringResourceUiModel, z, null, null, 60));
    }

    public final void Ec(Function1 function1) {
        LinkedHashMap linkedHashMap = this.G;
        Job job = (Job) linkedHashMap.get("updateProfileInfoJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("updateProfileInfoJob", BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$updateProfileInfo$1(this, function1, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void Q4() {
        Cc(new ba0(25), new ba0(27));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void Y7() {
        this.y.setValue(Boolean.TRUE);
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getI() {
        return this.I;
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void ac(boolean z) {
        this.A.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final SharedFlow getF() {
        return this.F;
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void d2() {
        LinkedHashMap linkedHashMap = this.G;
        Job job = (Job) linkedHashMap.get("deleteAccountJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("deleteAccountJob", BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$deleteAccount$1(this, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        this.f52531f.j(formSectionTypeUiModel, obj, new rq(9));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void g9() {
        Ec(new vd0(this, 1));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    /* JADX INFO: renamed from: h, reason: from getter */
    public final SharedFlow getW() {
        return this.w;
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void j9() {
        Ec(new vd0(this, 0));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void m5(MyInfoTrackingUiModel myInfoTrackingUiModel) {
        Hit defaultEventHit;
        if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.MyInformationScreen.f52652a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/Profil", "mylv/my_profile", "mylv", null, 17, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.EditMyInfoScreen.f52647a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "mylv_myinfo", "mylv_myinfo", "mylv", null, 17, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.EditMyInfoScreenMissingPhoneNumber.f52648a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "mylv_myinfo_missing_phone_number", "mylv_myinfo", "mylv", null, 17, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.EditMyInfoScreenSmsMarketingDisclaimer.f52649a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "mylv_myinfo_sms_marketing_disclaimer", "mylv_myinfo", "mylv", null, 17, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.EditPasswordScreen.f52650a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/Password/Edit", "mylv/my_profile/edit_password", "mylv", null, 17, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.EditProfileEvent.f52651a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Profil", "EditProfil", "mylv", "navigation", null, null, 97, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.DeleteProfileEvent.f52646a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/My_information", "remove_intention", "mylv", "remove_account", null, null, 97, null);
        } else if (myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.SaveProfileEvent.f52653a) || myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.SaveProfileWithMissingPhoneNumber.f52654a)) {
            Hit.EventHit.DefaultEventHit defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "mylv_myinfo_missing_phone_number", "cta_save_modifications", "mylv", "click", null, o60.t("missing_phone_number_form"), 33, null);
            defaultEventHit = defaultEventHit2;
        } else {
            if (!myInfoTrackingUiModel.equals(MyInfoTrackingUiModel.SaveProfileWithSmsDisclaimerEvent.f52655a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_myinfo_sms_marketing_disclaimer", "cta_save_modifications", "mylv", "click", null, o60.t("sms_marketing_disclaimer_form"), 33, null);
        }
        this.f52529c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void na(String str, String str2) {
        str.getClass();
        str2.getClass();
        LinkedHashMap linkedHashMap = this.G;
        Job job = (Job) linkedHashMap.get("savePasswordChangesJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("savePasswordChangesJob", BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$savePasswordChanges$1(this, str, str2, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void q() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$logoutUser$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void q4() {
        LinkedHashMap linkedHashMap = this.G;
        Job job = (Job) linkedHashMap.get("loadMyInfoJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("loadMyInfoJob", BuildersKt.c(ViewModelKt.a(this), null, null, new MyInformationViewModelImpl$loadMyInfo$1(this, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void r5() {
        Cc(new ba0(26), new ba0(27));
    }

    @Override // com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel
    public final void z3() {
        LinkedHashSet linkedHashSetE = SetsKt.e(FormSectionTypeUiModel.VAT_CODE, FormSectionTypeUiModel.BRANCH_ID);
        if (!((MyInformationViewState) this.I.getValue()).d.f52642c) {
            linkedHashSetE.add(FormSectionTypeUiModel.PHONE_BLOC);
        }
        Cc(new g3(2, CollectionsKt.B0(linkedHashSetE)), new ka(((MyInfoLocaleFlags) this.B.getValue()).f52643a, this, 2));
    }
}
