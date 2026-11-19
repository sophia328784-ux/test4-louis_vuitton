package com.vuitton.android.presentation.screen.repairs.cancellationreasons;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.repository.RepairRepository;
import com.vuitton.android.domain.usecase.careservices.GetRepairCancellationReasonUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CancellationReasonUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CancellationReason;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;", "getRepairCancellationReasonUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CancellationReasonsViewModelImpl extends ViewModel implements CancellationReasonsViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f63574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetRepairCancellationReasonUseCase f63575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RepairStatusUiModel f63576c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f63577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f63578f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StateFlow f63579h;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$1", f = "CancellationReasonsViewModelImpl.kt", l = {41}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f63580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f63581c;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return CancellationReasonsViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            CancellationReasonsViewModelImpl cancellationReasonsViewModelImpl = CancellationReasonsViewModelImpl.this;
            MutableStateFlow mutableStateFlow2 = cancellationReasonsViewModelImpl.f63578f;
            MutableStateFlow mutableStateFlow3 = cancellationReasonsViewModelImpl.d;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63581c;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableStateFlow3.setValue(Boolean.TRUE);
                GetRepairCancellationReasonUseCase getRepairCancellationReasonUseCase = cancellationReasonsViewModelImpl.f63575b;
                RepairStatusUiModel repairStatusUiModel = cancellationReasonsViewModelImpl.f63576c;
                String label = repairStatusUiModel != null ? repairStatusUiModel.getLabel() : null;
                if (label == null) {
                    label = "";
                }
                this.f63580b = mutableStateFlow2;
                this.f63581c = 1;
                RepairRepository repairRepository = getRepairCancellationReasonUseCase.f49546b;
                getRepairCancellationReasonUseCase.f49545a.a();
                obj = repairRepository.a(label, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mutableStateFlow = mutableStateFlow2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f63580b;
                ResultKt.b(obj);
            }
            Iterable<CancellationReason> iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            for (CancellationReason cancellationReason : iterable) {
                cancellationReason.getClass();
                arrayList.add(new CancellationReasonUiModel(cancellationReason.f66783a, cancellationReason.f66784b));
            }
            mutableStateFlow.setValue(arrayList);
            if (((List) mutableStateFlow2.getValue()).isEmpty()) {
                cancellationReasonsViewModelImpl.f63577e.setValue(Boolean.TRUE);
            }
            mutableStateFlow3.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
    }

    @Inject
    public CancellationReasonsViewModelImpl(SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker, GetRepairCancellationReasonUseCase getRepairCancellationReasonUseCase) {
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        getRepairCancellationReasonUseCase.getClass();
        this.f63574a = analyticsTracker;
        this.f63575b = getRepairCancellationReasonUseCase;
        this.f63576c = (RepairStatusUiModel) savedStateHandle.a("REPAIR_STATUS");
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.d = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f63577e = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(EmptyList.f71768b);
        this.f63578f = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.g = mutableStateFlowA4;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<CancellationReasonsViewState> flow = new Flow<CancellationReasonsViewState>() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$special$$inlined$combine$1$3", f = "CancellationReasonsViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super CancellationReasonsViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63584b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63585c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f63585c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63585c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63584b;
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
                        CancellationReasonsViewState cancellationReasonsViewState = new CancellationReasonsViewState(zBooleanValue, zBooleanValue2, (List) obj4, (CancellationReasonUiModel) objArr[3]);
                        this.f63585c = null;
                        this.d = null;
                        this.f63584b = 1;
                        if (flowCollector.emit(cancellationReasonsViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl$special$$inlined$combine$1.2
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
        this.f63579h = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new CancellationReasonsViewState(false, false, null, null, 15, null));
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel
    /* JADX INFO: renamed from: N2, reason: from getter */
    public final RepairStatusUiModel getF63576c() {
        return this.f63576c;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel
    public final void Y4(CancellationReasonUiModel cancellationReasonUiModel) {
        cancellationReasonUiModel.getClass();
        this.g.setValue(cancellationReasonUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getF63579h() {
        return this.f63579h;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f63574a.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }
}
