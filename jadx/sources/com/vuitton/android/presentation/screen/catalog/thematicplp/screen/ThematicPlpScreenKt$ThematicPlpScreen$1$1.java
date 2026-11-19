package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import androidx.compose.foundation.lazy.grid.LazyGridState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt$ThematicPlpScreen$1$1", f = "ThematicPlpScreen.kt", l = {157, 158}, m = "invokeSuspend", v = 2)
final class ThematicPlpScreenKt$ThematicPlpScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyGridState f55463c;
    public final /* synthetic */ LazyGridState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpScreenKt$ThematicPlpScreen$1$1(LazyGridState lazyGridState, LazyGridState lazyGridState2, Continuation continuation) {
        super(2, continuation);
        this.f55463c = lazyGridState;
        this.d = lazyGridState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpScreenKt$ThematicPlpScreen$1$1(this.f55463c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpScreenKt$ThematicPlpScreen$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
    
        if (androidx.compose.foundation.lazy.grid.LazyGridState.j(r5.d, 0, r5) == r0) goto L15;
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
            int r1 = r5.f55462b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1c
            if (r1 == r4) goto L18
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r6)
            goto L35
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L18:
            kotlin.ResultKt.b(r6)
            goto L2a
        L1c:
            kotlin.ResultKt.b(r6)
            r5.f55462b = r4
            androidx.compose.foundation.lazy.grid.LazyGridState r6 = r5.f55463c
            java.lang.Object r6 = androidx.compose.foundation.lazy.grid.LazyGridState.j(r6, r2, r5)
            if (r6 != r0) goto L2a
            goto L34
        L2a:
            r5.f55462b = r3
            androidx.compose.foundation.lazy.grid.LazyGridState r6 = r5.d
            java.lang.Object r5 = androidx.compose.foundation.lazy.grid.LazyGridState.j(r6, r2, r5)
            if (r5 != r0) goto L35
        L34:
            return r0
        L35:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpScreenKt$ThematicPlpScreen$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
