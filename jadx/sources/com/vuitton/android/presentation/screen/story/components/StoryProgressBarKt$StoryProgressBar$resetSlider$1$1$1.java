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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1", f = "StoryProgressBar.kt", l = {39, 40}, m = "invokeSuspend", v = 2)
final class StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f65143c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1(Animatable animatable, Continuation continuation) {
        super(2, continuation);
        this.f65143c = animatable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1(this.f65143c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
    
        if (r2.f(r6, r5) == r0) goto L15;
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
            int r1 = r5.f65142b
            androidx.compose.animation.core.Animatable r2 = r5.f65143c
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1d
            if (r1 == r4) goto L19
            if (r1 != r3) goto L12
            kotlin.ResultKt.b(r6)
            goto L38
        L12:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L19:
            kotlin.ResultKt.b(r6)
            goto L29
        L1d:
            kotlin.ResultKt.b(r6)
            r5.f65142b = r4
            java.lang.Object r6 = r2.g(r5)
            if (r6 != r0) goto L29
            goto L37
        L29:
            java.lang.Float r6 = new java.lang.Float
            r1 = 0
            r6.<init>(r1)
            r5.f65142b = r3
            java.lang.Object r5 = r2.f(r6, r5)
            if (r5 != r0) goto L38
        L37:
            return r0
        L38:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$resetSlider$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
