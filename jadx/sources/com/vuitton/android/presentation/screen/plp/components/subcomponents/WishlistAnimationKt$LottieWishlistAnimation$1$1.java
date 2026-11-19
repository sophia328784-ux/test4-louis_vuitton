package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.animation.core.Animatable;
import com.airbnb.lottie.compose.LottieCompositionResult;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt$LottieWishlistAnimation$1$1", f = "WishlistAnimation.kt", l = {92, 93, 100}, m = "invokeSuspend", v = 2)
final class WishlistAnimationKt$LottieWishlistAnimation$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f62855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f62856c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f62857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f62858f;
    public final /* synthetic */ PlpProductUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel f62859h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Animatable f62860i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function1 f62861j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ LottieCompositionResult f62862k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WishlistAnimationKt$LottieWishlistAnimation$1$1(PlpProductUiModel plpProductUiModel, PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel pLPWishlistStateUiModel, Animatable animatable, Function1 function1, LottieCompositionResult lottieCompositionResult, Continuation continuation) {
        super(2, continuation);
        this.g = plpProductUiModel;
        this.f62859h = pLPWishlistStateUiModel;
        this.f62860i = animatable;
        this.f62861j = function1;
        this.f62862k = lottieCompositionResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WishlistAnimationKt$LottieWishlistAnimation$1$1(this.g, this.f62859h, this.f62860i, this.f62861j, this.f62862k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WishlistAnimationKt$LottieWishlistAnimation$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a1, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r14.f62860i, r8, r9, null, null, r12, 12) == r0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bc, code lost:
    
        if (r1.f(r14, r14) == r0) goto L39;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r14.f62858f
            com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel r2 = r14.g
            r3 = 3
            r4 = 1
            r5 = 2
            if (r1 == 0) goto L2f
            if (r1 == r4) goto L23
            if (r1 == r5) goto L1d
            if (r1 != r3) goto L16
            kotlin.ResultKt.b(r15)
            goto Lbf
        L16:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r14)
            r14 = 0
            return r14
        L1d:
            kotlin.ResultKt.b(r15)
            r12 = r14
            goto La4
        L23:
            int r1 = r14.f62857e
            float r3 = r14.d
            float r4 = r14.f62856c
            boolean r6 = r14.f62855b
            kotlin.ResultKt.b(r15)
            goto L80
        L2f:
            kotlin.ResultKt.b(r15)
            androidx.compose.runtime.MutableState r15 = r2.g
            java.lang.Object r15 = r15.getF10755b()
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            androidx.compose.animation.core.Animatable r1 = r14.f62860i
            com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel r6 = r14.f62859h
            r7 = 1065353216(0x3f800000, float:1.0)
            r8 = 0
            if (r15 == 0) goto Laa
            boolean r6 = r6.f62952a
            if (r6 == 0) goto L4d
            r15 = r8
            goto L4e
        L4d:
            r15 = r7
        L4e:
            if (r6 == 0) goto L52
            r3 = r7
            goto L53
        L52:
            r3 = r8
        L53:
            com.airbnb.lottie.compose.LottieCompositionResult r7 = r14.f62862k
            java.lang.Object r7 = r7.getF10755b()
            com.airbnb.lottie.LottieComposition r7 = (com.airbnb.lottie.LottieComposition) r7
            if (r7 == 0) goto L66
            float r7 = r7.b()
            int r7 = kotlin.math.MathKt.c(r7)
            goto L68
        L66:
            r7 = 800(0x320, float:1.121E-42)
        L68:
            java.lang.Float r8 = new java.lang.Float
            r8.<init>(r15)
            r14.f62855b = r6
            r14.f62856c = r15
            r14.d = r3
            r14.f62857e = r7
            r14.f62858f = r4
            java.lang.Object r1 = r1.f(r8, r14)
            if (r1 != r0) goto L7e
            goto Lbe
        L7e:
            r4 = r15
            r1 = r7
        L80:
            java.lang.Float r8 = new java.lang.Float
            r8.<init>(r3)
            r15 = 0
            ov r7 = androidx.compose.animation.core.EasingKt.d
            androidx.compose.animation.core.TweenSpec r9 = androidx.compose.animation.core.AnimationSpecKt.c(r1, r15, r7, r5)
            r14.f62855b = r6
            r14.f62856c = r4
            r14.d = r3
            r14.f62857e = r1
            r14.f62858f = r5
            androidx.compose.animation.core.Animatable r7 = r14.f62860i
            r10 = 0
            r11 = 0
            r13 = 12
            r12 = r14
            java.lang.Object r14 = androidx.compose.animation.core.Animatable.c(r7, r8, r9, r10, r11, r12, r13)
            if (r14 != r0) goto La4
            goto Lbe
        La4:
            kotlin.jvm.functions.Function1 r14 = r12.f62861j
            r14.invoke(r2)
            goto Lbf
        Laa:
            r12 = r14
            boolean r14 = r6.f62952a
            if (r14 == 0) goto Lb0
            goto Lb1
        Lb0:
            r7 = r8
        Lb1:
            java.lang.Float r14 = new java.lang.Float
            r14.<init>(r7)
            r12.f62858f = r3
            java.lang.Object r14 = r1.f(r14, r12)
            if (r14 != r0) goto Lbf
        Lbe:
            return r0
        Lbf:
            kotlin.Unit r14 = kotlin.Unit.f71739a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.plp.components.subcomponents.WishlistAnimationKt$LottieWishlistAnimation$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
