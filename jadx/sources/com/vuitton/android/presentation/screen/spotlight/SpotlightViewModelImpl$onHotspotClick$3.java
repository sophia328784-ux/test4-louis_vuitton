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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$onHotspotClick$3", f = "SpotlightViewModelImpl.kt", l = {246, 250}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$onHotspotClick$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64550c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$onHotspotClick$3(Continuation continuation, SpotlightViewModelImpl spotlightViewModelImpl) {
        super(2, continuation);
        this.f64550c = spotlightViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$onHotspotClick$3(continuation, this.f64550c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$onHotspotClick$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(500, r18) == r2) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            r18 = this;
            r0 = r18
            com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl r1 = r0.f64550c
            kotlinx.coroutines.flow.MutableStateFlow r1 = r1.u
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r0.f64549b
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L21
            if (r3 == r5) goto L1d
            if (r3 != r4) goto L16
            kotlin.ResultKt.b(r19)
            goto L56
        L16:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            r0 = 0
            return r0
        L1d:
            kotlin.ResultKt.b(r19)
            goto L2f
        L21:
            kotlin.ResultKt.b(r19)
            r0.f64549b = r5
            r5 = 600(0x258, double:2.964E-321)
            java.lang.Object r3 = kotlinx.coroutines.DelayKt.b(r5, r0)
            if (r3 != r2) goto L2f
            goto L55
        L2f:
            java.lang.Object r3 = r1.getValue()
            r5 = r3
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r5 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r5
            r16 = 0
            r17 = 1535(0x5ff, float:2.151E-42)
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 1
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r3 = com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel.a(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            r1.setValue(r3)
            r0.f64549b = r4
            r3 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r0 = kotlinx.coroutines.DelayKt.b(r3, r0)
            if (r0 != r2) goto L56
        L55:
            return r2
        L56:
            java.lang.Object r0 = r1.getValue()
            r2 = r0
            com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel r2 = (com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel) r2
            r13 = 0
            r14 = 1487(0x5cf, float:2.084E-42)
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 1
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
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$onHotspotClick$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
