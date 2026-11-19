package com.vuitton.android.presentation.screen.osa.reasons;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.appointment.GetAppointmentReasonListUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.osa.models.OsaMapperKt;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.osa.OsaReason;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
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
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;", "getAppointmentReasonListUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OsaReasonsFormViewModelImpl extends ViewModel implements OsaReasonsFormViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f60943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetAppointmentReasonListUseCase f60944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InAppDispatch f60945c;
    public final MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f60946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f60947f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f60948h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f60949i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f60950j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f60951k;
    public final StateFlow l;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$1", f = "OsaReasonsFormViewModelImpl.kt", l = {73, EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60952b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ IsFeatureAvailableUseCase f60953c;
        public final /* synthetic */ OsaReasonsFormViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(IsFeatureAvailableUseCase isFeatureAvailableUseCase, OsaReasonsFormViewModelImpl osaReasonsFormViewModelImpl, Continuation continuation) {
            super(2, continuation);
            this.f60953c = isFeatureAvailableUseCase;
            this.d = osaReasonsFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f60953c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
        
            if (com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl.yc(r4.d, r4) == r0) goto L17;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r4.f60952b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                kotlin.ResultKt.b(r5)
                goto L43
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r4)
                r4 = 0
                return r4
            L17:
                kotlin.ResultKt.b(r5)
                goto L30
            L1b:
                kotlin.ResultKt.b(r5)
                com.vuitton.foundation.model.domain.model.sync.Feature r5 = com.vuitton.foundation.model.domain.model.sync.Feature.OSA_REASONS
                com.vuitton.foundation.model.domain.model.sync.Feature[] r5 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r5}
                r4.f60952b = r3
                r1 = 0
                com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r3 = r4.f60953c
                java.lang.Object r5 = r3.c(r5, r1, r4)
                if (r5 != r0) goto L30
                goto L42
            L30:
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                if (r5 == 0) goto L43
                r4.f60952b = r2
                com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl r5 = r4.d
                java.lang.Object r4 = com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl.yc(r5, r4)
                if (r4 != r0) goto L43
            L42:
                return r0
            L43:
                kotlin.Unit r4 = kotlin.Unit.f71739a
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public OsaReasonsFormViewModelImpl(SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetAppointmentReasonListUseCase getAppointmentReasonListUseCase) {
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getAppointmentReasonListUseCase.getClass();
        this.f60943a = analyticsTracker;
        this.f60944b = getAppointmentReasonListUseCase;
        this.f60945c = requireUserInAppDispatchUseCase.f49912a.b();
        Boolean bool = Boolean.TRUE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.d = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(EmptyList.f71768b);
        this.f60946e = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.f60947f = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.g = mutableStateFlowA4;
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool2);
        this.f60948h = mutableStateFlowA5;
        this.f60949i = (String) savedStateHandle.a("OSA_REASON");
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool2);
        this.f60950j = mutableStateFlowA6;
        this.f60951k = (String) savedStateHandle.a("ORIGIN");
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA5, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA6};
        Flow<OsaReasonsFormViewState> flow = new Flow<OsaReasonsFormViewState>() { // from class: com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$special$$inlined$combine$1$3", f = "OsaReasonsFormViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OsaReasonsFormViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60961b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60962c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f60962c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60962c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60961b;
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
                        List list = (List) obj4;
                        OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) objArr[3];
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        OsaReasonsFormViewState osaReasonsFormViewState = new OsaReasonsFormViewState(zBooleanValue, zBooleanValue2, list, osaReasonUiModel, zBooleanValue3, ((Boolean) obj6).booleanValue());
                        this.f60962c = null;
                        this.d = null;
                        this.f60961b = 1;
                        if (flowCollector.emit(osaReasonsFormViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl$special$$inlined$combine$1.2
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
        this.l = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OsaReasonsFormViewState(false, false, null, null, false, false, 63, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(isFeatureAvailableUseCase, this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00ba A[LOOP:0: B:36:0x00b4->B:38:0x00ba, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:43:0x00df A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00e5 A[LOOP:1: B:45:0x00e5->B:66:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:50:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public static final Object yc(OsaReasonsFormViewModelImpl osaReasonsFormViewModelImpl, ContinuationImpl continuationImpl) {
        OsaReasonsFormViewModelImpl$getOsaReasons$1 osaReasonsFormViewModelImpl$getOsaReasons$1;
        Object failure;
        List list;
        Object obj;
        Boolean bool;
        ArrayList arrayList;
        Iterator it;
        boolean zZc;
        Object value;
        Object objA;
        String str = osaReasonsFormViewModelImpl.f60949i;
        MutableStateFlow mutableStateFlow = osaReasonsFormViewModelImpl.f60946e;
        MutableStateFlow mutableStateFlow2 = osaReasonsFormViewModelImpl.d;
        MutableStateFlow mutableStateFlow3 = osaReasonsFormViewModelImpl.f60948h;
        if (continuationImpl instanceof OsaReasonsFormViewModelImpl$getOsaReasons$1) {
            osaReasonsFormViewModelImpl$getOsaReasons$1 = (OsaReasonsFormViewModelImpl$getOsaReasons$1) continuationImpl;
            int i2 = osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = i2 - Integer.MIN_VALUE;
            } else {
                osaReasonsFormViewModelImpl$getOsaReasons$1 = new OsaReasonsFormViewModelImpl$getOsaReasons$1(osaReasonsFormViewModelImpl, continuationImpl);
            }
        } else {
            osaReasonsFormViewModelImpl$getOsaReasons$1 = new OsaReasonsFormViewModelImpl$getOsaReasons$1(osaReasonsFormViewModelImpl, continuationImpl);
        }
        Object obj2 = osaReasonsFormViewModelImpl$getOsaReasons$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f;
        try {
            if (i3 != 0) {
                if (i3 == 1) {
                    ResultKt.b(obj2);
                    objA = ((Result) obj2).f71708b;
                } else if (i3 == 2) {
                    list = osaReasonsFormViewModelImpl$getOsaReasons$1.f60955c;
                    obj = osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b;
                    ResultKt.b(obj2);
                    List list2 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    it = list2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(OsaMapperKt.b((OsaReason) it.next()));
                    }
                    mutableStateFlow.setValue(arrayList);
                    if (str != null) {
                        zZc = osaReasonsFormViewModelImpl.zc(str);
                        if (((Boolean) osaReasonsFormViewModelImpl.f60950j.getValue()).booleanValue()) {
                            if (zZc) {
                                osaReasonsFormViewModelImpl.G4(false);
                            } else {
                                do {
                                    value = mutableStateFlow3.getValue();
                                    ((Boolean) value).getClass();
                                } while (!mutableStateFlow3.i(value, Boolean.TRUE));
                            }
                        }
                    }
                    failure = obj;
                    if (Result.a(failure) != null) {
                        bool = Boolean.TRUE;
                        osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b = failure;
                        osaReasonsFormViewModelImpl$getOsaReasons$1.f60955c = null;
                        osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = 3;
                        if (mutableStateFlow3.emit(bool, osaReasonsFormViewModelImpl$getOsaReasons$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                } else {
                    if (i3 != 3) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj2);
                }
                mutableStateFlow2.setValue(Boolean.FALSE);
                osaReasonsFormViewModelImpl.g.setValue(Boolean.valueOf((str != null || osaReasonsFormViewModelImpl.f60947f.getValue() == null) && !((Collection) mutableStateFlow.getValue()).isEmpty()));
                return Unit.f71739a;
            }
            ResultKt.b(obj2);
            Result.Companion companion = Result.INSTANCE;
            mutableStateFlow2.setValue(Boolean.TRUE);
            GetAppointmentReasonListUseCase getAppointmentReasonListUseCase = osaReasonsFormViewModelImpl.f60944b;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b = null;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = 1;
            objA = getAppointmentReasonListUseCase.a(osaReasonsFormViewModelImpl$getOsaReasons$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            ResultKt.b(objA);
            failure = (List) objA;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            list = (List) failure;
            Boolean boolValueOf = Boolean.valueOf(list.isEmpty());
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b = failure;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60955c = list;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = 2;
            if (mutableStateFlow3.emit(boolValueOf, osaReasonsFormViewModelImpl$getOsaReasons$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj = failure;
            List list3 = list;
            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
            it = list3.iterator();
            while (it.hasNext()) {
                arrayList.add(OsaMapperKt.b((OsaReason) it.next()));
            }
            mutableStateFlow.setValue(arrayList);
            if (str != null) {
                zZc = osaReasonsFormViewModelImpl.zc(str);
                if (((Boolean) osaReasonsFormViewModelImpl.f60950j.getValue()).booleanValue()) {
                    if (zZc) {
                        osaReasonsFormViewModelImpl.G4(false);
                    } else {
                        do {
                            value = mutableStateFlow3.getValue();
                            ((Boolean) value).getClass();
                        } while (!mutableStateFlow3.i(value, Boolean.TRUE));
                    }
                }
            }
            failure = obj;
            if (Result.a(failure) != null) {
                bool = Boolean.TRUE;
                osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b = failure;
                osaReasonsFormViewModelImpl$getOsaReasons$1.f60955c = null;
                osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = 3;
                if (mutableStateFlow3.emit(bool, osaReasonsFormViewModelImpl$getOsaReasons$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else if (Result.a(failure) != null) {
            bool = Boolean.TRUE;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60954b = failure;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60955c = null;
            osaReasonsFormViewModelImpl$getOsaReasons$1.f60957f = 3;
            if (mutableStateFlow3.emit(bool, osaReasonsFormViewModelImpl$getOsaReasons$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        osaReasonsFormViewModelImpl.g.setValue(Boolean.valueOf((str != null || osaReasonsFormViewModelImpl.f60947f.getValue() == null) && !((Collection) mutableStateFlow.getValue()).isEmpty()));
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void C7() {
        this.f60950j.setValue(Boolean.TRUE);
        if (this.f60947f.getValue() != null) {
            this.g.setValue(Boolean.FALSE);
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void G4(boolean z) {
        String str;
        OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) this.f60947f.getValue();
        if (osaReasonUiModel != null && (str = osaReasonUiModel.f60965a) != null) {
            o(new OsaTrackingUiModel.SelectReasonEvent(str, z));
        }
        this.g.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void W3(String str, boolean z) {
        if (!z) {
            this.f60950j.setValue(Boolean.TRUE);
        }
        if (((Collection) this.f60946e.getValue()).isEmpty()) {
            return;
        }
        zc(str);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaReasonsFormViewModelImpl$setPrefilledReason$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getL() {
        return this.l;
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void e4() {
        this.g.setValue(Boolean.TRUE);
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void o(OsaTrackingUiModel osaTrackingUiModel) {
        String trackingName = OsaOriginScreen.PDP.getTrackingName();
        String str = this.f60951k;
        this.f60943a.a(OsaTrackingUiModelKt.a(osaTrackingUiModel, this.f60945c, Boolean.valueOf(Intrinsics.c(str, trackingName)), str));
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void r8(OsaReasonUiModel osaReasonUiModel) {
        osaReasonUiModel.getClass();
        this.f60947f.setValue(osaReasonUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel
    public final void t() {
        this.f60947f.setValue(null);
        this.g.setValue(Boolean.valueOf(!((Collection) this.f60946e.getValue()).isEmpty()));
        this.f60950j.setValue(Boolean.FALSE);
    }

    public final boolean zc(String str) {
        Object next;
        Iterator it = ((Iterable) this.f60946e.getValue()).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!StringsKt.s(((OsaReasonUiModel) next).f60965a, str, true));
        OsaReasonUiModel osaReasonUiModel = (OsaReasonUiModel) next;
        this.f60947f.setValue(osaReasonUiModel);
        return osaReasonUiModel != null;
    }
}
