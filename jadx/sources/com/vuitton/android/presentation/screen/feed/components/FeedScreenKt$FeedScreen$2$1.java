package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
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
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$2$1", f = "FeedScreen.kt", l = {99}, m = "invokeSuspend", v = 2)
final class FeedScreenKt$FeedScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57836b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f57837c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f57838e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedScreenKt$FeedScreen$2$1(PagerState pagerState, Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f57837c = pagerState;
        this.d = function1;
        this.f57838e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedScreenKt$FeedScreen$2$1(this.f57837c, this.d, this.f57838e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedScreenKt$FeedScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57836b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowK = FlowKt.k(FlowKt.l((CancellableFlow) SnapshotStateKt.m(new u2(this.f57837c, 6)), 1));
            final Function1 function1 = this.d;
            final MutableState mutableState = this.f57838e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$2$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    FeedTab feedTab = (FeedTab) FeedScreenKt.f57835a.get(((Number) obj2).intValue());
                    if (feedTab != ((FeedTab) mutableState.getF10755b())) {
                        function1.invoke(feedTab);
                    }
                    return Unit.f71739a;
                }
            };
            this.f57836b = 1;
            if (flowK.f(flowCollector, this) == coroutineSingletons) {
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
