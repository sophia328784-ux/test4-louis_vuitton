package com.vuitton.android.presentation.screen.authentication.register;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1", f = "NativeRegisterViewModelImpl.kt", l = {722, 723, 724, 725, 726}, m = "invokeSuspend", v = 2)
final class NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53773b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53774c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1(Continuation continuation, NativeRegisterViewModelImpl nativeRegisterViewModelImpl) {
        super(2, continuation);
        this.f53774c = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1(continuation, this.f53774c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0064  */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0073, code lost:
    
        if (com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Ac(r0, r9) == r2) goto L33;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl r0 = r9.f53774c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.J
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r9.f53773b
            r4 = 5
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            if (r3 == 0) goto L34
            if (r3 == r8) goto L30
            if (r3 == r7) goto L2c
            if (r3 == r6) goto L28
            if (r3 == r5) goto L24
            if (r3 != r4) goto L1d
            kotlin.ResultKt.b(r10)
            goto L76
        L1d:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L24:
            kotlin.ResultKt.b(r10)
            goto L6d
        L28:
            kotlin.ResultKt.b(r10)
            goto L64
        L2c:
            kotlin.ResultKt.b(r10)
            goto L5b
        L30:
            kotlin.ResultKt.b(r10)
            goto L52
        L34:
            kotlin.ResultKt.b(r10)
        L37:
            java.lang.Object r10 = r1.getValue()
            r3 = r10
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            r3.getClass()
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            boolean r10 = r1.i(r10, r3)
            if (r10 == 0) goto L37
            r9.f53773b = r8
            java.lang.Object r10 = com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Dc(r0, r9)
            if (r10 != r2) goto L52
            goto L75
        L52:
            r9.f53773b = r7
            java.lang.Object r10 = com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Ec(r0, r9)
            if (r10 != r2) goto L5b
            goto L75
        L5b:
            r9.f53773b = r6
            java.lang.Object r10 = com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Bc(r0, r9)
            if (r10 != r2) goto L64
            goto L75
        L64:
            r9.f53773b = r5
            java.lang.Object r10 = com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Cc(r0, r9)
            if (r10 != r2) goto L6d
            goto L75
        L6d:
            r9.f53773b = r4
            java.lang.Object r9 = com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl.Ac(r0, r9)
            if (r9 != r2) goto L76
        L75:
            return r2
        L76:
            java.lang.Object r9 = r1.getValue()
            r10 = r9
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            r10.getClass()
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            boolean r9 = r1.i(r9, r10)
            if (r9 == 0) goto L76
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl$loadDynamicRegistrationForm$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
