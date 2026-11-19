package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel$unPair$2", f = "LightUpDetailViewModel.kt", l = {28, 29, 30}, m = "invokeSuspend", v = 2)
final class LightUpDetailViewModel$unPair$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpDetailViewModel f56137c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpDetailViewModel$unPair$2(LightUpDetailViewModel lightUpDetailViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.f56137c = lightUpDetailViewModel;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LightUpDetailViewModel$unPair$2(this.f56137c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LightUpDetailViewModel$unPair$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0057, code lost:
    
        if (r5.zc(r6, r7) == r0) goto L23;
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
            int r1 = r6.f56136b
            r2 = 3
            r3 = 2
            r4 = 1
            com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel r5 = r6.f56137c
            if (r1 == 0) goto L24
            if (r1 == r4) goto L20
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L15
            kotlin.ResultKt.b(r7)
            goto L5a
        L15:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L1c:
            kotlin.ResultKt.b(r7)
            goto L48
        L20:
            kotlin.ResultKt.b(r7)
            goto L3b
        L24:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.connectivity.lightup.DeleteLightUpProductUseCase r7 = r5.f56131c
            r6.f56136b = r4
            com.vuitton.android.domain.repository.LightUpRepository r7 = r7.f49792a
            java.lang.String r1 = r6.d
            java.lang.Object r7 = r7.f(r1, r6)
            if (r7 != r0) goto L36
            goto L38
        L36:
            kotlin.Unit r7 = kotlin.Unit.f71739a
        L38:
            if (r7 != r0) goto L3b
            goto L59
        L3b:
            com.vuitton.android.core.events.LVEventSender r7 = r5.f56132e
            r6.f56136b = r3
            com.vuitton.android.core.events.AppEvent$ConnectivityRefreshFromServerEvent r1 = com.vuitton.android.core.events.AppEvent.ConnectivityRefreshFromServerEvent.f43495a
            java.lang.Object r7 = r7.a(r1, r6)
            if (r7 != r0) goto L48
            goto L59
        L48:
            n60 r7 = new n60
            r1 = 29
            r7.<init>(r1)
            r6.f56136b = r2
            int r1 = com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel.g
            java.lang.Object r6 = r5.zc(r6, r7)
            if (r6 != r0) goto L5a
        L59:
            return r0
        L5a:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel$unPair$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
