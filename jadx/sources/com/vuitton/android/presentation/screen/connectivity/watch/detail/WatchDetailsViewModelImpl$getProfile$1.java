package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getProfile$1", f = "WatchDetailsViewModelImpl.kt", l = {104, 104}, m = "invokeSuspend", v = 2)
final class WatchDetailsViewModelImpl$getProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchDetailsViewModelImpl f56732c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchDetailsViewModelImpl$getProfile$1(WatchDetailsViewModelImpl watchDetailsViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f56732c = watchDetailsViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchDetailsViewModelImpl$getProfile$1(this.f56732c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchDetailsViewModelImpl$getProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (r5 == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.f56731b
            com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl r2 = r5.f56732c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L21
            if (r1 == r4) goto L1d
            if (r1 != r3) goto L16
            kotlin.ResultKt.b(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            goto L3a
        L16:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L1d:
            kotlin.ResultKt.b(r6)
            goto L2f
        L21:
            kotlin.ResultKt.b(r6)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r6 = r2.d
            r5.f56731b = r4
            java.lang.Object r6 = r6.a(r5)
            if (r6 != r0) goto L2f
            goto L39
        L2f:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r6 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r6
            r5.f56731b = r3
            java.lang.Object r5 = r6.c(r5)
            if (r5 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            boolean r6 = r5 instanceof kotlin.Result.Failure
            if (r6 != 0) goto L47
            com.vuitton.foundation.model.domain.model.profile.Profile r5 = (com.vuitton.foundation.model.domain.model.profile.Profile) r5
            androidx.lifecycle.MutableLiveData r6 = r2.f56727h
            r6.postValue(r5)
        L47:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getProfile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
