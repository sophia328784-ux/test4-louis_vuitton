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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$initiatePassword$1", f = "ForgetPasswordViewModelImpl.kt", l = {126, 129}, m = "invokeSuspend", v = 2)
final class ForgetPasswordViewModelImpl$initiatePassword$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53513c;
    public final /* synthetic */ ForgetPasswordViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgetPasswordViewModelImpl$initiatePassword$1(ForgetPasswordViewModelImpl forgetPasswordViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = forgetPasswordViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ForgetPasswordViewModelImpl$initiatePassword$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ForgetPasswordViewModelImpl$initiatePassword$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0073, code lost:
    
        if (r0.emit(r1, r8) == r3) goto L21;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl r0 = r8.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.f53506i
            kotlinx.coroutines.flow.MutableStateFlow r2 = r0.n
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r8.f53513c
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L25
            if (r4 == r6) goto L1d
            if (r4 != r5) goto L16
            kotlin.ResultKt.b(r9)
            goto L76
        L16:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L1d:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L5e
        L25:
            kotlin.ResultKt.b(r9)
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            r2.setValue(r9)
            kotlin.text.Regex r4 = new kotlin.text.Regex
            java.lang.String r7 = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
            r4.<init>(r7)
            java.lang.Object r7 = r1.getValue()
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7
            boolean r4 = r4.f(r7)
            if (r4 != 0) goto L4d
            kotlinx.coroutines.flow.MutableStateFlow r8 = r0.l
            r8.setValue(r9)
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r2.setValue(r8)
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        L4d:
            com.vuitton.android.domain.usecase.authentication.oauth.ForgetPasswordInitiateUseCase r9 = r0.f53501b
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r8.f53513c = r6
            java.lang.Object r9 = r9.a(r1, r8)
            if (r9 != r3) goto L5e
            goto L75
        L5e:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r9 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L76
            r1 = r9
            kotlin.Unit r1 = (kotlin.Unit) r1
            kotlinx.coroutines.flow.SharedFlowImpl r0 = r0.o
            com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordUiEvent$ForgetPasswordInitiateSuccess r1 = com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordUiEvent.ForgetPasswordInitiateSuccess.f53584a
            r8.f53512b = r9
            r8.f53513c = r5
            java.lang.Object r8 = r0.emit(r1, r8)
            if (r8 != r3) goto L76
        L75:
            return r3
        L76:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r2.setValue(r8)
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl$initiatePassword$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
