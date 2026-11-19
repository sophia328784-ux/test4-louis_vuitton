package com.vuitton.android.presentation.screen.story.components;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$4$1", f = "StoryProgressBar.kt", l = {72, 78}, m = "invokeSuspend", v = 2)
final class StoryProgressBarKt$StoryProgressBar$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f65140c;
    public final /* synthetic */ Animatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f65141e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryProgressBarKt$StoryProgressBar$4$1(boolean z, Animatable animatable, long j2, Continuation continuation) {
        super(2, continuation);
        this.f65140c = z;
        this.d = animatable;
        this.f65141e = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoryProgressBarKt$StoryProgressBar$4$1(this.f65140c, this.d, this.f65141e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoryProgressBarKt$StoryProgressBar$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r4.g(r11) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r4, r5, r6, null, null, r11, 12) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.f65139b
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L17
            if (r1 == r2) goto Lc
            if (r1 != r3) goto L10
        Lc:
            kotlin.ResultKt.b(r12)
            goto L55
        L10:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            r11 = 0
            return r11
        L17:
            kotlin.ResultKt.b(r12)
            boolean r12 = r11.f65140c
            androidx.compose.animation.core.Animatable r4 = r11.d
            if (r12 == 0) goto L29
            r11.f65139b = r2
            java.lang.Object r11 = r4.g(r11)
            if (r11 != r0) goto L55
            goto L54
        L29:
            long r1 = r11.f65141e
            float r12 = (float) r1
            java.lang.Object r1 = r4.d()
            java.lang.Number r1 = (java.lang.Number) r1
            float r1 = r1.floatValue()
            float r1 = r1 * r12
            float r12 = r12 - r1
            int r12 = (int) r12
            r1 = 0
            ov r2 = androidx.compose.animation.core.EasingKt.d
            androidx.compose.animation.core.TweenSpec r6 = androidx.compose.animation.core.AnimationSpecKt.c(r12, r1, r2, r3)
            java.lang.Float r5 = new java.lang.Float
            r12 = 1065353216(0x3f800000, float:1.0)
            r5.<init>(r12)
            r11.f65139b = r3
            r7 = 0
            r8 = 0
            r10 = 12
            r9 = r11
            java.lang.Object r11 = androidx.compose.animation.core.Animatable.c(r4, r5, r6, r7, r8, r9, r10)
            if (r11 != r0) goto L55
        L54:
            return r0
        L55:
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$4$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
