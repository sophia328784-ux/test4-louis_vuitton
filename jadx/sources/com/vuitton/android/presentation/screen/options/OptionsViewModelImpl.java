package com.vuitton.android.presentation.screen.options;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider;
import com.vuitton.android.domain.repository.AutomatedTestRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModel;
import com.vuitton.android.presentation.screen.options.models.OptionsTrackingUiModelKt;
import com.vuitton.android.presentation.screen.options.models.OptionsViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001!By\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;", "buildConfigProvider", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/repository/AutomatedTestRepository;", "automatedTestRepository", "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;", "logoutUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;", "resetDynamicYieldIdUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;", "unsetAppsFlyerCustomerIdUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/repository/AutomatedTestRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OptionsViewModelImpl extends ViewModel implements OptionsViewModel {
    public static final String C;
    public final MutableStateFlow A;
    public final StateFlow B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f59641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f59642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f59643c;
    public final UserSessionService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BuildConfigProvider f59644e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f59645f;
    public final NotificationsManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AutomatedTestRepository f59646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LogoutUseCase f59647i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f59648j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ResetDynamicYieldIdUseCase f59649k;
    public final UnsetAppsFlyerCustomerIdUseCase l;
    public final InAppDispatch m;
    public final AppConfig n;
    public final SharedFlowImpl o;
    public final SharedFlow p;
    public final BufferedChannel q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$1", f = "OptionsViewModelImpl.kt", l = {132, 133, 134}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59650b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return OptionsViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
        
            if (r8.f(r1, r7) == r0) goto L20;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r7.f59650b
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                com.vuitton.android.presentation.screen.options.OptionsViewModelImpl r6 = com.vuitton.android.presentation.screen.options.OptionsViewModelImpl.this
                if (r1 == 0) goto L24
                if (r1 == r5) goto L20
                if (r1 == r4) goto L1c
                if (r1 == r3) goto L18
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r7)
                return r2
            L18:
                kotlin.ResultKt.b(r8)
                goto L4b
            L1c:
                kotlin.ResultKt.b(r8)
                goto L39
            L20:
                kotlin.ResultKt.b(r8)
                goto L30
            L24:
                kotlin.ResultKt.b(r8)
                r7.f59650b = r5
                java.lang.Object r8 = com.vuitton.android.presentation.screen.options.OptionsViewModelImpl.yc(r6, r7)
                if (r8 != r0) goto L30
                goto L4a
            L30:
                r7.f59650b = r4
                java.lang.Object r8 = com.vuitton.android.presentation.screen.options.OptionsViewModelImpl.zc(r6, r7)
                if (r8 != r0) goto L39
                goto L4a
            L39:
                com.vuitton.android.domain.service.authentication.UserSessionService r8 = r6.d
                kotlinx.coroutines.flow.StateFlow r8 = r8.g
                com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$1$1 r1 = new com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$1$1
                r1.<init>()
                r7.f59650b = r3
                java.lang.Object r7 = r8.f(r1, r7)
                if (r7 != r0) goto L4b
            L4a:
                return r0
            L4b:
                defpackage.os.d()
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        C = Reflection.f71922a.b(OptionsViewModelImpl.class).B();
    }

    @Inject
    public OptionsViewModelImpl(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, UserSessionService userSessionService, BuildConfigProvider buildConfigProvider, NotificationBuilder notificationBuilder, NotificationsManager notificationsManager, AutomatedTestRepository automatedTestRepository, LogoutUseCase logoutUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase, UnsetAppsFlyerCustomerIdUseCase unsetAppsFlyerCustomerIdUseCase) {
        Object value;
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        userSessionService.getClass();
        buildConfigProvider.getClass();
        notificationBuilder.getClass();
        notificationsManager.getClass();
        automatedTestRepository.getClass();
        logoutUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        resetDynamicYieldIdUseCase.getClass();
        unsetAppsFlyerCustomerIdUseCase.getClass();
        this.f59641a = logger;
        this.f59642b = analyticsTracker;
        this.f59643c = lVEventSender;
        this.d = userSessionService;
        this.f59644e = buildConfigProvider;
        this.f59645f = notificationBuilder;
        this.g = notificationsManager;
        this.f59646h = automatedTestRepository;
        this.f59647i = logoutUseCase;
        this.f59648j = isFeatureAvailableUseCase;
        this.f59649k = resetDynamicYieldIdUseCase;
        this.l = unsetAppsFlyerCustomerIdUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.m = inAppDispatchB;
        this.n = requireCachedAppConfigUseCase.a();
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.o = sharedFlowImplB;
        this.p = FlowKt.a(sharedFlowImplB);
        this.q = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.r = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.t = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.u = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.v = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.w = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.x = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(bool);
        this.z = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(bool);
        this.A = mutableStateFlowA10;
        final Flow[] flowArr = {mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10};
        FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(new Flow[]{mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5}, new OptionsViewModelImpl$viewState$1(null)), new Flow<List<? extends Boolean>>() { // from class: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$special$$inlined$combine$1$3", f = "OptionsViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends Boolean>>, Boolean[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59667b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59668c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59668c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59668c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59667b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        List listW = ArraysKt.W((Boolean[]) objArr);
                        this.f59668c = null;
                        this.d = null;
                        this.f59667b = 1;
                        if (flowCollector.emit(listW, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Boolean[]>() { // from class: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Boolean[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, new OptionsViewModelImpl$viewState$3(this, null));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.B = FlowKt.A(flowKt__ZipKt$combine$$inlined$unsafeFlow$1, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OptionsViewState(inAppDispatchB, false, false, null, false, false, false, false, false, false, false, 2046, null));
        do {
            value = mutableStateFlowA7.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlowA7.i(value, Boolean.valueOf(InAppDispatchExtKt.c(this.m))));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a9, code lost:
    
        if (r8 == r3) goto L21;
     */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.options.OptionsViewModelImpl r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r0 = r7.f59648j
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r1 = r7.m
            boolean r2 = r8 instanceof com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$initFlags$1
            if (r2 == 0) goto L17
            r2 = r8
            com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$initFlags$1 r2 = (com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$initFlags$1) r2
            int r3 = r2.f59655e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f59655e = r3
            goto L1c
        L17:
            com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$initFlags$1 r2 = new com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$initFlags$1
            r2.<init>(r7, r8)
        L1c:
            java.lang.Object r8 = r2.f59654c
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r2.f59655e
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L42
            if (r4 == r6) goto L3a
            if (r4 != r5) goto L33
            java.lang.Object r7 = r2.f59653b
            kotlinx.coroutines.flow.MutableStateFlow r7 = (kotlinx.coroutines.flow.MutableStateFlow) r7
            kotlin.ResultKt.b(r8)
            goto Lac
        L33:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L3a:
            java.lang.Object r1 = r2.f59653b
            kotlinx.coroutines.flow.MutableStateFlow r1 = (kotlinx.coroutines.flow.MutableStateFlow) r1
            kotlin.ResultKt.b(r8)
            goto L92
        L42:
            kotlin.ResultKt.b(r8)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r7.t
            com.vuitton.foundation.model.domain.model.config.AppConfig r4 = r7.n
            java.lang.String r4 = r4.m
            r8.setValue(r4)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r7.u
            boolean r4 = com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt.e(r1)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            r8.setValue(r4)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r7.v
            java.lang.String r1 = r1.f67483j
            com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode$Companion r4 = com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode.f67513b
            r4.getClass()
            java.lang.String r4 = com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode.w
            boolean r1 = kotlin.jvm.internal.Intrinsics.c(r1, r4)
            r1 = r1 ^ r6
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r8.setValue(r1)
            kotlinx.coroutines.flow.MutableStateFlow r8 = r7.w
            com.vuitton.android.domain.provider.buildconfig.BuildConfigProvider r1 = r7.f59644e
            r1.getClass()
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r8.setValue(r1)
            kotlinx.coroutines.flow.MutableStateFlow r1 = r7.y
            com.vuitton.foundation.model.domain.model.sync.Feature r8 = com.vuitton.foundation.model.domain.model.sync.Feature.GCM_OPT_OUT
            com.vuitton.foundation.model.domain.model.sync.Feature[] r8 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r8}
            r2.f59653b = r1
            r2.f59655e = r6
            r4 = 0
            java.lang.Object r8 = r0.c(r8, r4, r2)
            if (r8 != r3) goto L92
            goto Lab
        L92:
            r1.setValue(r8)
            kotlinx.coroutines.flow.MutableStateFlow r7 = r7.A
            com.vuitton.foundation.model.domain.model.sync.Feature r8 = com.vuitton.foundation.model.domain.model.sync.Feature.ACCESSIBILITY_SIMPLIFY_NAVIGATION
            com.vuitton.foundation.model.domain.model.sync.Feature r1 = com.vuitton.foundation.model.domain.model.sync.Feature.ACCESSIBILITY_DISABLE_AUTOPLAY
            com.vuitton.foundation.model.domain.model.sync.Feature r4 = com.vuitton.foundation.model.domain.model.sync.Feature.ACCESSIBILITY_ENHANCED_CONTRAST
            com.vuitton.foundation.model.domain.model.sync.Feature[] r8 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r8, r1, r4}
            r2.f59653b = r7
            r2.f59655e = r5
            java.lang.Object r8 = r0.c(r8, r6, r2)
            if (r8 != r3) goto Lac
        Lab:
            return r3
        Lac:
            r7.setValue(r8)
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.options.OptionsViewModelImpl.yc(com.vuitton.android.presentation.screen.options.OptionsViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object zc(OptionsViewModelImpl optionsViewModelImpl, ContinuationImpl continuationImpl) {
        OptionsViewModelImpl$initUiTestMode$1 optionsViewModelImpl$initUiTestMode$1;
        MutableStateFlow mutableStateFlow;
        if (continuationImpl instanceof OptionsViewModelImpl$initUiTestMode$1) {
            optionsViewModelImpl$initUiTestMode$1 = (OptionsViewModelImpl$initUiTestMode$1) continuationImpl;
            int i2 = optionsViewModelImpl$initUiTestMode$1.f59658e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                optionsViewModelImpl$initUiTestMode$1.f59658e = i2 - Integer.MIN_VALUE;
            } else {
                optionsViewModelImpl$initUiTestMode$1 = new OptionsViewModelImpl$initUiTestMode$1(optionsViewModelImpl, continuationImpl);
            }
        } else {
            optionsViewModelImpl$initUiTestMode$1 = new OptionsViewModelImpl$initUiTestMode$1(optionsViewModelImpl, continuationImpl);
        }
        Object obj = optionsViewModelImpl$initUiTestMode$1.f59657c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = optionsViewModelImpl$initUiTestMode$1.f59658e;
        if (i3 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow2 = optionsViewModelImpl.z;
            AutomatedTestRepository automatedTestRepository = optionsViewModelImpl.f59646h;
            optionsViewModelImpl$initUiTestMode$1.f59656b = mutableStateFlow2;
            optionsViewModelImpl$initUiTestMode$1.f59658e = 1;
            automatedTestRepository.getClass();
            Boolean bool = Boolean.FALSE;
            if (bool == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = bool;
            mutableStateFlow = mutableStateFlow2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mutableStateFlow = (MutableStateFlow) optionsViewModelImpl$initUiTestMode$1.f59656b;
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(obj);
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void F7() {
        this.o.a(new OptionsSideEffect.Navigation.ToContact(this.n.f67232c));
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void F9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OptionsViewModelImpl$refreshFeatureFlags$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void M2() {
        String str = this.n.m;
        if (str != null) {
            this.o.a(new OptionsSideEffect.Navigation.ToConsumerRights(str));
        }
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void U0(OptionsTrackingUiModel optionsTrackingUiModel) {
        this.f59642b.a(OptionsTrackingUiModelKt.a(optionsTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final String Vb() {
        return this.n.f67234f;
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getB() {
        return this.B;
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final Flow b() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void e7() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OptionsViewModelImpl$toggleUiTestMode$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    /* JADX INFO: renamed from: h, reason: from getter */
    public final SharedFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.options.OptionsViewModel
    public final void q() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OptionsViewModelImpl$logoutUser$1(this, null), 3);
    }
}
