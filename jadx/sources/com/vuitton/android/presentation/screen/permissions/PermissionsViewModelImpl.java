package com.vuitton.android.presentation.screen.permissions;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.account.notifications.GetContactabilityUseCase;
import com.vuitton.android.domain.usecase.account.notifications.GetNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.notifications.SaveNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.permissions.ShouldRequestNotificationsPermissionUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomisationTrackerUseCase;
import com.vuitton.android.domain.usecase.privacy.UpdateConsentForCustomisationTrackerUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.feed.models.ContactabilityTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesTracker;
import com.vuitton.android.presentation.screen.permissions.models.NotificationType;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsTrackingUIModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsTrackingUIModelKt$WhenMappings;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.utils.NotificationUtils;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.md;
import defpackage.ul0;
import defpackage.v40;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
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
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dBi\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;", "notificationsPreferencesTracker", "Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;", "getNotificationsPreferencesUseCase", "Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;", "saveNotificationsPreferencesUseCase", "Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;", "getContactabilityUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;", "getConsentForCustomisationTrackerUseCase", "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;", "shouldRequestNotificationsPermissionUseCase", "Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;", "updateConsentForCustomisationTrackerUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PermissionsViewModelImpl extends AndroidViewModel implements PermissionsViewModel {
    public static final /* synthetic */ int v = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LVEventSender f62320b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f62321c;
    public final NotificationsPreferencesTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetNotificationsPreferencesUseCase f62322e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SaveNotificationsPreferencesUseCase f62323f;
    public final GetContactabilityUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetConsentForCustomisationTrackerUseCase f62324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ShouldRequestNotificationsPermissionUseCase f62325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final UpdateConsentForCustomisationTrackerUseCase f62326j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NotificationType f62327k;
    public final InAppDispatch l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final SharedFlowImpl r;
    public final SharedFlow s;
    public final SharedFlowImpl t;
    public final StateFlow u;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1", f = "PermissionsViewModelImpl.kt", l = {106}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f62328b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent$ConsentsUpdatedEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$1", f = "PermissionsViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C03001 extends SuspendLambda implements Function2<AppEvent.ConsentsUpdatedEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ PermissionsViewModelImpl f62330b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03001(PermissionsViewModelImpl permissionsViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f62330b = permissionsViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C03001(this.f62330b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03001) create((AppEvent.ConsentsUpdatedEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f62330b.l4();
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return PermissionsViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f62328b;
            if (i2 == 0) {
                ResultKt.b(obj);
                PermissionsViewModelImpl permissionsViewModelImpl = PermissionsViewModelImpl.this;
                final SharedFlow sharedFlow = permissionsViewModelImpl.f62320b.f43512c;
                Flow<Object> flow = new Flow<Object>() { // from class: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$invokeSuspend$$inlined$filterIsInstance$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$invokeSuspend$$inlined$filterIsInstance$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f62332b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$invokeSuspend$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "PermissionsViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f62333b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f62334c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f62333b = obj;
                                this.f62334c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f62332b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f62334c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f62334c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f62333b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f62334c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (obj instanceof AppEvent.ConsentsUpdatedEvent) {
                                    anonymousClass1.f62334c = 1;
                                    if (this.f62332b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                            } else {
                                if (i3 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object f(FlowCollector flowCollector, Continuation continuation) {
                        Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                C03001 c03001 = new C03001(permissionsViewModelImpl, null);
                this.f62328b = 1;
                if (FlowKt.g(flow, c03001, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl$Companion;", "", "", "RUN_TIME_NOTIFICATION_TYPE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public PermissionsViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, LVEventSender lVEventSender, AnalyticsTracker analyticsTracker, NotificationsPreferencesTracker notificationsPreferencesTracker, GetNotificationsPreferencesUseCase getNotificationsPreferencesUseCase, SaveNotificationsPreferencesUseCase saveNotificationsPreferencesUseCase, GetContactabilityUseCase getContactabilityUseCase, GetConsentForCustomisationTrackerUseCase getConsentForCustomisationTrackerUseCase, ShouldRequestNotificationsPermissionUseCase shouldRequestNotificationsPermissionUseCase, UpdateConsentForCustomisationTrackerUseCase updateConsentForCustomisationTrackerUseCase) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        lVEventSender.getClass();
        analyticsTracker.getClass();
        notificationsPreferencesTracker.getClass();
        getNotificationsPreferencesUseCase.getClass();
        saveNotificationsPreferencesUseCase.getClass();
        getContactabilityUseCase.getClass();
        getConsentForCustomisationTrackerUseCase.getClass();
        shouldRequestNotificationsPermissionUseCase.getClass();
        updateConsentForCustomisationTrackerUseCase.getClass();
        this.f62320b = lVEventSender;
        this.f62321c = analyticsTracker;
        this.d = notificationsPreferencesTracker;
        this.f62322e = getNotificationsPreferencesUseCase;
        this.f62323f = saveNotificationsPreferencesUseCase;
        this.g = getContactabilityUseCase;
        this.f62324h = getConsentForCustomisationTrackerUseCase;
        this.f62325i = shouldRequestNotificationsPermissionUseCase;
        this.f62326j = updateConsentForCustomisationTrackerUseCase;
        NotificationType notificationType = (NotificationType) savedStateHandle.a("RUN_TIME_NOTIFICATION_TYPE");
        this.f62327k = notificationType == null ? NotificationType.UNKNOWN : notificationType;
        this.l = requireUserInAppDispatchUseCase.f49912a.b();
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.m = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.n = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.o = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.p = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(PermissionsBottomSheet.None.f62367f);
        this.q = mutableStateFlowA5;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.r = sharedFlowImplB;
        this.s = FlowKt.a(sharedFlowImplB);
        this.t = SharedFlowKt.b(0, 0, null, 7);
        final Flow[] flowArr = {mutableStateFlowA5, mutableStateFlowA3, mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA4};
        Flow<PermissionsUiModel> flow = new Flow<PermissionsUiModel>() { // from class: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$special$$inlined$combine$1$3", f = "PermissionsViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super PermissionsUiModel>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f62348b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f62349c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f62349c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f62349c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f62348b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        PermissionsBottomSheet permissionsBottomSheet = (PermissionsBottomSheet) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        PermissionsUiModel permissionsUiModel = new PermissionsUiModel(permissionsBottomSheet, false, zBooleanValue, zBooleanValue2, ((Boolean) obj5).booleanValue(), (ContactabilityUiModel) objArr[4], 2, null);
                        this.f62349c = null;
                        this.d = null;
                        this.f62348b = 1;
                        if (flowCollector.emit(permissionsUiModel, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl$special$$inlined$combine$1.2
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
        this.u = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new PermissionsUiModel(null, false, false, false, false, null, 63, null));
        l4();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void A6(boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        this.o.setValue(Boolean.TRUE);
        if (Ac(z)) {
            this.q.setValue(new PermissionsBottomSheet.AllowCommunicationBottomSheet(false, 1, null));
            return;
        }
        Bc();
        yc();
        do {
            mutableStateFlow = this.n;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.FALSE));
    }

    public final boolean Ac(boolean z) {
        return !Intrinsics.c((Boolean) this.f62322e.f49103a.c().get(NotificationPreferenceType.NOTIFY_ME), Boolean.TRUE) && z;
    }

    public final void Bc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$updateNotificationState$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void E4() {
        Gb();
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void Gb() {
        this.q.setValue(PermissionsBottomSheet.None.f62367f);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void Ka(ContactabilityTrackingUiModel contactabilityTrackingUiModel, String str) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        if (contactabilityTrackingUiModel.equals(ContactabilityTrackingUiModel.PreferencesClick.f57910a)) {
            defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, str, "manage_my_preferences", "contactability", "click", null, null, 97, null);
        } else {
            if (contactabilityTrackingUiModel.equals(ContactabilityTrackingUiModel.EnableNotificationsClick.f57908a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str, "enable_notifications", "contactability", "click", null, null, 97, null);
            } else {
                if (!contactabilityTrackingUiModel.equals(ContactabilityTrackingUiModel.EnablePersonalizationClick.f57909a)) {
                    v40.g();
                    return;
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, str, "enable_personalization", "contactability", "click", null, null, 97, null);
            }
            defaultEventHit2 = defaultEventHit;
        }
        this.f62321c.a(defaultEventHit2);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void Y6() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.n;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    /* JADX INFO: renamed from: Z2, reason: from getter */
    public final SharedFlow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void aa(boolean z, ul0 ul0Var) {
        this.q.setValue(PermissionsBottomSheet.None.f62367f);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$onNotificationButtonClicked$1(this, z, ul0Var, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void l4() {
        this.m.setValue(Boolean.valueOf(!InAppDispatchExtKt.e(this.l) || this.f62324h.a()));
        Application application = this.f13405a;
        application.getClass();
        this.o.setValue(Boolean.valueOf(NotificationUtils.a(application)));
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    /* JADX INFO: renamed from: s3, reason: from getter */
    public final SharedFlowImpl getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void u8() {
        this.q.setValue(PermissionsBottomSheet.None.f62367f);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$onActivateNotificationsClicked$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void v5(PermissionContext permissionContext) {
        permissionContext.getClass();
        PermissionsBottomSheet permissionsBottomSheet = (PermissionsBottomSheet) this.q.getValue();
        if (permissionsBottomSheet instanceof PermissionsBottomSheet.CookiesAcceptanceBottomSheet) {
            zc(new PermissionsTrackingUIModel.CustomizationEnabled(permissionContext));
            BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$onBottomSheetPositiveClicked$1(this, permissionContext, null), 3);
            return;
        }
        if (permissionsBottomSheet instanceof PermissionsBottomSheet.AllowDeviceNotificationsPermissionsBottomSheet) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$onBottomSheetPositiveClicked$2(this, permissionContext, null), 3);
            return;
        }
        if (!(permissionsBottomSheet instanceof PermissionsBottomSheet.AllowCommunicationBottomSheet)) {
            Intrinsics.c(permissionsBottomSheet, PermissionsBottomSheet.None.f62367f);
            return;
        }
        zc(PermissionsTrackingUIModel.NotifyMeEnabled.f62370a);
        Map mapC = this.f62322e.f49103a.c();
        NotificationPreferenceType notificationPreferenceType = NotificationPreferenceType.BRAND_COMMUNICATION;
        Boolean bool = (Boolean) mapC.get(notificationPreferenceType);
        Pair pair = new Pair(notificationPreferenceType, Boolean.valueOf(bool != null ? bool.booleanValue() : false));
        NotificationPreferenceType notificationPreferenceType2 = NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION;
        Boolean bool2 = (Boolean) mapC.get(notificationPreferenceType2);
        Map mapI = MapsKt.i(pair, new Pair(notificationPreferenceType2, Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false)), new Pair(NotificationPreferenceType.NOTIFY_ME, Boolean.TRUE));
        SaveNotificationsPreferencesUseCase saveNotificationsPreferencesUseCase = this.f62323f;
        saveNotificationsPreferencesUseCase.getClass();
        saveNotificationsPreferencesUseCase.f49105a.a(mapI);
        this.d.getClass();
        NotificationsPreferencesTracker.a(mapI);
        Bc();
        yc();
    }

    @Override // com.vuitton.android.presentation.screen.permissions.PermissionsViewModel
    public final void x9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$fetchContactability$1(this, null), 3);
    }

    public final void yc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PermissionsViewModelImpl$closeBottomSheetAndSendResult$1(this, null), 3);
    }

    public final void zc(PermissionsTrackingUIModel permissionsTrackingUIModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        Hit.EventHit.DefaultEventHit defaultEventHit3;
        Hit.EventHit.DefaultEventHit defaultEventHit4;
        Hit.EventHit.DefaultEventHit defaultEventHit5;
        Hit.EventHit.DefaultEventHit defaultEventHit6;
        if (permissionsTrackingUIModel instanceof PermissionsTrackingUIModel.CustomizationEnabled) {
            switch (PermissionsTrackingUIModelKt$WhenMappings.f62371a[((PermissionsTrackingUIModel.CustomizationEnabled) permissionsTrackingUIModel).f62368a.ordinal()]) {
                case 1:
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "accept_perso", "explore", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit2;
                    break;
                case 2:
                    defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "accept_perso", "fashion_show_article", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit3;
                    break;
                case 3:
                    defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "accept_perso", "back_in_stock", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit4;
                    break;
                case 4:
                    defaultEventHit5 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Inbox", "accept_perso", "inbox", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit5;
                    break;
                case 5:
                    defaultEventHit6 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "accept_perso", "portal", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit6;
                    break;
                case 6:
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, null, "accept_perso", "contactability", "notify_me", null, null, 97, null);
                    break;
                default:
                    v40.g();
                    break;
            }
            return;
        }
        if (permissionsTrackingUIModel instanceof PermissionsTrackingUIModel.EnableDeviceNotifications) {
            switch (PermissionsTrackingUIModelKt$WhenMappings.f62371a[((PermissionsTrackingUIModel.EnableDeviceNotifications) permissionsTrackingUIModel).f62369a.ordinal()]) {
                case 1:
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "activate", "explore", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit2;
                    break;
                case 2:
                    defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "activate", "fashion_show_article", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit3;
                    break;
                case 3:
                    defaultEventHit4 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "activate", "back_in_stock", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit4;
                    break;
                case 4:
                    defaultEventHit5 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Inbox", "activate", "inbox", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit5;
                    break;
                case 5:
                    defaultEventHit6 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "activate", "portal", "notify_me", null, null, 97, null);
                    defaultEventHit = defaultEventHit6;
                    break;
                case 6:
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, null, "activate", "contactability", "notify_me", null, null, 97, null);
                    break;
                default:
                    v40.g();
                    break;
            }
            return;
        }
        if (!(permissionsTrackingUIModel instanceof PermissionsTrackingUIModel.NotifyMeEnabled)) {
            v40.g();
            return;
        }
        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "accept_disable", "back_in_stock", "notify_me", null, null, 97, null);
        this.f62321c.a(defaultEventHit);
    }
}
