package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1", f = "ThematicPlpThemesOverlay.kt", l = {208, 217}, m = "invokeSuspend", v = 2)
final class ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f55407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f55408c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f55409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Animatable f55410f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ float f55411h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1(float f2, float f3, Animatable animatable, float f4, float f5, Continuation continuation) {
        super(2, continuation);
        this.d = f2;
        this.f55409e = f3;
        this.f55410f = animatable;
        this.g = f4;
        this.f55411h = f5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1(this.d, this.f55409e, this.f55410f, this.g, this.f55411h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r11.f55410f, r7, r8, null, null, r11, 12) == r0) goto L15;
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
            int r1 = r13.f55408c
            float r2 = r13.d
            r3 = 1
            r4 = 0
            r5 = 2
            if (r1 == 0) goto L20
            if (r1 == r3) goto L19
            if (r1 != r5) goto L13
            kotlin.ResultKt.b(r14)
            goto L69
        L13:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r4
        L19:
            float r1 = r13.f55407b
            kotlin.ResultKt.b(r14)
            r11 = r13
            goto L4a
        L20:
            kotlin.ResultKt.b(r14)
            r14 = 1065353216(0x3f800000, float:1.0)
            float r1 = r13.f55409e
            float r14 = r14 + r1
            float r1 = r14 * r2
            java.lang.Float r7 = new java.lang.Float
            r7.<init>(r1)
            r14 = 0
            androidx.compose.animation.core.CubicBezierEasing r6 = androidx.compose.animation.core.EasingKt.f3863b
            r8 = 500(0x1f4, float:7.0E-43)
            androidx.compose.animation.core.TweenSpec r8 = androidx.compose.animation.core.AnimationSpecKt.c(r8, r14, r6, r5)
            r13.f55407b = r1
            r13.f55408c = r3
            androidx.compose.animation.core.Animatable r6 = r13.f55410f
            r9 = 0
            r10 = 0
            r12 = 12
            r11 = r13
            java.lang.Object r13 = androidx.compose.animation.core.Animatable.c(r6, r7, r8, r9, r10, r11, r12)
            if (r13 != r0) goto L4a
            goto L68
        L4a:
            java.lang.Float r7 = new java.lang.Float
            r7.<init>(r2)
            float r13 = r11.f55411h
            r14 = 4
            float r2 = r11.g
            androidx.compose.animation.core.SpringSpec r8 = androidx.compose.animation.core.AnimationSpecKt.b(r2, r13, r14, r4)
            r11.f55407b = r1
            r11.f55408c = r5
            androidx.compose.animation.core.Animatable r6 = r11.f55410f
            r9 = 0
            r10 = 0
            r12 = 12
            java.lang.Object r13 = androidx.compose.animation.core.Animatable.c(r6, r7, r8, r9, r10, r11, r12)
            if (r13 != r0) goto L69
        L68:
            return r0
        L69:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
