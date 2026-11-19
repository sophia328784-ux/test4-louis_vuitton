package com.vuitton.android.presentation.screen.main;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$logoutUser$1", f = "MainActivityViewModelImpl.kt", l = {195, 199, 204}, m = "invokeSuspend", v = 2)
final class MainActivityViewModelImpl$logoutUser$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f59077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MainActivityViewModelImpl f59078c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MainActivityViewModelImpl f59080f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivityViewModelImpl$logoutUser$1(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
        super(2, continuation);
        this.f59080f = mainActivityViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivityViewModelImpl$logoutUser$1(continuation, this.f59080f);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivityViewModelImpl$logoutUser$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        if (r9.a(com.vuitton.android.core.events.AppEvent.LogOutEvent.f43498a, r8) == r0) goto L26;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f59079e
            com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl r2 = r8.f59080f
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L37
            if (r1 == r5) goto L2f
            if (r1 == r4) goto L21
            if (r1 != r3) goto L1b
            com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl r8 = r8.f59078c
            kotlin.Unit r8 = (kotlin.Unit) r8
            kotlin.ResultKt.b(r9)
            goto L91
        L1b:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r6
        L21:
            int r1 = r8.d
            com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl r2 = r8.f59078c
            java.lang.Object r4 = r8.f59077b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L68
        L2f:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L45
        L37:
            kotlin.ResultKt.b(r9)
            com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase r9 = r2.g
            r8.f59079e = r5
            java.lang.Object r9 = r9.a(r8)
            if (r9 != r0) goto L45
            goto L90
        L45:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            boolean r1 = r9 instanceof kotlin.Result.Failure
            if (r1 != 0) goto L91
            r1 = r9
            kotlin.Unit r1 = (kotlin.Unit) r1
            com.vuitton.android.presentation.push.NotificationsManager r1 = r2.f59056f
            r1.l()
            com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase r1 = r2.m
            r8.f59077b = r9
            r8.f59078c = r2
            r5 = 0
            r8.d = r5
            r8.f59079e = r4
            java.lang.Object r1 = r1.a(r8)
            if (r1 != r0) goto L65
            goto L90
        L65:
            r4 = r9
            r9 = r1
            r1 = r5
        L68:
            java.lang.Throwable r9 = kotlin.Result.a(r9)
            if (r9 == 0) goto L77
            com.vuitton.foundation.logger.Logger r9 = r2.f59053b
            java.lang.String r5 = com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl.J
            java.lang.String r7 = "Unable to reset Dynamic Yield ID"
            r9.c(r5, r7, r6)
        L77:
            com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase r9 = r2.p
            com.vuitton.android.domain.repository.AppsFlyerRepository r9 = r9.f49230a
            r9.b(r6)
            com.vuitton.android.core.events.LVEventSender r9 = r2.d
            r8.f59077b = r4
            r8.f59078c = r6
            r8.d = r1
            r8.f59079e = r3
            com.vuitton.android.core.events.AppEvent$LogOutEvent r1 = com.vuitton.android.core.events.AppEvent.LogOutEvent.f43498a
            java.lang.Object r8 = r9.a(r1, r8)
            if (r8 != r0) goto L91
        L90:
            return r0
        L91:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$logoutUser$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
