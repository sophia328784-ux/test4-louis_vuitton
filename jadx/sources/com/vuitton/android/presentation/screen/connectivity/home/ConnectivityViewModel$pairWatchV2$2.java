package com.vuitton.android.presentation.screen.connectivity.home;

import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$pairWatchV2$2", f = "ConnectivityViewModel.kt", l = {154, 155}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$pairWatchV2$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityViewModel f56094c;
    public final /* synthetic */ PairWatchV2Ui d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$pairWatchV2$2(ConnectivityViewModel connectivityViewModel, PairWatchV2Ui pairWatchV2Ui, Continuation continuation) {
        super(2, continuation);
        this.f56094c = connectivityViewModel;
        this.d = pairWatchV2Ui;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$pairWatchV2$2(this.f56094c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$pairWatchV2$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
    
        if (r3.zc(r9, r10) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f56093b
            com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui r2 = r9.d
            com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel r3 = r9.f56094c
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L1f
            if (r1 == r5) goto L1b
            if (r1 != r4) goto L14
            kotlin.ResultKt.b(r10)
            goto L49
        L14:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L1b:
            kotlin.ResultKt.b(r10)
            goto L38
        L1f:
            kotlin.ResultKt.b(r10)
            com.vuitton.android.domain.usecase.connectivity.watch.pairing.PairWatchV2UseCase r10 = r3.f56077i
            com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2 r1 = new com.vuitton.foundation.model.domain.model.connectivity.watch.PairWatchV2
            java.lang.String r6 = r2.f56700b
            java.lang.String r7 = r2.f56701c
            java.lang.String r8 = r2.d
            r1.<init>(r6, r7, r8)
            r9.f56093b = r5
            java.lang.Object r10 = r10.a(r1, r9)
            if (r10 != r0) goto L38
            goto L48
        L38:
            ck r10 = new ck
            r1 = 6
            r10.<init>(r2, r1)
            r9.f56093b = r4
            int r1 = com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel.o
            java.lang.Object r9 = r3.zc(r9, r10)
            if (r9 != r0) goto L49
        L48:
            return r0
        L49:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$pairWatchV2$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
