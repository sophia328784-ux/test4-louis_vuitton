package com.vuitton.android.presentation.screen.options.dispatch;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.dispatch.GetDispatchAreaListUseCase;
import com.vuitton.android.domain.usecase.dispatch.GetUserInAppDispatchOrNullUseCase;
import com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase;
import com.vuitton.android.domain.usecase.products.RemoveLastViewedProductListUseCase;
import com.vuitton.android.domain.usecase.search.UpdateSearchHistoryUseCase;
import com.vuitton.android.presentation.screen.options.dispatch.models.DispatchViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0011B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;", "getUserInAppDispatchOrNullUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;", "getDispatchAreaListUseCase", "Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;", "reactToInAppDispatchChangeUseCase", "Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;", "updateSearchHistoryUseCase", "Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;", "removeLastViewedProductListUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispatchCountryViewModelImpl extends ViewModel implements DispatchCountryViewModel {
    public static final Companion q = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f59787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetUserInAppDispatchOrNullUseCase f59788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetDispatchAreaListUseCase f59789c;
    public final ReactToInAppDispatchChangeUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UpdateSearchHistoryUseCase f59790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RemoveLastViewedProductListUseCase f59791f;
    public final SharedFlowImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SharedFlow f59792h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final BufferedChannel f59793i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Flow f59794j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f59795k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public boolean o;
    public final StateFlow p;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Inject
    public DispatchCountryViewModelImpl(Logger logger, GetUserInAppDispatchOrNullUseCase getUserInAppDispatchOrNullUseCase, GetDispatchAreaListUseCase getDispatchAreaListUseCase, ReactToInAppDispatchChangeUseCase reactToInAppDispatchChangeUseCase, UpdateSearchHistoryUseCase updateSearchHistoryUseCase, RemoveLastViewedProductListUseCase removeLastViewedProductListUseCase) {
        Object value;
        logger.getClass();
        getUserInAppDispatchOrNullUseCase.getClass();
        getDispatchAreaListUseCase.getClass();
        reactToInAppDispatchChangeUseCase.getClass();
        updateSearchHistoryUseCase.getClass();
        removeLastViewedProductListUseCase.getClass();
        this.f59787a = logger;
        this.f59788b = getUserInAppDispatchOrNullUseCase;
        this.f59789c = getDispatchAreaListUseCase;
        this.d = reactToInAppDispatchChangeUseCase;
        this.f59790e = updateSearchHistoryUseCase;
        this.f59791f = removeLastViewedProductListUseCase;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.g = sharedFlowImplB;
        this.f59792h = FlowKt.a(sharedFlowImplB);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.f59793i = bufferedChannelA;
        this.f59794j = FlowKt.y(bufferedChannelA);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.f59795k = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.l = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(EmptyList.f71768b);
        this.m = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.n = mutableStateFlowA4;
        this.o = true;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<DispatchViewState> flow = new Flow<DispatchViewState>() { // from class: com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$special$$inlined$combine$1$3", f = "DispatchCountryViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super DispatchViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59801b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59802c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59802c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59802c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59801b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        InAppDispatch inAppDispatch = (InAppDispatch) objArr[1];
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        DispatchViewState dispatchViewState = new DispatchViewState(zBooleanValue, inAppDispatch, (List) obj3, (InAppDispatch) objArr[3]);
                        this.f59802c = null;
                        this.d = null;
                        this.f59801b = 1;
                        if (flowCollector.emit(dispatchViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl$special$$inlined$combine$1.2
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
        this.p = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new DispatchViewState(true, null, null, null, 14, null));
        do {
            value = mutableStateFlowA2.getValue();
        } while (!mutableStateFlowA2.i(value, this.f59788b.a()));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DispatchCountryViewModelImpl$getDispatchCountryList$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    /* JADX INFO: renamed from: O1, reason: from getter */
    public final SharedFlow getF59792h() {
        return this.f59792h;
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    public final void Q8(InAppDispatch inAppDispatch) {
        MutableStateFlow mutableStateFlow;
        Object value;
        inAppDispatch.getClass();
        do {
            mutableStateFlow = this.n;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, inAppDispatch));
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    public final void i2(InAppDispatch inAppDispatch, boolean z) {
        inAppDispatch.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new DispatchCountryViewModelImpl$updateLocale$1(this, inAppDispatch, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    public final void p8(int i2) {
        MutableStateFlow mutableStateFlow = this.m;
        ArrayList arrayListZ0 = CollectionsKt.z0((Collection) mutableStateFlow.getValue());
        Pair pair = (Pair) arrayListZ0.get(i2);
        arrayListZ0.set(i2, new Pair(pair.f71705b, Boolean.valueOf(!((Boolean) pair.f71706c).booleanValue())));
        mutableStateFlow.setValue(arrayListZ0);
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    /* JADX INFO: renamed from: w6, reason: from getter */
    public final Flow getF59794j() {
        return this.f59794j;
    }

    @Override // com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel
    public final boolean y1(InAppDispatch inAppDispatch) throws Throwable {
        boolean zEquals;
        inAppDispatch.getClass();
        InAppDispatch inAppDispatchA = this.f59788b.a();
        String str = inAppDispatchA != null ? inAppDispatchA.f67476a : null;
        String str2 = inAppDispatch.f67476a;
        if (str == null) {
            zEquals = false;
        } else {
            InAppDispatch.Id.Companion companion = InAppDispatch.Id.f67485b;
            zEquals = str.equals(str2);
        }
        return !zEquals;
    }
}
