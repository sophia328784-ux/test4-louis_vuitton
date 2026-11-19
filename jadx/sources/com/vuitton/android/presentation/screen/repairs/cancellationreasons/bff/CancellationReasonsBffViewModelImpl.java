package com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
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
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CancellationReasonsBffViewModelImpl extends ViewModel implements CancellationReasonsBffViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f63597a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f63598b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f63599c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f63600e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f63601f;
    public final StateFlow g;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$1", f = "CancellationReasonsBffViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SavedStateHandle f63603c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SavedStateHandle savedStateHandle, Continuation continuation) {
            super(2, continuation);
            this.f63603c = savedStateHandle;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CancellationReasonsBffViewModelImpl.this.new AnonymousClass1(this.f63603c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            CancellationReasonsBffViewModelImpl cancellationReasonsBffViewModelImpl = CancellationReasonsBffViewModelImpl.this;
            MutableStateFlow mutableStateFlow = cancellationReasonsBffViewModelImpl.f63600e;
            Object obj2 = (List) this.f63603c.a("CANCELLATION_REASON_LIST");
            if (obj2 == null) {
                obj2 = EmptyList.f71768b;
            }
            mutableStateFlow.setValue(obj2);
            if (((List) mutableStateFlow.getValue()).isEmpty()) {
                cancellationReasonsBffViewModelImpl.d.setValue(Boolean.TRUE);
            }
            return Unit.f71739a;
        }
    }

    @Inject
    public CancellationReasonsBffViewModelImpl(SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker) {
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        this.f63597a = analyticsTracker;
        Boolean bool = (Boolean) savedStateHandle.a("IS_ASSESSMENT_DONE");
        this.f63598b = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool2);
        this.f63599c = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool2);
        this.d = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(EmptyList.f71768b);
        this.f63600e = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.f63601f = mutableStateFlowA4;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(savedStateHandle, null), 3);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<CancellationReasonsBffViewState> flow = new Flow<CancellationReasonsBffViewState>() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$special$$inlined$combine$1$3", f = "CancellationReasonsBffViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super CancellationReasonsBffViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63607b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63608c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ CancellationReasonsBffViewModelImpl f63609e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, CancellationReasonsBffViewModelImpl cancellationReasonsBffViewModelImpl) {
                    super(3, continuation);
                    this.f63609e = cancellationReasonsBffViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f63609e);
                    anonymousClass3.f63608c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63608c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63607b;
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
                        CancellationReasonsBffViewState cancellationReasonsBffViewState = new CancellationReasonsBffViewState(zBooleanValue, zBooleanValue2, this.f63609e.f63598b, (List) obj4, (CareServiceDetailUiModel.CancellationReason) objArr[3]);
                        this.f63608c = null;
                        this.d = null;
                        this.f63607b = 1;
                        if (flowCollector.emit(cancellationReasonsBffViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl$special$$inlined$combine$1.2
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
        this.g = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new CancellationReasonsBffViewState(false, false, false, null, null, 31, null));
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModel
    public final void Nb(CareServiceDetailUiModel.CancellationReason cancellationReason) {
        cancellationReason.getClass();
        this.f63601f.setValue(cancellationReason);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getG() {
        return this.g;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f63597a.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }
}
