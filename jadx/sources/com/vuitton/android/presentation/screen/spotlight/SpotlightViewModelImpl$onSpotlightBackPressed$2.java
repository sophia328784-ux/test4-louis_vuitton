package com.vuitton.android.presentation.screen.spotlight;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$onSpotlightBackPressed$2", f = "SpotlightViewModelImpl.kt", l = {340, 345, 350}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$onSpotlightBackPressed$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64558c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$onSpotlightBackPressed$2(Continuation continuation, SpotlightViewModelImpl spotlightViewModelImpl) {
        super(2, continuation);
        this.f64558c = spotlightViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$onSpotlightBackPressed$2(continuation, this.f64558c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$onSpotlightBackPressed$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a1, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(900, r20) == r2) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            r20 = this;
            r0 = r20
            com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl r1 = r0.f64558c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r1.u
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r0.f64557b
            r4 = 3
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L29
            if (r3 == r6) goto L25
            if (r3 == r5) goto L21
            if (r3 != r4) goto L1a
            kotlin.ResultKt.b(r21)
            goto La4
        L1a:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            r0 = 0
            return r0
        L21:
            kotlin.ResultKt.b(r21)
            goto L7d
        L25:
            kotlin.ResultKt.b(r21)
            goto L55
        L29:
            kotlin.ResultKt.b(r21)
            java.lang.Object r3 = r1.getValue()
            r7 = r3
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r7 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r7
            r18 = 0
            r19 = 511(0x1ff, float:7.16E-43)
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 1
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r3 = com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel.a(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19)
            r1.setValue(r3)
            r0.f64557b = r6
            r6 = 450(0x1c2, double:2.223E-321)
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.b(r6, r0)
            if (r3 != r2) goto L55
            goto La3
        L55:
            java.lang.Object r3 = r1.getValue()
            r6 = r3
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r6 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r6
            r17 = 0
            r18 = 1999(0x7cf, float:2.801E-42)
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 1
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r3 = com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel.a(r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            r1.setValue(r3)
            r0.f64557b = r5
            r5 = 50
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.b(r5, r0)
            if (r3 != r2) goto L7d
            goto La3
        L7d:
            java.lang.Object r3 = r1.getValue()
            r5 = r3
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r5 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r5
            r16 = 0
            r17 = 1533(0x5fd, float:2.148E-42)
            r6 = 0
            r7 = 1
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r3 = com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel.a(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            r1.setValue(r3)
            r0.f64557b = r4
            r3 = 900(0x384, double:4.447E-321)
            java.lang.Object r0 = kotlinx.coroutines.DelayKt.b(r3, r0)
            if (r0 != r2) goto La4
        La3:
            return r2
        La4:
            java.lang.Object r0 = r1.getValue()
            r2 = r0
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r2 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r2
            r13 = 1
            r14 = 1023(0x3ff, float:1.434E-42)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r0 = com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel.a(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            r1.setValue(r0)
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$onSpotlightBackPressed$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
