package com.vuitton.android.presentation.screen.spotlight;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$preCacheVideo$1", f = "SpotlightViewModelImpl.kt", l = {669, 679}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$preCacheVideo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64562c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f64563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f64564f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$preCacheVideo$1(SpotlightViewModelImpl spotlightViewModelImpl, String str, Function0 function0, Function0 function1, Continuation continuation) {
        super(2, continuation);
        this.f64562c = spotlightViewModelImpl;
        this.d = str;
        this.f64563e = function0;
        this.f64564f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$preCacheVideo$1(this.f64562c, this.d, this.f64563e, this.f64564f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$preCacheVideo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0067, code lost:
    
        if (((kotlinx.coroutines.flow.AbstractFlow) r8).f(r1, r7) == r2) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl r0 = r7.f64562c
            com.vuitton.foundation.logger.Logger r1 = r0.f64536c
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r7.f64561b
            java.lang.String r4 = r7.d
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L25
            if (r3 == r6) goto L1d
            if (r3 != r5) goto L16
            kotlin.ResultKt.b(r8)
            goto L72
        L16:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            r7 = 0
            return r7
        L1d:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.f71708b
            goto L33
        L25:
            kotlin.ResultKt.b(r8)
            com.vuitton.android.domain.usecase.spotlight.PreCacheUseCase r8 = r0.f64538f
            r7.f64561b = r6
            java.lang.Object r8 = r8.a(r4, r7)
            if (r8 != r2) goto L33
            goto L69
        L33:
            kotlin.Result r3 = new kotlin.Result
            java.lang.Throwable r3 = kotlin.Result.a(r8)
            kotlin.jvm.functions.Function0 r6 = r7.f64564f
            if (r3 != 0) goto L6a
            java.util.UUID r8 = (java.util.UUID) r8
            java.util.Objects.toString(r8)
            r1.getClass()
            java.util.LinkedHashSet r1 = r0.z
            r1.add(r8)
            com.vuitton.android.domain.usecase.spotlight.ListenPreCacheUseCase r1 = r0.g
            r1.getClass()
            r8.getClass()
            com.vuitton.android.domain.repository.SpotlightRepository r1 = r1.f50385a
            kotlinx.coroutines.flow.Flow r8 = r1.a(r8)
            com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$preCacheVideo$1$1$1$1 r1 = new com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$preCacheVideo$1$1$1$1
            kotlin.jvm.functions.Function0 r3 = r7.f64563e
            r1.<init>(r4, r3, r6)
            r7.f64561b = r5
            kotlinx.coroutines.flow.AbstractFlow r8 = (kotlinx.coroutines.flow.AbstractFlow) r8
            java.lang.Object r7 = r8.f(r1, r7)
            if (r7 != r2) goto L72
        L69:
            return r2
        L6a:
            r1.getClass()
            if (r6 == 0) goto L72
            r6.mo47invoke()
        L72:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$preCacheVideo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
