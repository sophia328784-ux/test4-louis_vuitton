package com.vuitton.android.presentation.loading;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.loading.LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1", f = "LvLoading.kt", l = {104, 108, 114, 118}, m = "invokeSuspend", v = 2)
final class LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f51763c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f51764e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f51765f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1(boolean z, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, Continuation continuation) {
        super(2, continuation);
        this.f51763c = z;
        this.d = mutableState;
        this.f51764e = mutableState2;
        this.f51765f = mutableState3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1(this.f51763c, this.d, this.f51764e, this.f51765f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(200, r12) == r0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(200, r12) == r0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0084, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(200, r12) == r0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a6, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(200, r12) == r0) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f51762b
            r2 = 4
            r3 = 3
            r4 = 2
            androidx.compose.runtime.MutableState r5 = r12.f51765f
            androidx.compose.runtime.MutableState r6 = r12.f51764e
            boolean r7 = r12.f51763c
            androidx.compose.runtime.MutableState r8 = r12.d
            r9 = 1
            if (r1 == 0) goto L32
            if (r1 == r9) goto L2e
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1f
            kotlin.ResultKt.b(r13)
            goto La9
        L1f:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            r12 = 0
            return r12
        L26:
            kotlin.ResultKt.b(r13)
            goto L87
        L2a:
            kotlin.ResultKt.b(r13)
            goto L63
        L2e:
            kotlin.ResultKt.b(r13)
            goto L4f
        L32:
            kotlin.ResultKt.b(r13)
            java.lang.Object r13 = r8.getF10755b()
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            r10 = 200(0xc8, double:9.9E-322)
            if (r13 != 0) goto L69
            if (r7 == 0) goto L55
            java.lang.Boolean r13 = java.lang.Boolean.TRUE
            r6.setValue(r13)
            r12.f51762b = r9
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r10, r12)
            if (r12 != r0) goto L4f
            goto La8
        L4f:
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            r5.setValue(r12)
            goto Lae
        L55:
            java.lang.Boolean r13 = java.lang.Boolean.FALSE
            r5.setValue(r13)
            r12.f51762b = r4
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r10, r12)
            if (r12 != r0) goto L63
            goto La8
        L63:
            java.lang.Boolean r12 = java.lang.Boolean.FALSE
            r6.setValue(r12)
            goto Lae
        L69:
            java.lang.Object r13 = r8.getF10755b()
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            boolean r13 = kotlin.jvm.internal.Intrinsics.c(r13, r1)
            if (r13 == 0) goto L8d
            if (r7 == 0) goto L8d
            java.lang.Boolean r13 = java.lang.Boolean.TRUE
            r6.setValue(r13)
            r12.f51762b = r3
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r10, r12)
            if (r12 != r0) goto L87
            goto La8
        L87:
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            r5.setValue(r12)
            goto Lae
        L8d:
            java.lang.Object r13 = r8.getF10755b()
            java.lang.Boolean r13 = (java.lang.Boolean) r13
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r13 = kotlin.jvm.internal.Intrinsics.c(r13, r3)
            if (r13 == 0) goto Lae
            if (r7 != 0) goto Lae
            r5.setValue(r1)
            r12.f51762b = r2
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.b(r10, r12)
            if (r12 != r0) goto La9
        La8:
            return r0
        La9:
            java.lang.Boolean r12 = java.lang.Boolean.FALSE
            r6.setValue(r12)
        Lae:
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r7)
            r8.setValue(r12)
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
