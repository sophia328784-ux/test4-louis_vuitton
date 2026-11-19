package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.animation.core.Animatable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1", f = "AudioGuideSwipeablePushCard.kt", l = {84, 89}, m = "invokeSuspend", v = 2)
final class AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53015b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f53016c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f53017e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1(Animatable animatable, float f2, float f3, Continuation continuation) {
        super(2, continuation);
        this.f53016c = animatable;
        this.d = f2;
        this.f53017e = f3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1(this.f53016c, this.d, this.f53017e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0072, code lost:
    
        if (r0 == r7) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
    
        if (r0 == r7) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r12.f53015b
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L1e
            if (r0 == r2) goto L18
            if (r0 != r1) goto L12
            kotlin.ResultKt.b(r13)
            r0 = r13
            goto L75
        L12:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r3
        L18:
            kotlin.ResultKt.b(r13)
            r0 = r13
            goto L9e
        L1e:
            kotlin.ResultKt.b(r13)
            androidx.compose.animation.core.Animatable r0 = r12.f53016c
            java.lang.Object r4 = r0.d()
            java.lang.Number r4 = (java.lang.Number) r4
            float r4 = r4.floatValue()
            androidx.compose.animation.core.TwoWayConverter r6 = r0.f3772a
            kotlin.jvm.functions.Function1 r6 = r6.getF4035b()
            androidx.compose.animation.core.AnimationState r0 = r0.f3774c
            androidx.compose.animation.core.AnimationVector r0 = r0.d
            java.lang.Object r0 = r6.invoke(r0)
            java.lang.Number r0 = (java.lang.Number) r0
            float r0 = r0.floatValue()
            float r6 = java.lang.Math.abs(r4)
            float r8 = r12.d
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            r8 = 6
            r9 = 0
            r10 = 300(0x12c, float:4.2E-43)
            r11 = 0
            if (r6 >= 0) goto L78
            float r0 = java.lang.Math.abs(r0)
            r6 = 1148846080(0x447a0000, float:1000.0)
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 < 0) goto L5b
            goto L78
        L5b:
            java.lang.Float r0 = new java.lang.Float
            r0.<init>(r11)
            androidx.compose.animation.core.TweenSpec r2 = androidx.compose.animation.core.AnimationSpecKt.c(r10, r9, r3, r8)
            r12.f53015b = r1
            r1 = r0
            androidx.compose.animation.core.Animatable r0 = r12.f53016c
            r3 = 0
            r4 = 0
            r6 = 12
            r5 = r12
            java.lang.Object r0 = androidx.compose.animation.core.Animatable.c(r0, r1, r2, r3, r4, r5, r6)
            if (r0 != r7) goto L75
            goto L9d
        L75:
            androidx.compose.animation.core.AnimationResult r0 = (androidx.compose.animation.core.AnimationResult) r0
            goto La0
        L78:
            int r0 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r0 <= 0) goto L7f
            r0 = 1065353216(0x3f800000, float:1.0)
            goto L81
        L7f:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
        L81:
            float r1 = r12.f53017e
            float r0 = r0 * r1
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r0)
            androidx.compose.animation.core.TweenSpec r0 = androidx.compose.animation.core.AnimationSpecKt.c(r10, r9, r3, r8)
            r12.f53015b = r2
            r2 = r0
            androidx.compose.animation.core.Animatable r0 = r12.f53016c
            r3 = 0
            r4 = 0
            r6 = 12
            r5 = r12
            java.lang.Object r0 = androidx.compose.animation.core.Animatable.c(r0, r1, r2, r3, r4, r5, r6)
            if (r0 != r7) goto L9e
        L9d:
            return r7
        L9e:
            androidx.compose.animation.core.AnimationResult r0 = (androidx.compose.animation.core.AnimationResult) r0
        La0:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.components.AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
