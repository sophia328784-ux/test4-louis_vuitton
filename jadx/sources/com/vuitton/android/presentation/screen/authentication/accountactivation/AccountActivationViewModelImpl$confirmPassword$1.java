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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$confirmPassword$1", f = "AccountActivationViewModelImpl.kt", l = {122, 123, 124}, m = "invokeSuspend", v = 2)
final class AccountActivationViewModelImpl$confirmPassword$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53348c;
    public final /* synthetic */ AccountActivationViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationViewModelImpl$confirmPassword$1(AccountActivationViewModelImpl accountActivationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = accountActivationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountActivationViewModelImpl$confirmPassword$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountActivationViewModelImpl$confirmPassword$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0070  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0081, code lost:
    
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
            int r4 = r8.f53348c
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L2f
            if (r4 == r7) goto L26
            if (r4 == r6) goto L20
            if (r4 != r5) goto L19
            kotlin.ResultKt.b(r9)
            goto L84
        L19:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L20:
            java.lang.Object r0 = r8.f53347b
            kotlin.ResultKt.b(r9)
            goto L6a
        L26:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
        L2d:
            r0 = r9
            goto L54
        L2f:
            kotlin.ResultKt.b(r9)
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            r2.setValue(r9)
            com.vuitton.android.domain.usecase.accountactivation.AccountActivationInitiateUseCase r9 = r0.f53336e
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.f53340j
            java.lang.Object r0 = r0.getValue()
            com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel r0 = (com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel) r0
            androidx.compose.runtime.MutableState r0 = r0.f53493b
            androidx.compose.runtime.SnapshotMutableStateImpl r0 = (androidx.compose.runtime.SnapshotMutableStateImpl) r0
            java.lang.Object r0 = r0.getF10755b()
            java.lang.String r0 = (java.lang.String) r0
            r8.f53348c = r7
            java.lang.Object r9 = r9.a(r8)
            if (r9 != r3) goto L2d
            goto L83
        L54:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r0 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L6a
            r9 = r0
            java.lang.String r9 = (java.lang.String) r9
            com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$InitiateSuccess r9 = com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent.InitiateSuccess.f53392a
            r8.f53347b = r0
            r8.f53348c = r6
            java.lang.Object r9 = r1.emit(r9, r8)
            if (r9 != r3) goto L6a
            goto L83
        L6a:
            java.lang.Throwable r9 = kotlin.Result.a(r0)
            if (r9 == 0) goto L84
            com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$Error r4 = new com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationUiEvent$Error
            java.lang.String r9 = r9.getMessage()
            r4.<init>(r9)
            r8.f53347b = r0
            r8.f53348c = r5
            java.lang.Object r8 = r1.emit(r4, r8)
            if (r8 != r3) goto L84
        L83:
            return r3
        L84:
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            r2.setValue(r8)
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$confirmPassword$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
