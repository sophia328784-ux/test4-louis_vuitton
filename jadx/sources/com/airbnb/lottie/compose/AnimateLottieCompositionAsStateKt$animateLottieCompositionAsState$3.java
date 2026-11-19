package com.airbnb.lottie.compose;

import androidx.compose.runtime.MutableState;
import com.airbnb.lottie.LottieComposition;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3", f = "animateLottieCompositionAsState.kt", l = {73, 78}, m = "invokeSuspend")
final class AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f21933c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LottieAnimatable f21934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LottieComposition f21935f;
    public final /* synthetic */ int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f21936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ float f21937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ LottieClipSpec f21938j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ LottieCancellationBehavior f21939k;
    public final /* synthetic */ MutableState l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3(boolean z, boolean z2, LottieAnimatable lottieAnimatable, LottieComposition lottieComposition, int i2, boolean z3, float f2, LottieClipSpec lottieClipSpec, LottieCancellationBehavior lottieCancellationBehavior, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f21933c = z;
        this.d = z2;
        this.f21934e = lottieAnimatable;
        this.f21935f = lottieComposition;
        this.g = i2;
        this.f21936h = z3;
        this.f21937i = f2;
        this.f21938j = lottieClipSpec;
        this.f21939k = lottieCancellationBehavior;
        this.l = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3(this.f21933c, this.d, this.f21934e, this.f21935f, this.g, this.f21936h, this.f21937i, this.f21938j, this.f21939k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0059  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0095, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.a(r3, r13.f21935f, r13.g, r13.f21936h, r13.f21937i, r13.f21938j, r9, r13.f21939k, r13, 514) == r0) goto L40;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.f21932b
            r2 = 0
            com.airbnb.lottie.compose.LottieAnimatable r3 = r13.f21934e
            androidx.compose.runtime.MutableState r4 = r13.l
            r5 = 2
            r6 = 1
            boolean r7 = r13.f21933c
            if (r1 == 0) goto L22
            if (r1 == r6) goto L1e
            if (r1 != r5) goto L18
            kotlin.ResultKt.b(r14)
            goto L98
        L18:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r2
        L1e:
            kotlin.ResultKt.b(r14)
            goto L70
        L22:
            kotlin.ResultKt.b(r14)
            if (r7 == 0) goto L70
            java.lang.Object r14 = r4.getF10755b()
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            if (r14 != 0) goto L70
            boolean r14 = r13.d
            if (r14 == 0) goto L70
            r13.f21932b = r6
            com.airbnb.lottie.LottieComposition r14 = r3.A()
            com.airbnb.lottie.compose.LottieClipSpec r1 = r3.C()
            float r6 = r3.v()
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 >= 0) goto L4d
            if (r14 != 0) goto L4d
            goto L59
        L4d:
            if (r14 != 0) goto L50
            goto L62
        L50:
            if (r6 >= 0) goto L5c
            if (r1 == 0) goto L59
            float r8 = r1.a(r14)
            goto L62
        L59:
            r8 = 1065353216(0x3f800000, float:1.0)
            goto L62
        L5c:
            if (r1 == 0) goto L62
            float r8 = r1.b(r14)
        L62:
            r14 = 9
            java.lang.Object r14 = com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.b(r3, r2, r8, r13, r14)
            if (r14 != r0) goto L6b
            goto L6d
        L6b:
            kotlin.Unit r14 = kotlin.Unit.f71739a
        L6d:
            if (r14 != r0) goto L70
            goto L97
        L70:
            java.lang.Boolean r14 = java.lang.Boolean.valueOf(r7)
            r4.setValue(r14)
            if (r7 != 0) goto L7c
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        L7c:
            float r9 = r3.c()
            r13.f21932b = r5
            com.airbnb.lottie.LottieComposition r4 = r13.f21935f
            int r5 = r13.g
            boolean r6 = r13.f21936h
            float r7 = r13.f21937i
            com.airbnb.lottie.compose.LottieClipSpec r8 = r13.f21938j
            com.airbnb.lottie.compose.LottieCancellationBehavior r10 = r13.f21939k
            r12 = 514(0x202, float:7.2E-43)
            r11 = r13
            java.lang.Object r13 = com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r13 != r0) goto L98
        L97:
            return r0
        L98:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
