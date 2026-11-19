package com.vuitton.android.presentation.compose.components;

import androidx.compose.animation.core.Animatable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.CircularRevealOverlayKt$CircularRevealOverlay$1$1", f = "CircularRevealOverlay.kt", l = {EACTags.CURRENCY_EXPONENT, 55, 64}, m = "invokeSuspend", v = 2)
final class CircularRevealOverlayKt$CircularRevealOverlay$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f50940c;
    public final /* synthetic */ Animatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f50941e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularRevealOverlayKt$CircularRevealOverlay$1$1(boolean z, Animatable animatable, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f50940c = z;
        this.d = animatable;
        this.f50941e = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CircularRevealOverlayKt$CircularRevealOverlay$1$1(this.f50940c, this.d, this.f50941e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CircularRevealOverlayKt$CircularRevealOverlay$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r12.d, r6, r7, null, null, r10, 12) == r0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (r5.f(r12, r12) == r0) goto L23;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.f50939b
            r2 = 3
            r3 = 1
            r4 = 2
            if (r1 == 0) goto L23
            if (r1 == r3) goto L1f
            if (r1 == r4) goto L1a
            if (r1 != r2) goto L13
            kotlin.ResultKt.b(r13)
            goto L70
        L13:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            r12 = 0
            return r12
        L1a:
            kotlin.ResultKt.b(r13)
            r10 = r12
            goto L5b
        L1f:
            kotlin.ResultKt.b(r13)
            goto L3b
        L23:
            kotlin.ResultKt.b(r13)
            r13 = 0
            boolean r1 = r12.f50940c
            androidx.compose.animation.core.Animatable r5 = r12.d
            if (r1 == 0) goto L61
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r13)
            r12.f50939b = r3
            java.lang.Object r13 = r5.f(r1, r12)
            if (r13 != r0) goto L3b
            goto L6f
        L3b:
            java.lang.Float r6 = new java.lang.Float
            r13 = 1065353216(0x3f800000, float:1.0)
            r6.<init>(r13)
            r13 = 0
            androidx.compose.animation.core.CubicBezierEasing r1 = androidx.compose.animation.core.EasingKt.f3862a
            r2 = 450(0x1c2, float:6.3E-43)
            androidx.compose.animation.core.TweenSpec r7 = androidx.compose.animation.core.AnimationSpecKt.c(r2, r13, r1, r4)
            r12.f50939b = r4
            androidx.compose.animation.core.Animatable r5 = r12.d
            r8 = 0
            r9 = 0
            r11 = 12
            r10 = r12
            java.lang.Object r12 = androidx.compose.animation.core.Animatable.c(r5, r6, r7, r8, r9, r10, r11)
            if (r12 != r0) goto L5b
            goto L6f
        L5b:
            kotlin.jvm.functions.Function0 r12 = r10.f50941e
            r12.mo47invoke()
            goto L70
        L61:
            r10 = r12
            java.lang.Float r12 = new java.lang.Float
            r12.<init>(r13)
            r10.f50939b = r2
            java.lang.Object r12 = r5.f(r12, r10)
            if (r12 != r0) goto L70
        L6f:
            return r0
        L70:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.compose.components.CircularRevealOverlayKt$CircularRevealOverlay$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
