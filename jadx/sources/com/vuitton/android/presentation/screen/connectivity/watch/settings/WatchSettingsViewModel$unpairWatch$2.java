package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$unpairWatch$2", f = "WatchSettingsViewModel.kt", l = {40, 41}, m = "invokeSuspend", v = 2)
final class WatchSettingsViewModel$unpairWatch$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WatchSettingsViewModel f56780c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchSettingsViewModel$unpairWatch$2(WatchSettingsViewModel watchSettingsViewModel, String str, Continuation continuation) {
        super(2, continuation);
        this.f56780c = watchSettingsViewModel;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchSettingsViewModel$unpairWatch$2(this.f56780c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchSettingsViewModel$unpairWatch$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        if (r2.zc(r6, r7) == r0) goto L15;
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
            int r1 = r6.f56779b
            com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel r2 = r6.f56780c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r7)
            goto L4d
        L12:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L19:
            kotlin.ResultKt.b(r7)
            goto L3c
        L1d:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.connectivity.watch.pairing.UnpairWatchV2UseCase r7 = r2.f56764c
            r6.f56779b = r4
            com.vuitton.android.domain.repository.WatchRepository r1 = r7.f49854a
            com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase r7 = r7.f49855b
            com.vuitton.android.domain.repository.InAppDispatchRepository r7 = r7.f49912a
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r7 = r7.b()
            com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2 r4 = new com.vuitton.foundation.model.domain.model.connectivity.watch.UnpairWatchV2
            java.lang.String r5 = r6.d
            r4.<init>(r5)
            java.lang.Object r7 = r1.h(r7, r4, r6)
            if (r7 != r0) goto L3c
            goto L4c
        L3c:
            o51 r7 = new o51
            r1 = 6
            r7.<init>(r1)
            r6.f56779b = r3
            int r1 = com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel.l
            java.lang.Object r6 = r2.zc(r6, r7)
            if (r6 != r0) goto L4d
        L4c:
            return r0
        L4d:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel$unpairWatch$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
