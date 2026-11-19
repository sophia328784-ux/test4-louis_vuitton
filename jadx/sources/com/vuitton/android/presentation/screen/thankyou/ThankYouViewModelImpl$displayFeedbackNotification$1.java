package com.vuitton.android.presentation.screen.thankyou;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$displayFeedbackNotification$1", f = "ThankYouViewModelImpl.kt", l = {216, 217}, m = "invokeSuspend", v = 2)
final class ThankYouViewModelImpl$displayFeedbackNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewModelImpl f65210c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouViewModelImpl$displayFeedbackNotification$1(ThankYouViewModelImpl thankYouViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f65210c = thankYouViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouViewModelImpl$displayFeedbackNotification$1(this.f65210c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouViewModelImpl$displayFeedbackNotification$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r6.emit(r1, r5) == r0) goto L15;
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
            int r1 = r5.f65209b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto L10
            kotlin.ResultKt.b(r6)
            goto L38
        L10:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L17:
            kotlin.ResultKt.b(r6)
            goto L29
        L1b:
            kotlin.ResultKt.b(r6)
            r5.f65209b = r3
            r3 = 5000(0x1388, double:2.4703E-320)
            java.lang.Object r6 = kotlinx.coroutines.DelayKt.b(r3, r5)
            if (r6 != r0) goto L29
            goto L37
        L29:
            com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl r6 = r5.f65210c
            kotlinx.coroutines.flow.SharedFlowImpl r6 = r6.o
            kotlin.Unit r1 = kotlin.Unit.f71739a
            r5.f65209b = r2
            java.lang.Object r5 = r6.emit(r1, r5)
            if (r5 != r0) goto L38
        L37:
            return r0
        L38:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$displayFeedbackNotification$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
