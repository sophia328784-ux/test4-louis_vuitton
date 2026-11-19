package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$initPdpTracker$1", f = "PdpViewModelImpl.kt", l = {391}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$initPdpTracker$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61218c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$initPdpTracker$1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
        super(2, continuation);
        this.f61218c = pdpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$initPdpTracker$1(continuation, this.f61218c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$initPdpTracker$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61217b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final PdpViewModelImpl pdpViewModelImpl = this.f61218c;
            MutableStateFlow mutableStateFlow = pdpViewModelImpl.W;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$initPdpTracker$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    pdpViewModelImpl.f61139f.f61587c = (ProductUiModel) obj2;
                    return Unit.f71739a;
                }
            };
            this.f61217b = 1;
            if (mutableStateFlow.f(flowCollector, this) == coroutineSingletons) {
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
