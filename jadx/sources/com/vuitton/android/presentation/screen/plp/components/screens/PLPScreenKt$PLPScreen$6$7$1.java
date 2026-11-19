package com.vuitton.android.presentation.screen.plp.components.screens;

import androidx.compose.foundation.lazy.LazyListState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt$PLPScreen$6$7$1", f = "PLPScreen.kt", l = {355, 356}, m = "invokeSuspend", v = 2)
final class PLPScreenKt$PLPScreen$6$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62763b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f62764c;
    public final /* synthetic */ LazyListState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPScreenKt$PLPScreen$6$7$1(LazyListState lazyListState, LazyListState lazyListState2, Continuation continuation) {
        super(2, continuation);
        this.f62764c = lazyListState;
        this.d = lazyListState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPScreenKt$PLPScreen$6$7$1(this.f62764c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPScreenKt$PLPScreen$6$7$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r5.d.k(0, 0, r5) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f62763b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1c
            if (r1 == r4) goto L18
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r6)
            goto L39
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L18:
            kotlin.ResultKt.b(r6)
            goto L2c
        L1c:
            kotlin.ResultKt.b(r6)
            r5.f62763b = r4
            androidx.compose.foundation.lazy.LazyListState$Companion r6 = androidx.compose.foundation.lazy.LazyListState.y
            androidx.compose.foundation.lazy.LazyListState r6 = r5.f62764c
            java.lang.Object r6 = r6.k(r2, r2, r5)
            if (r6 != r0) goto L2c
            goto L38
        L2c:
            r5.f62763b = r3
            androidx.compose.foundation.lazy.LazyListState$Companion r6 = androidx.compose.foundation.lazy.LazyListState.y
            androidx.compose.foundation.lazy.LazyListState r6 = r5.d
            java.lang.Object r5 = r6.k(r2, r2, r5)
            if (r5 != r0) goto L39
        L38:
            return r0
        L39:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.plp.components.screens.PLPScreenKt$PLPScreen$6$7$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
