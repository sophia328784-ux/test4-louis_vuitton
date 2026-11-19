package com.vuitton.android.presentation.screen.authentication.forgetpassword;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$resendEmailCode$1", f = "ForgetPasswordViewModelImpl.kt", l = {183, 186, 188}, m = "invokeSuspend", v = 2)
final class ForgetPasswordViewModelImpl$resendEmailCode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53519c;
    public final /* synthetic */ ForgetPasswordViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgetPasswordViewModelImpl$resendEmailCode$1(ForgetPasswordViewModelImpl forgetPasswordViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = forgetPasswordViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForgetPasswordViewModelImpl$resendEmailCode$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForgetPasswordViewModelImpl$resendEmailCode$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005f  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
    
        if (r1.emit(r8, r7) == r2) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl r0 = r7.d
            kotlinx.coroutines.flow.SharedFlowImpl r1 = r0.q
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f53519c
            r4 = 3
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L2d
            if (r3 == r6) goto L24
            if (r3 == r5) goto L1e
            if (r3 != r4) goto L17
            kotlin.ResultKt.b(r8)
            goto L6c
        L17:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L1e:
            java.lang.Object r0 = r7.f53518b
            kotlin.ResultKt.b(r8)
            goto L59
        L24:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
        L2b:
            r0 = r8
            goto L43
        L2d:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordInitiateUseCase r8 = r0.f53501b
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.f53506i
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            r7.f53519c = r6
            java.lang.Object r8 = r8.a(r0, r7)
            if (r8 != r2) goto L2b
            goto L6b
        L43:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r0 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L59
            r8 = r0
            kotlin.Unit r8 = (kotlin.Unit) r8
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            r7.f53518b = r0
            r7.f53519c = r5
            java.lang.Object r8 = r1.emit(r8, r7)
            if (r8 != r2) goto L59
            goto L6b
        L59:
            java.lang.Throwable r8 = kotlin.Result.a(r0)
            if (r8 == 0) goto L6c
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r7.f53518b = r0
            r7.f53519c = r4
            java.lang.Object r7 = r1.emit(r8, r7)
            if (r7 != r2) goto L6c
        L6b:
            return r2
        L6c:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$resendEmailCode$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
