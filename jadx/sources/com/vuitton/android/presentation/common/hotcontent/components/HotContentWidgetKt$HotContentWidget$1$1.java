package com.vuitton.android.presentation.common.hotcontent.components;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.common.hotcontent.components.HotContentWidgetKt$HotContentWidget$1$1", f = "HotContentWidget.kt", l = {}, m = "invokeSuspend", v = 2)
final class HotContentWidgetKt$HotContentWidget$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MutableTransitionState f50889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f50890c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HotContentWidgetKt$HotContentWidget$1$1(MutableTransitionState mutableTransitionState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f50889b = mutableTransitionState;
        this.f50890c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new HotContentWidgetKt$HotContentWidget$1$1(this.f50889b, this.f50890c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((HotContentWidgetKt$HotContentWidget$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableTransitionState mutableTransitionState = this.f50889b;
        if (mutableTransitionState.f() && ((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3906b).getF10755b()).booleanValue()) {
            this.f50890c.setValue(Boolean.TRUE);
        }
        return Unit.f71739a;
    }
}
