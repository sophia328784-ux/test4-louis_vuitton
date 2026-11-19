package com.vuitton.android.presentation.screen.connectivity.watch.detail;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getWatch$1", f = "WatchDetailsViewModelImpl.kt", l = {62, EACTags.ADDRESS}, m = "invokeSuspend", v = 2)
final class WatchDetailsViewModelImpl$getWatch$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchDetailsViewModelImpl f56736c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchDetailsViewModelImpl$getWatch$1(WatchDetailsViewModelImpl watchDetailsViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f56736c = watchDetailsViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchDetailsViewModelImpl$getWatch$1(this.f56736c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchDetailsViewModelImpl$getWatch$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0067, code lost:
    
        if (r7 == r2) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl r0 = r7.f56736c
            androidx.lifecycle.MutableLiveData r1 = r0.f56726f
            com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase r0 = r0.f56723b
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f56735b
            java.lang.String r4 = r7.d
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L2b
            if (r3 == r6) goto L23
            if (r3 != r5) goto L1c
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r7 = r8.f71708b
            goto L6a
        L1c:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L23:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L3d
        L2b:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase$Params r8 = new com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase$Params
            r3 = 0
            r8.<init>(r4, r3)
            r7.f56735b = r6
            java.lang.Object r8 = r0.a(r8, r7)
            if (r8 != r2) goto L3d
            goto L69
        L3d:
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            boolean r3 = r8 instanceof kotlin.Result.Failure
            if (r3 != 0) goto L53
            com.vuitton.foundation.model.domain.model.connectivity.Watch r8 = (com.vuitton.foundation.model.domain.model.connectivity.Watch) r8     // Catch: java.lang.Throwable -> L4a
            com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel r8 = com.vuitton.android.presentation.screen.connectivity.watch.WatchMapperKt.a(r8)     // Catch: java.lang.Throwable -> L4a
            goto L53
        L4a:
            r8 = move-exception
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r3 = new kotlin.Result$Failure
            r3.<init>(r8)
            r8 = r3
        L53:
            boolean r3 = r8 instanceof kotlin.Result.Failure
            if (r3 != 0) goto L5c
            com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel r8 = (com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel) r8
            r1.postValue(r8)
        L5c:
            com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase$Params r8 = new com.vuitton.android.domain.usecase.connectivity.watch.GetWatchUseCase$Params
            r8.<init>(r4, r6)
            r7.f56735b = r5
            java.lang.Object r7 = r0.a(r8, r7)
            if (r7 != r2) goto L6a
        L69:
            return r2
        L6a:
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L80
            com.vuitton.foundation.model.domain.model.connectivity.Watch r7 = (com.vuitton.foundation.model.domain.model.connectivity.Watch) r7     // Catch: java.lang.Throwable -> L77
            com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel r7 = com.vuitton.android.presentation.screen.connectivity.watch.WatchMapperKt.a(r7)     // Catch: java.lang.Throwable -> L77
            goto L80
        L77:
            r7 = move-exception
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r8 = new kotlin.Result$Failure
            r8.<init>(r7)
            r7 = r8
        L80:
            boolean r8 = r7 instanceof kotlin.Result.Failure
            if (r8 != 0) goto L89
            com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel r7 = (com.vuitton.android.presentation.screen.connectivity.watch.WatchUiModel) r7
            r1.postValue(r7)
        L89:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl$getWatch$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
