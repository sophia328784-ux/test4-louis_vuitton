package com.vuitton.android.designkit.components.components;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVFadingTextKt$LVFadingText$1$1", f = "LVFadingText.kt", l = {35, 37}, m = "invokeSuspend", v = 2)
final class LVFadingTextKt$LVFadingText$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f48240c;
    public final /* synthetic */ Animatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f48241e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVFadingTextKt$LVFadingText$1$1(String str, Animatable animatable, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f48240c = str;
        this.d = animatable;
        this.f48241e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVFadingTextKt$LVFadingText$1$1(this.f48240c, this.d, this.f48241e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVFadingTextKt$LVFadingText$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
    
        if (androidx.compose.animation.core.Animatable.c(r15.d, r1, r2, null, null, r15, 12) == r7) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            r15 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r0 = r15.f48239b
            r8 = 6
            r9 = 0
            r10 = 400(0x190, float:5.6E-43)
            androidx.compose.runtime.MutableState r11 = r15.f48241e
            java.lang.String r12 = r15.f48240c
            r13 = 2
            r1 = 1
            r14 = 0
            if (r0 == 0) goto L23
            if (r0 == r1) goto L1f
            if (r0 != r13) goto L19
            kotlin.ResultKt.b(r16)
            goto L6b
        L19:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r14
        L1f:
            kotlin.ResultKt.b(r16)
            goto L4d
        L23:
            kotlin.ResultKt.b(r16)
            java.lang.Object r0 = r11.getF10755b()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = kotlin.jvm.internal.Intrinsics.c(r12, r0)
            if (r0 != 0) goto L6b
            java.lang.Float r0 = new java.lang.Float
            r2 = 0
            r0.<init>(r2)
            androidx.compose.animation.core.TweenSpec r2 = androidx.compose.animation.core.AnimationSpecKt.c(r10, r9, r14, r8)
            r15.f48239b = r1
            r1 = r0
            androidx.compose.animation.core.Animatable r0 = r15.d
            r3 = 0
            r4 = 0
            r6 = 12
            r5 = r15
            java.lang.Object r0 = androidx.compose.animation.core.Animatable.c(r0, r1, r2, r3, r4, r5, r6)
            if (r0 != r7) goto L4d
            goto L6a
        L4d:
            r11.setValue(r12)
            java.lang.Float r1 = new java.lang.Float
            r0 = 1065353216(0x3f800000, float:1.0)
            r1.<init>(r0)
            androidx.compose.animation.core.TweenSpec r2 = androidx.compose.animation.core.AnimationSpecKt.c(r10, r9, r14, r8)
            r15.f48239b = r13
            androidx.compose.animation.core.Animatable r0 = r15.d
            r3 = 0
            r4 = 0
            r6 = 12
            r5 = r15
            java.lang.Object r0 = androidx.compose.animation.core.Animatable.c(r0, r1, r2, r3, r4, r5, r6)
            if (r0 != r7) goto L6b
        L6a:
            return r7
        L6b:
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVFadingTextKt$LVFadingText$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
