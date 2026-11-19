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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$resendCode$1", f = "AccountActivationViewModelImpl.kt", l = {145, 147, 155}, m = "invokeSuspend", v = 2)
final class AccountActivationViewModelImpl$resendCode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f53353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f53354c;
    public final /* synthetic */ AccountActivationViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationViewModelImpl$resendCode$1(AccountActivationViewModelImpl accountActivationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = accountActivationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountActivationViewModelImpl$resendCode$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountActivationViewModelImpl$resendCode$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007b  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
    
        if (r1.u(r15, r14) == r2) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl r0 = r14.d
            kotlinx.coroutines.channels.BufferedChannel r1 = r0.p
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r14.f53354c
            r4 = 3
            r5 = 1
            r6 = 2
            r7 = 0
            if (r3 == 0) goto L2e
            if (r3 == r5) goto L25
            if (r3 == r6) goto L1f
            if (r3 != r4) goto L19
            kotlin.ResultKt.b(r15)
            goto L99
        L19:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r14)
            return r7
        L1f:
            java.lang.Object r3 = r14.f53353b
            kotlin.ResultKt.b(r15)
            goto L75
        L25:
            kotlin.ResultKt.b(r15)
            kotlin.Result r15 = (kotlin.Result) r15
            java.lang.Object r15 = r15.f71708b
        L2c:
            r3 = r15
            goto L4e
        L2e:
            kotlin.ResultKt.b(r15)
            com.vuitton.android.domain.usecase.accountactivation.AccountActivationInitiateUseCase r15 = r0.f53336e
            kotlinx.coroutines.flow.MutableStateFlow r3 = r0.f53340j
            java.lang.Object r3 = r3.getValue()
            com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel r3 = (com.vuitton.android.presentation.screen.authentication.common.validation.PasswordUiModel) r3
            androidx.compose.runtime.MutableState r3 = r3.f53493b
            androidx.compose.runtime.SnapshotMutableStateImpl r3 = (androidx.compose.runtime.SnapshotMutableStateImpl) r3
            java.lang.Object r3 = r3.getF10755b()
            java.lang.String r3 = (java.lang.String) r3
            r14.f53354c = r5
            java.lang.Object r15 = r15.a(r14)
            if (r15 != r2) goto L2c
            goto L98
        L4e:
            kotlin.Result$Companion r15 = kotlin.Result.INSTANCE
            boolean r15 = r3 instanceof kotlin.Result.Failure
            if (r15 != 0) goto L75
            r15 = r3
            java.lang.String r15 = (java.lang.String) r15
            com.vuitton.android.presentation.notification.NotificationBuilder r8 = r0.d
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r9 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r15 = 2132020557(0x7f140d4d, float:1.967948E38)
            r9.<init>(r15, r7, r6, r7)
            r12 = 0
            r13 = 60
            r10 = 1
            r11 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r15 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r8, r9, r10, r11, r12, r13)
            r14.f53353b = r3
            r14.f53354c = r6
            java.lang.Object r15 = r1.u(r15, r14)
            if (r15 != r2) goto L75
            goto L98
        L75:
            java.lang.Throwable r15 = kotlin.Result.a(r3)
            if (r15 == 0) goto L99
            com.vuitton.android.presentation.notification.NotificationBuilder r8 = r0.d
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r9 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r15 = 2132020556(0x7f140d4c, float:1.9679478E38)
            r9.<init>(r15, r7, r6, r7)
            r12 = 0
            r13 = 60
            r10 = 0
            r11 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r15 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r8, r9, r10, r11, r12, r13)
            r14.f53353b = r3
            r14.f53354c = r4
            java.lang.Object r14 = r1.u(r15, r14)
            if (r14 != r2) goto L99
        L98:
            return r2
        L99:
            kotlin.Unit r14 = kotlin.Unit.f71739a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl$resendCode$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
