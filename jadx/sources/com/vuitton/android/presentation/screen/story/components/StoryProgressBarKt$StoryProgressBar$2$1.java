package com.vuitton.android.presentation.screen.story.components;

import androidx.compose.animation.core.Animatable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$2$1", f = "StoryProgressBar.kt", l = {56, EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class StoryProgressBarKt$StoryProgressBar$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f65134c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Animatable f65135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f65136f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryProgressBarKt$StoryProgressBar$2$1(boolean z, long j2, Animatable animatable, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.f65134c = z;
        this.d = j2;
        this.f65135e = animatable;
        this.f65136f = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoryProgressBarKt$StoryProgressBar$2$1(this.f65134c, this.d, this.f65135e, this.f65136f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoryProgressBarKt$StoryProgressBar$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
    
        if (r5.g(r12) == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r5, r6, r7, null, null, r12, 12) == r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
    
        return r0;
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
            int r1 = r12.f65133b
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L18
            if (r1 == r2) goto L14
            if (r1 != r3) goto Ld
            goto L14
        Ld:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            r12 = 0
            return r12
        L14:
            kotlin.ResultKt.b(r13)
            goto L62
        L18:
            kotlin.ResultKt.b(r13)
            boolean r13 = r12.f65134c
            if (r13 != 0) goto L62
            r4 = 0
            long r6 = r12.d
            int r13 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r13 == 0) goto L62
            float r13 = (float) r6
            androidx.compose.animation.core.Animatable r1 = r12.f65135e
            java.lang.Object r1 = r1.d()
            java.lang.Number r1 = (java.lang.Number) r1
            float r1 = r1.floatValue()
            float r1 = r1 * r13
            float r13 = r13 - r1
            int r13 = (int) r13
            r1 = 0
            ov r4 = androidx.compose.animation.core.EasingKt.d
            androidx.compose.animation.core.TweenSpec r7 = androidx.compose.animation.core.AnimationSpecKt.c(r13, r1, r4, r3)
            boolean r13 = r12.f65136f
            androidx.compose.animation.core.Animatable r5 = r12.f65135e
            if (r13 == 0) goto L4d
            r12.f65133b = r2
            java.lang.Object r12 = r5.g(r12)
            if (r12 != r0) goto L62
            goto L61
        L4d:
            java.lang.Float r6 = new java.lang.Float
            r13 = 1065353216(0x3f800000, float:1.0)
            r6.<init>(r13)
            r12.f65133b = r3
            r8 = 0
            r9 = 0
            r11 = 12
            r10 = r12
            java.lang.Object r12 = androidx.compose.animation.core.Animatable.c(r5, r6, r7, r8, r9, r10, r11)
            if (r12 != r0) goto L62
        L61:
            return r0
        L62:
            kotlin.Unit r12 = kotlin.Unit.f71739a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.story.components.StoryProgressBarKt$StoryProgressBar$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
