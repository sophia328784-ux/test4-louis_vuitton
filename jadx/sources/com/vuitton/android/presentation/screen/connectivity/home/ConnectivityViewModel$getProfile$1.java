package com.vuitton.android.presentation.screen.connectivity.home;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getProfile$1", f = "ConnectivityViewModel.kt", l = {176, 176}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$getProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityViewModel f56084c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$getProfile$1(ConnectivityViewModel connectivityViewModel, Continuation continuation) {
        super(2, continuation);
        this.f56084c = connectivityViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$getProfile$1(this.f56084c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$getProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r7 == r2) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel r0 = r7.f56084c
            androidx.lifecycle.MutableLiveData r1 = r0.f56079k
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f56083b
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L23
            if (r3 == r6) goto L1f
            if (r3 != r5) goto L19
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L49
        L19:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r4
        L1f:
            kotlin.ResultKt.b(r8)
            goto L3e
        L23:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.account.GetCachedUserIdUseCase r8 = r0.f56076h
            com.vuitton.android.domain.repository.UserPreferencesRepository r8 = r8.f49029a
            java.lang.String r8 = r8.getUserId()
            androidx.lifecycle.MutableLiveData r3 = r0.m
            r3.postValue(r8)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r8 = r0.g
            r7.f56083b = r6
            java.lang.Object r8 = r8.a(r7)
            if (r8 != r2) goto L3e
            goto L48
        L3e:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r8 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r8
            r7.f56083b = r5
            java.lang.Object r7 = r8.c(r7)
            if (r7 != r2) goto L49
        L48:
            return r2
        L49:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L55
            r8 = r7
            com.vuitton.foundation.model.domain.model.profile.Profile r8 = (com.vuitton.foundation.model.domain.model.profile.Profile) r8
            r1.postValue(r8)
        L55:
            java.lang.Throwable r7 = kotlin.Result.a(r7)
            if (r7 == 0) goto L5e
            r1.postValue(r4)
        L5e:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getProfile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
