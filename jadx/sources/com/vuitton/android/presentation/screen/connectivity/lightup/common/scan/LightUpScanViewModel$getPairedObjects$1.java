package com.vuitton.android.presentation.screen.connectivity.lightup.common.scan;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel$getPairedObjects$1", f = "LightUpScanViewModel.kt", l = {19, 20}, m = "invokeSuspend", v = 2)
final class LightUpScanViewModel$getPairedObjects$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpScanViewModel f56199c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpScanViewModel$getPairedObjects$1(LightUpScanViewModel lightUpScanViewModel, Continuation continuation) {
        super(2, continuation);
        this.f56199c = lightUpScanViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LightUpScanViewModel$getPairedObjects$1(this.f56199c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LightUpScanViewModel$getPairedObjects$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
    
        if (r2.zc(r6, r1) == r0) goto L15;
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
            int r1 = r6.f56198b
            com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel r2 = r6.f56199c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r7)
            goto L57
        L12:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L19:
            kotlin.ResultKt.b(r7)
            goto L43
        L1d:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.connectivity.lightup.GetLightUpObjectsUseCase r7 = r2.f56197c
            r6.f56198b = r4
            com.vuitton.android.domain.repository.LightUpRepository r1 = r7.f49798a
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r7 = r7.f49799b
            com.vuitton.foundation.model.domain.model.sync.Feature r4 = com.vuitton.foundation.model.domain.model.sync.Feature.KEEP_ALL
            com.vuitton.foundation.model.domain.model.sync.Feature[] r4 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r4}
            boolean r4 = r7.b(r4)
            com.vuitton.foundation.model.domain.model.sync.Feature r5 = com.vuitton.foundation.model.domain.model.sync.Feature.SNEAKERS
            com.vuitton.foundation.model.domain.model.sync.Feature[] r5 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r5}
            boolean r7 = r7.b(r5)
            java.io.Serializable r7 = r1.i(r4, r7, r6)
            if (r7 != r0) goto L43
            goto L56
        L43:
            java.util.List r7 = (java.util.List) r7
            ud r1 = new ud
            r4 = 11
            r1.<init>(r7, r4)
            r6.f56198b = r3
            int r7 = com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel.f56196e
            java.lang.Object r6 = r2.zc(r6, r1)
            if (r6 != r0) goto L57
        L56:
            return r0
        L57:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel$getPairedObjects$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
