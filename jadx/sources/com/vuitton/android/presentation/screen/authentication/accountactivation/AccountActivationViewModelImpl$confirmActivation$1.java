package com.vuitton.android.presentation.screen.authentication.accountactivation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$confirmActivation$1", f = "AccountActivationViewModelImpl.kt", l = {134, 135, 136}, m = "invokeSuspend", v = 2)
final class AccountActivationViewModelImpl$confirmActivation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53346c;
    public final /* synthetic */ AccountActivationViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationViewModelImpl$confirmActivation$1(AccountActivationViewModelImpl accountActivationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = accountActivationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountActivationViewModelImpl$confirmActivation$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountActivationViewModelImpl$confirmActivation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
    
        if (r1.emit(r4, r8) == r3) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl r0 = r8.d
            kotlinx.coroutines.flow.SharedFlowImpl r1 = r0.n
            kotlinx.coroutines.flow.MutableStateFlow r2 = r0.m
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r8.f53346c
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L2f
            if (r4 == r7) goto L26
            if (r4 == r6) goto L20
            if (r4 != r5) goto L19
            kotlin.ResultKt.b(r9)
            goto L7a
        L19:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L20:
            java.lang.Object r0 = r8.f53345b
            kotlin.ResultKt.b(r9)
            goto L60
        L26:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
        L2d:
            r0 = r9
            goto L4a
        L2f:
            kotlin.ResultKt.b(r9)
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            r2.setValue(r9)
            com.vuitton.android.domain.usecase.accountactivation.AccountActivationValidateUseCase r9 = r0.f53337f
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.f53341k
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            r8.f53346c = r7
            java.io.Serializable r9 = r9.a(r8)
            if (r9 != r3) goto L2d
            goto L79
        L4a:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r0 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L60
            r9 = r0
            kotlin.Unit r9 = (kotlin.Unit) r9
            com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$ActivationSuccess r9 = com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.ActivationSuccess.f53390a
            r8.f53345b = r0
            r8.f53346c = r6
            java.lang.Object r9 = r1.emit(r9, r8)
            if (r9 != r3) goto L60
            goto L79
        L60:
            java.lang.Throwable r9 = kotlin.Result.a(r0)
            if (r9 == 0) goto L7a
            com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$Error r4 = new com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$Error
            java.lang.String r9 = r9.getMessage()
            r4.<init>(r9)
            r8.f53345b = r0
            r8.f53346c = r5
            java.lang.Object r8 = r1.emit(r4, r8)
            if (r8 != r3) goto L7a
        L79:
            return r3
        L7a:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r2.setValue(r8)
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$confirmActivation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
