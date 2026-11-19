package com.vuitton.android.presentation.screen.spotlight;

import android.app.Application;
import android.content.SharedPreferences;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.batch.android.s.b;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.domain.usecase.spotlight.CancelCacheUseCase;
import com.vuitton.android.domain.usecase.spotlight.GetSpotlightUseCase;
import com.vuitton.android.domain.usecase.spotlight.ListenPreCacheUseCase;
import com.vuitton.android.domain.usecase.spotlight.PreCacheUseCase;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl;
import com.vuitton.android.presentation.screen.spotlight.models.HotspotContentUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightHotspotUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightProductUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightTrackingUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import dagger.Lazy;
import defpackage.md;
import defpackage.nw0;
import defpackage.sm0;
import defpackage.tr;
import defpackage.v40;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002By\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\b\u0001\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "sharedPref", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;", "preCacheUseCase", "Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;", "listenCacheUseCase", "Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;", "cancelCache", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;", "getSpotlightUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;", "getProductShortListUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SpotlightViewModelImpl extends AndroidViewModel implements SpotlightViewModel {
    public final MonitorAction A;
    public final StateFlow B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f64535b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f64536c;
    public final Monitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f64537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PreCacheUseCase f64538f;
    public final ListenPreCacheUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CancelCacheUseCase f64539h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f64540i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetSpotlightUseCase f64541j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetProductShortListUseCase f64542k;
    public final String l;
    public boolean m;
    public Job n;
    public Job o;
    public Job p;
    public Job q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final LinkedHashSet z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public SpotlightViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Lazy<SharedPreferences> lazy, Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, PreCacheUseCase preCacheUseCase, ListenPreCacheUseCase listenPreCacheUseCase, CancelCacheUseCase cancelCacheUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, GetSpotlightUseCase getSpotlightUseCase, GetProductShortListUseCase getProductShortListUseCase) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        lazy.getClass();
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        preCacheUseCase.getClass();
        listenPreCacheUseCase.getClass();
        cancelCacheUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        getSpotlightUseCase.getClass();
        getProductShortListUseCase.getClass();
        this.f64535b = lazy;
        this.f64536c = logger;
        this.d = monitor;
        this.f64537e = analyticsTracker;
        this.f64538f = preCacheUseCase;
        this.g = listenPreCacheUseCase;
        this.f64539h = cancelCacheUseCase;
        this.f64540i = requireCachedAppConfigUseCase;
        this.f64541j = getSpotlightUseCase;
        this.f64542k = getProductShortListUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        String str = (String) savedStateHandle.a("COLLECTION_ID");
        str = str == null ? "" : str;
        this.l = str;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.r = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(EmptyList.f71768b);
        this.t = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new SpotlightContainerStateUiModel(false, false, false, false, false, false, false, false, false, false, false, 2047, null));
        this.u = mutableStateFlowA4;
        EmptySet emptySet = EmptySet.f71770b;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptySet);
        this.v = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.w = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(emptySet);
        this.x = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(emptySet);
        this.y = mutableStateFlowA8;
        this.z = new LinkedHashSet();
        final Flow[] flowArr = {mutableStateFlowA3, mutableStateFlowA2, mutableStateFlowA, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8};
        Flow<SpotlightViewState> flow = new Flow<SpotlightViewState>() { // from class: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$special$$inlined$combine$1$3", f = "SpotlightViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super SpotlightViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64570b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64571c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ SpotlightViewModelImpl f64572e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, SpotlightViewModelImpl spotlightViewModelImpl) {
                    super(3, continuation);
                    this.f64572e = spotlightViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f64572e);
                    anonymousClass3.f64571c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f64571c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64570b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        List list = (List) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        SpotlightContainerStateUiModel spotlightContainerStateUiModel = (SpotlightContainerStateUiModel) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        Set set = (Set) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        Object obj9 = objArr[7];
                        obj9.getClass();
                        SpotlightViewState spotlightViewState = new SpotlightViewState(list, zBooleanValue2, zBooleanValue, spotlightContainerStateUiModel, set, zBooleanValue3, (Set) obj8, (Set) obj9, this.f64572e.f64540i.a().a0.f67282a);
                        this.f64571c = null;
                        this.d = null;
                        this.f64570b = 1;
                        if (flowCollector.emit(spotlightViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$special$$inlined$combine$1.2
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
        this.B = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new SpotlightViewState(null, true, false, null, null, false, null, null, false, 509, null));
        long jCurrentTimeMillis = System.currentTimeMillis();
        DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatchB, FeedMonitoring.Action.OpenSpotlight.f48905a);
        dynatraceMonitorActionA.c(str, b.a.f24015b);
        this.A = dynatraceMonitorActionA;
        BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$fetchSpotlight$2(this, jCurrentTimeMillis, null), 3);
        mutableStateFlowA6.setValue(Boolean.valueOf(((SharedPreferences) lazy.get()).getBoolean("PREF_SHOW_ON_BOARDING", true)));
    }

    public static final void Bc(SpotlightViewModelImpl spotlightViewModelImpl, SpotlightSlideUiModel spotlightSlideUiModel) {
        MutableStateFlow mutableStateFlow = spotlightViewModelImpl.u;
        mutableStateFlow.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow.getValue(), false, false, false, false, false, false, false, false, false, false, true, 1023));
        MutableStateFlow mutableStateFlow2 = spotlightViewModelImpl.x;
        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow2.getValue());
        linkedHashSetA0.add(spotlightSlideUiModel.f64650a);
        mutableStateFlow2.setValue(linkedHashSetA0);
    }

    public final void Ac(final int i2) {
        final String str;
        final String str2;
        if (zc(i2)) {
            final SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) ((List) this.t.getValue()).get(i2);
            MutableStateFlow mutableStateFlow = this.x;
            if (((Set) mutableStateFlow.getValue()).contains(spotlightSlideUiModel.f64650a)) {
                LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow.getValue());
                linkedHashSetA0.remove(spotlightSlideUiModel.f64650a);
                mutableStateFlow.setValue(linkedHashSetA0);
            }
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            final Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            MutableStateFlow mutableStateFlow2 = this.u;
            mutableStateFlow2.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow2.getValue(), false, false, false, false, false, false, false, false, false, false, false, 1023));
            AssetVideoUiModel assetVideoUiModel = spotlightSlideUiModel.f64653e;
            Logger logger = this.f64536c;
            if (assetVideoUiModel != null && (str2 = assetVideoUiModel.f51783c) != null) {
                logger.getClass();
                final int i3 = 0;
                Cc(str2, new Function0(this, i2, str2, ref$BooleanRef, ref$BooleanRef2, spotlightSlideUiModel, i3) { // from class: e11

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f68723b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ SpotlightViewModelImpl f68724c;
                    public final /* synthetic */ Ref$BooleanRef d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ Ref$BooleanRef f68725e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ SpotlightSlideUiModel f68726f;

                    {
                        this.f68723b = i3;
                        this.f68724c = this;
                        this.d = ref$BooleanRef;
                        this.f68725e = ref$BooleanRef2;
                        this.f68726f = spotlightSlideUiModel;
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i4 = this.f68723b;
                        SpotlightSlideUiModel spotlightSlideUiModel2 = this.f68726f;
                        Ref$BooleanRef ref$BooleanRef3 = this.f68725e;
                        Ref$BooleanRef ref$BooleanRef4 = this.d;
                        SpotlightViewModelImpl spotlightViewModelImpl = this.f68724c;
                        switch (i4) {
                            case 0:
                                spotlightViewModelImpl.f64536c.getClass();
                                ref$BooleanRef4.f71917b = true;
                                if (ref$BooleanRef3.f71917b) {
                                    SpotlightViewModelImpl.Bc(spotlightViewModelImpl, spotlightSlideUiModel2);
                                }
                                break;
                            default:
                                spotlightViewModelImpl.f64536c.getClass();
                                ref$BooleanRef4.f71917b = true;
                                if (ref$BooleanRef3.f71917b) {
                                    SpotlightViewModelImpl.Bc(spotlightViewModelImpl, spotlightSlideUiModel2);
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }, new nw0(23));
            }
            AssetVideoUiModel assetVideoUiModel2 = spotlightSlideUiModel.f64654f;
            if (assetVideoUiModel2 == null || (str = assetVideoUiModel2.f51783c) == null) {
                return;
            }
            logger.getClass();
            final int i4 = 1;
            Cc(str, new Function0(this, i2, str, ref$BooleanRef2, ref$BooleanRef, spotlightSlideUiModel, i4) { // from class: e11

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f68723b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ SpotlightViewModelImpl f68724c;
                public final /* synthetic */ Ref$BooleanRef d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Ref$BooleanRef f68725e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ SpotlightSlideUiModel f68726f;

                {
                    this.f68723b = i4;
                    this.f68724c = this;
                    this.d = ref$BooleanRef2;
                    this.f68725e = ref$BooleanRef;
                    this.f68726f = spotlightSlideUiModel;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i5 = this.f68723b;
                    SpotlightSlideUiModel spotlightSlideUiModel2 = this.f68726f;
                    Ref$BooleanRef ref$BooleanRef3 = this.f68725e;
                    Ref$BooleanRef ref$BooleanRef4 = this.d;
                    SpotlightViewModelImpl spotlightViewModelImpl = this.f68724c;
                    switch (i5) {
                        case 0:
                            spotlightViewModelImpl.f64536c.getClass();
                            ref$BooleanRef4.f71917b = true;
                            if (ref$BooleanRef3.f71917b) {
                                SpotlightViewModelImpl.Bc(spotlightViewModelImpl, spotlightSlideUiModel2);
                            }
                            break;
                        default:
                            spotlightViewModelImpl.f64536c.getClass();
                            ref$BooleanRef4.f71917b = true;
                            if (ref$BooleanRef3.f71917b) {
                                SpotlightViewModelImpl.Bc(spotlightViewModelImpl, spotlightSlideUiModel2);
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            }, new nw0(24));
        }
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void Ca(int i2) {
        if (zc(i2)) {
            MutableStateFlow mutableStateFlow = this.v;
            LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow.getValue());
            linkedHashSetA0.add(((SpotlightSlideUiModel) ((List) this.t.getValue()).get(i2)).f64650a);
            mutableStateFlow.setValue(linkedHashSetA0);
        }
    }

    public final void Cc(String str, Function0 function0, Function0 function1) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$preCacheVideo$1(this, str, function0, function1, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void J2() {
        MutableStateFlow mutableStateFlow;
        Object value;
        Object obj = this.f64535b.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.putBoolean("PREF_SHOW_ON_BOARDING", false);
        editorEdit.apply();
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.FALSE));
        X9(SpotlightTrackingUiModel.OnOnboardingStartCTAClickedEvent.f64671a);
        MutableStateFlow mutableStateFlow2 = this.t;
        if (((Collection) mutableStateFlow2.getValue()).isEmpty()) {
            return;
        }
        X9(new SpotlightTrackingUiModel.CollectionScreen(((SpotlightSlideUiModel) CollectionsKt.B((List) mutableStateFlow2.getValue())).f64650a));
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void Kb() {
        MutableStateFlow mutableStateFlow = this.u;
        mutableStateFlow.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow.getValue(), false, false, false, false, false, true, false, false, false, false, false, 2015));
        BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onOutroFinished$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void X9(SpotlightTrackingUiModel spotlightTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit defaultEventHit2;
        Hit defaultEventHit3;
        String str = this.l;
        str.getClass();
        if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnboardingScreen) {
            defaultEventHit3 = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/spotlight/demo", "LVPass/spotlight/demo", "spotlight", CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 1, null);
        } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.CollectionScreen) {
            defaultEventHit3 = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/spotlight/collection", "LVPass/spotlight/collection", "spotlight", CollectionsKt.P(new AdditionalProperty.CollectionId(str), new AdditionalProperty.LookId(((SpotlightTrackingUiModel.CollectionScreen) spotlightTrackingUiModel).f64658a)), 1, null);
        } else {
            if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.FocusScreen) {
                AdditionalProperty.CollectionId collectionId = new AdditionalProperty.CollectionId(str);
                SpotlightTrackingUiModel.FocusScreen focusScreen = (SpotlightTrackingUiModel.FocusScreen) spotlightTrackingUiModel;
                AdditionalProperty.LookId lookId = new AdditionalProperty.LookId(focusScreen.f64659a);
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str2 = focusScreen.f64660b;
                companion.getClass();
                SkuId.Companion companion2 = SkuId.INSTANCE;
                defaultEventHit2 = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/spotlight/focus", "LVPass/spotlight/focus", "spotlight", CollectionsKt.P(collectionId, lookId, new AdditionalProperty.Sku(str2, null)), 1, null);
            } else {
                if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnOnboardingStartCTAClickedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/demo", "start_experience", "spotlight", "demonstration", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnOnboardingClosedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/demo", "back", "spotlight", "navigation", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                } else {
                    if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnHotspotClickedEvent) {
                        SpotlightTrackingUiModel.OnHotspotClickedEvent onHotspotClickedEvent = (SpotlightTrackingUiModel.OnHotspotClickedEvent) spotlightTrackingUiModel;
                        String str3 = onHotspotClickedEvent.f64666a;
                        AdditionalProperty.CollectionId collectionId2 = new AdditionalProperty.CollectionId(str);
                        SkuIdUiModel.f61763c.getClass();
                        SkuId.Companion companion3 = SkuId.INSTANCE;
                        AdditionalProperty.Sku sku = new AdditionalProperty.Sku(str3, null);
                        String str4 = onHotspotClickedEvent.f64667b;
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/collection", str3, "spotlight", "hotspot", null, CollectionsKt.P(collectionId2, sku, new AdditionalProperty.Price(str4 != null ? str4 : "")), 33, null);
                    } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnScreenClosedEvent) {
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/collection", "close", "spotlight", "navigation", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                    } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnCollectionCTAClickedEvent) {
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/collection", "collection", "spotlight", "navigation", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                    } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnLookChangedEvent) {
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/collection", ((SpotlightTrackingUiModel.OnLookChangedEvent) spotlightTrackingUiModel).f64669a ? "next_look" : "previous_look", "spotlight", "navigation", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                    } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnDiscoverCTAClickedEvent) {
                        SpotlightTrackingUiModel.OnDiscoverCTAClickedEvent onDiscoverCTAClickedEvent = (SpotlightTrackingUiModel.OnDiscoverCTAClickedEvent) spotlightTrackingUiModel;
                        String str5 = onDiscoverCTAClickedEvent.f64662a;
                        String strH = tr.h(str5, ",", onDiscoverCTAClickedEvent.f64663b);
                        AdditionalProperty.CollectionId collectionId3 = new AdditionalProperty.CollectionId(str);
                        SkuIdUiModel.f61763c.getClass();
                        SkuId.Companion companion4 = SkuId.INSTANCE;
                        AdditionalProperty.Sku sku2 = new AdditionalProperty.Sku(str5, null);
                        String str6 = onDiscoverCTAClickedEvent.f64664c;
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/focus", strH, "spotlight", "discover", null, CollectionsKt.P(collectionId3, sku2, new AdditionalProperty.Price(str6 != null ? str6 : "")), 33, null);
                    } else if (spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnProductCardSwipedEvent) {
                        AdditionalProperty.CollectionId collectionId4 = new AdditionalProperty.CollectionId(str);
                        SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                        SpotlightTrackingUiModel.OnProductCardSwipedEvent onProductCardSwipedEvent = (SpotlightTrackingUiModel.OnProductCardSwipedEvent) spotlightTrackingUiModel;
                        String str7 = onProductCardSwipedEvent.f64672a;
                        companion5.getClass();
                        SkuId.Companion companion6 = SkuId.INSTANCE;
                        AdditionalProperty.Sku sku3 = new AdditionalProperty.Sku(str7, null);
                        String str8 = onProductCardSwipedEvent.f64673b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/focus", "swipe", "spotlight", "navigation", null, CollectionsKt.P(collectionId4, sku3, new AdditionalProperty.Price(str8 != null ? str8 : "")), 33, null);
                    } else {
                        if (!(spotlightTrackingUiModel instanceof SpotlightTrackingUiModel.OnFocusScreenClosedEvent)) {
                            v40.g();
                            return;
                        }
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/spotlight/focus", "back", "spotlight", "navigation", null, CollectionsKt.O(new AdditionalProperty.CollectionId(str)), 33, null);
                    }
                }
                defaultEventHit3 = defaultEventHit;
            }
            defaultEventHit3 = defaultEventHit2;
        }
        this.f64537e.a(defaultEventHit3);
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getB() {
        return this.B;
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void e5(int i2) {
        if (((Boolean) this.r.getValue()).booleanValue()) {
            return;
        }
        MutableStateFlow mutableStateFlow = this.t;
        if (((List) mutableStateFlow.getValue()).isEmpty()) {
            return;
        }
        MutableStateFlow mutableStateFlow2 = this.u;
        if (((SpotlightContainerStateUiModel) mutableStateFlow2.getValue()).f64638i) {
            mutableStateFlow2.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow2.getValue(), false, true, false, false, false, true, true, false, false, false, false, 1549));
        }
        if (zc(i2)) {
            X9(new SpotlightTrackingUiModel.CollectionScreen(((SpotlightSlideUiModel) ((List) mutableStateFlow.getValue()).get(i2)).f64650a));
            SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) ((List) mutableStateFlow.getValue()).get(i2);
            SpotlightContainerStateUiModel spotlightContainerStateUiModel = (SpotlightContainerStateUiModel) mutableStateFlow2.getValue();
            boolean z = spotlightSlideUiModel.f64657j;
            mutableStateFlow2.setValue(SpotlightContainerStateUiModel.a(spotlightContainerStateUiModel, false, false, false, false, false, true, !z, z, false, false, false, 1807));
            yc();
            if (spotlightSlideUiModel.f64657j) {
                mutableStateFlow2.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow2.getValue(), false, false, false, false, false, false, false, false, false, false, true, 1023));
            } else {
                Ac(i2);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void ha(int i2, int i3) {
        SpotlightProductUiModel spotlightProductUiModel;
        String str;
        Job job = this.p;
        if (job != null) {
            job.cancel(null);
        }
        if (i2 >= 0) {
            MutableStateFlow mutableStateFlow = this.t;
            if (i2 < ((Collection) mutableStateFlow.getValue()).size()) {
                if (zc(i2)) {
                    SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) ((List) mutableStateFlow.getValue()).get(i2);
                    MutableStateFlow mutableStateFlow2 = this.y;
                    if (((Set) mutableStateFlow2.getValue()).contains(spotlightSlideUiModel.f64650a)) {
                        LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow2.getValue());
                        linkedHashSetA0.remove(spotlightSlideUiModel.f64650a);
                        mutableStateFlow2.setValue(linkedHashSetA0);
                    }
                    Ref$IntRef ref$IntRef = new Ref$IntRef();
                    int i4 = 0;
                    for (Object obj : spotlightSlideUiModel.g) {
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        AssetVideoUiModel assetVideoUiModel = ((SpotlightHotspotUiModel) obj).f64645c.f51781c;
                        if (assetVideoUiModel != null && (str = assetVideoUiModel.f51783c) != null) {
                            this.f64536c.getClass();
                            Cc(str, new sm0(this, i4, i2, str, ref$IntRef, spotlightSlideUiModel), null);
                        }
                        i4 = i5;
                    }
                }
                SpotlightSlideUiModel spotlightSlideUiModel2 = (SpotlightSlideUiModel) ((List) mutableStateFlow.getValue()).get(i2);
                SpotlightHotspotUiModel spotlightHotspotUiModel = (SpotlightHotspotUiModel) CollectionsKt.G(i3, spotlightSlideUiModel2.g);
                HotspotContentUiModel hotspotContentUiModel = spotlightHotspotUiModel != null ? spotlightHotspotUiModel.d : null;
                if (hotspotContentUiModel != null && (spotlightProductUiModel = hotspotContentUiModel.f64626c) != null) {
                    X9(new SpotlightTrackingUiModel.OnHotspotClickedEvent(spotlightProductUiModel.f64647a, spotlightProductUiModel.d, spotlightSlideUiModel2.f64650a, null));
                }
                if (spotlightSlideUiModel2.f64657j) {
                    this.n = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onHotspotClick$2(null, this), 3);
                    this.q = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onHotspotClick$3(null, this), 3);
                    this.o = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onHotspotClick$4(null, this), 3);
                } else {
                    MutableStateFlow mutableStateFlow3 = this.u;
                    mutableStateFlow3.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow3.getValue(), false, false, false, true, true, false, true, false, false, false, false, 1539));
                    this.n = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onHotspotClick$5(null, this), 3);
                }
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void j3(int i2) {
        Job job = this.n;
        if (job != null) {
            job.cancel(null);
        }
        Job job2 = this.o;
        if (job2 != null) {
            job2.cancel(null);
        }
        Job job3 = this.q;
        if (job3 != null) {
            job3.cancel(null);
        }
        this.m = false;
        MutableStateFlow mutableStateFlow = this.u;
        mutableStateFlow.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow.getValue(), false, false, true, false, false, false, false, false, false, false, false, 2034));
        if (zc(i2)) {
            MutableStateFlow mutableStateFlow2 = this.w;
            boolean zBooleanValue = ((Boolean) mutableStateFlow2.getValue()).booleanValue();
            MutableStateFlow mutableStateFlow3 = this.t;
            if (zBooleanValue) {
                X9(SpotlightTrackingUiModel.OnOnboardingClosedEvent.f64670a);
            } else if (((SpotlightContainerStateUiModel) mutableStateFlow.getValue()).f64637h) {
                X9(SpotlightTrackingUiModel.OnFocusScreenClosedEvent.f64665a);
                X9(new SpotlightTrackingUiModel.CollectionScreen(((SpotlightSlideUiModel) ((List) mutableStateFlow3.getValue()).get(i2)).f64650a));
            }
            SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) ((List) mutableStateFlow3.getValue()).get(i2);
            if (!((Boolean) mutableStateFlow2.getValue()).booleanValue()) {
                MutableStateFlow mutableStateFlow4 = this.v;
                LinkedHashSet linkedHashSetA0 = CollectionsKt.A0((Iterable) mutableStateFlow4.getValue());
                linkedHashSetA0.remove(spotlightSlideUiModel.f64650a);
                mutableStateFlow4.setValue(linkedHashSetA0);
            }
            if (spotlightSlideUiModel.f64657j) {
                this.p = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onSpotlightBackPressed$2(null, this), 3);
            } else {
                this.p = BuildersKt.c(ViewModelKt.a(this), null, null, new SpotlightViewModelImpl$onSpotlightBackPressed$3(null, this), 3);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void oc(int i2, int i3) {
        HotspotContentUiModel hotspotContentUiModel;
        SpotlightProductUiModel spotlightProductUiModel;
        if (zc(i2)) {
            SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) ((List) this.t.getValue()).get(i2);
            List list = spotlightSlideUiModel.g;
            String str = spotlightSlideUiModel.f64650a;
            SpotlightHotspotUiModel spotlightHotspotUiModel = (SpotlightHotspotUiModel) CollectionsKt.G(i3, list);
            if (spotlightHotspotUiModel != null && (hotspotContentUiModel = spotlightHotspotUiModel.d) != null && (spotlightProductUiModel = hotspotContentUiModel.f64626c) != null) {
                String str2 = spotlightProductUiModel.f64647a;
                X9(new SpotlightTrackingUiModel.FocusScreen(str, str2, null));
                if (this.m) {
                    X9(new SpotlightTrackingUiModel.OnProductCardSwipedEvent(str2, spotlightProductUiModel.d, str, null));
                }
            }
            this.m = true;
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        yc();
        super.onCleared();
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void p7(int i2, int i3) {
        SpotlightProductUiModel spotlightProductUiModel;
        if (!zc(i2) || (spotlightProductUiModel = ((SpotlightHotspotUiModel) ((SpotlightSlideUiModel) ((List) this.t.getValue()).get(i2)).g.get(i3)).d.f64626c) == null) {
            return;
        }
        X9(new SpotlightTrackingUiModel.OnDiscoverCTAClickedEvent(spotlightProductUiModel.f64647a, spotlightProductUiModel.f64648b, spotlightProductUiModel.d, null));
    }

    @Override // com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel
    public final void ua() {
        MutableStateFlow mutableStateFlow = this.u;
        mutableStateFlow.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow.getValue(), true, false, false, false, false, false, false, true, false, false, false, 1598));
    }

    public final void yc() {
        Logger logger;
        LinkedHashSet linkedHashSet = this.z;
        Iterator it = linkedHashSet.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            logger = this.f64536c;
            if (!zHasNext) {
                break;
            }
            UUID uuid = (UUID) it.next();
            Objects.toString(uuid);
            logger.getClass();
            CancelCacheUseCase cancelCacheUseCase = this.f64539h;
            cancelCacheUseCase.getClass();
            uuid.getClass();
            cancelCacheUseCase.f50381a.d(uuid);
        }
        if (!linkedHashSet.isEmpty()) {
            logger.getClass();
        }
        linkedHashSet.clear();
    }

    public final boolean zc(int i2) {
        return i2 >= 0 && i2 < ((List) this.t.getValue()).size();
    }
}
