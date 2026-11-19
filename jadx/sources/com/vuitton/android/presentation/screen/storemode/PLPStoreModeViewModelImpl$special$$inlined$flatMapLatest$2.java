package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\n"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "<anonymous>"}, k = 3, mv = {2, 3, 0})
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2", f = "PLPStoreModeViewModelImpl.kt", l = {189}, m = "invokeSuspend", v = 2)
public final class PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2 extends SuspendLambda implements Function3<FlowCollector<? super StoreModePLPFiltersViewState>, StoreModeContentUiModel, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FlowCollector f64707c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PLPStoreModeViewModelImpl f64708e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2(Continuation continuation, PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl) {
        super(3, continuation);
        this.f64708e = pLPStoreModeViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2 pLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2 = new PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2((Continuation) obj3, this.f64708e);
        pLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2.f64707c = (FlowCollector) obj;
        pLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2.d = obj2;
        return pLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector = this.f64707c;
        Object obj2 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64706b;
        if (i2 == 0) {
            ResultKt.b(obj);
            StateFlow stateFlow = this.f64708e.yc().f64934e;
            this.f64707c = null;
            this.d = null;
            this.f64706b = 1;
            if (FlowKt.n(flowCollector, stateFlow, this) == coroutineSingletons) {
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
