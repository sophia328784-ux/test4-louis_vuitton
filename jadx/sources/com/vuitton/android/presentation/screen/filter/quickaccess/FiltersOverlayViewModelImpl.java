package com.vuitton.android.presentation.screen.filter.quickaccess;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FilterOverlayViewState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersTrackingUiModelKt;
import defpackage.md;
import defpackage.os;
import java.util.Map;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FiltersOverlayViewModelImpl extends ViewModel implements FiltersOverlayViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FilterCommand f58002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f58003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f58004c;
    public final StateFlow d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$1", f = "FiltersOverlayViewModelImpl.kt", l = {46}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58005b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FiltersOverlayViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58005b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final FiltersOverlayViewModelImpl filtersOverlayViewModelImpl = FiltersOverlayViewModelImpl.this;
                SharedFlowImpl sharedFlowImpl = filtersOverlayViewModelImpl.f58002a.d;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        Object value;
                        ((Boolean) obj2).getClass();
                        MutableStateFlow mutableStateFlow = filtersOverlayViewModelImpl.f58004c;
                        do {
                            value = mutableStateFlow.getValue();
                            ((Boolean) value).getClass();
                        } while (!mutableStateFlow.i(value, Boolean.FALSE));
                        return Unit.f71739a;
                    }
                };
                this.f58005b = 1;
                sharedFlowImpl.getClass();
                if (SharedFlowImpl.o(sharedFlowImpl, flowCollector, this) == coroutineSingletons) {
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

    @Inject
    public FiltersOverlayViewModelImpl(FilterCommand filterCommand, AnalyticsTracker analyticsTracker) {
        filterCommand.getClass();
        analyticsTracker.getClass();
        this.f58002a = filterCommand;
        this.f58003b = analyticsTracker;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.f58004c = mutableStateFlowA;
        final Flow[] flowArr = {filterCommand.f57992b, mutableStateFlowA};
        Flow<FilterOverlayViewState> flow = new Flow<FilterOverlayViewState>() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$special$$inlined$combine$1$3", f = "FiltersOverlayViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super FilterOverlayViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f58012b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f58013c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f58013c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f58013c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f58012b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        FilterOverlayViewState filterOverlayViewState = new FilterOverlayViewState((Map) obj2, ((Boolean) obj3).booleanValue());
                        this.f58013c = null;
                        this.d = null;
                        this.f58012b = 1;
                        if (flowCollector.emit(filterOverlayViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl$special$$inlined$combine$1.2
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
        this.d = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new FilterOverlayViewState(null, false, 3, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModel
    public final void Y0(FilterParams filterParams) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.f58004c;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        BuildersKt.c(ViewModelKt.a(this), null, null, new FiltersOverlayViewModelImpl$refreshPLP$2(this, filterParams, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModel
    public final void l0(QuickAccessFiltersTrackingUiModel quickAccessFiltersTrackingUiModel) {
        this.f58003b.a(QuickAccessFiltersTrackingUiModelKt.c(quickAccessFiltersTrackingUiModel));
    }
}
