package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.md;
import defpackage.u2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpSliderKt$PdpSlider$1$2$1", f = "PdpSlider.kt", l = {170}, m = "invokeSuspend", v = 2)
final class PdpSliderKt$PdpSlider$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f61453c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f61454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f61455f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpSliderKt$PdpSlider$1$2$1(PagerState pagerState, Function1 function1, MutableState mutableState, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f61453c = pagerState;
        this.d = function1;
        this.f61454e = mutableState;
        this.f61455f = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpSliderKt$PdpSlider$1$2$1(this.f61453c, this.d, this.f61454e, this.f61455f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpSliderKt$PdpSlider$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61452b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowM = SnapshotStateKt.m(new u2(this.f61453c, 13));
            final MutableState mutableState = this.f61454e;
            final MutableIntState mutableIntState = this.f61455f;
            final Function1 function1 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpSliderKt$PdpSlider$1$2$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    MutableState mutableState2 = mutableState;
                    if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                        mutableState2.setValue(Boolean.FALSE);
                    } else {
                        MutableIntState mutableIntState2 = mutableIntState;
                        function1.invoke(Boolean.valueOf(iIntValue > mutableIntState2.f()));
                        mutableIntState2.i(iIntValue);
                    }
                    return Unit.f71739a;
                }
            };
            this.f61452b = 1;
            if (((AbstractFlow) flowM).f(flowCollector, this) == coroutineSingletons) {
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
