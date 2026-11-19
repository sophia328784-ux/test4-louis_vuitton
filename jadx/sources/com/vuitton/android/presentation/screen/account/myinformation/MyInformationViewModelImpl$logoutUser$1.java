package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$logoutUser$1", f = "MyInformationViewModelImpl.kt", l = {607, 612}, m = "invokeSuspend", v = 2)
final class MyInformationViewModelImpl$logoutUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f52561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MyInformationViewModelImpl f52562c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52563e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$logoutUser$1(MyInformationViewModelImpl myInformationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52563e = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationViewModelImpl$logoutUser$1(this.f52563e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationViewModelImpl$logoutUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r6 == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.d
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r2 = r6.f52563e
            r3 = 0
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L27
            if (r1 == r5) goto L1f
            if (r1 != r4) goto L19
            com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl r2 = r6.f52562c
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.f71708b
            goto L52
        L19:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L1f:
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.f71708b
            goto L35
        L27:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase r7 = r2.f52532h
            r6.d = r5
            java.lang.Object r7 = r7.a(r6)
            if (r7 != r0) goto L35
            goto L51
        L35:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r7 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L73
            r1 = r7
            kotlin.Unit r1 = (kotlin.Unit) r1
            com.vuitton.android.presentation.push.NotificationsManager r1 = r2.f52530e
            r1.l()
            com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase r1 = r2.p
            r6.f52561b = r7
            r6.f52562c = r2
            r6.d = r4
            java.lang.Object r6 = r1.a(r6)
            if (r6 != r0) goto L52
        L51:
            return r0
        L52:
            java.lang.Throwable r6 = kotlin.Result.a(r6)
            if (r6 == 0) goto L61
            com.vuitton.foundation.logger.Logger r6 = r2.f52527a
            java.lang.String r7 = "MyInformationViewModelImpl"
            java.lang.String r0 = "Unable to reset Dynamic Yield ID"
            r6.c(r7, r0, r3)
        L61:
            com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase r6 = r2.q
            com.vuitton.android.domain.repository.AppsFlyerRepository r6 = r6.f49230a
            r6.b(r3)
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r6 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r7 = 2132020609(0x7f140d81, float:1.9679586E38)
            r6.<init>(r7, r3, r4, r3)
            r2.Dc(r6, r5)
        L73:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$logoutUser$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
