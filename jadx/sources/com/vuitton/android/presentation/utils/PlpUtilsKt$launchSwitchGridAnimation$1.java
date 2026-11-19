package com.vuitton.android.presentation.utils;

import androidx.compose.animation.core.Animatable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1", f = "PlpUtils.kt", l = {EACTags.LANGUAGE_PREFERENCES, EACTags.CARD_SEQUENCE_NUMBER, EACTags.SEX}, m = "invokeSuspend", v = 2)
final class PlpUtilsKt$launchSwitchGridAnimation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f65865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f65866c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f65867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f65868f;
    public final /* synthetic */ Animatable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Animatable f65869h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlpUtilsKt$launchSwitchGridAnimation$1(Function1 function1, Animatable animatable, Animatable animatable2, Continuation continuation) {
        super(2, continuation);
        this.f65868f = function1;
        this.g = animatable;
        this.f65869h = animatable2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PlpUtilsKt$launchSwitchGridAnimation$1 plpUtilsKt$launchSwitchGridAnimation$1 = new PlpUtilsKt$launchSwitchGridAnimation$1(this.f65868f, this.g, this.f65869h, continuation);
        plpUtilsKt$launchSwitchGridAnimation$1.f65867e = obj;
        return plpUtilsKt$launchSwitchGridAnimation$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlpUtilsKt$launchSwitchGridAnimation$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0078, code lost:
    
        if (r0.join(r10) == r1) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.f65867e
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r10.d
            kotlin.jvm.functions.Function1 r3 = r10.f65868f
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L30
            if (r2 == r6) goto L28
            if (r2 == r5) goto L20
            if (r2 != r4) goto L1a
            kotlin.ResultKt.b(r11)
            goto L7b
        L1a:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r7
        L20:
            java.lang.Object r0 = r10.f65866c
            kotlinx.coroutines.Job r0 = (kotlinx.coroutines.Job) r0
            kotlin.ResultKt.b(r11)
            goto L6c
        L28:
            java.lang.Object r2 = r10.f65865b
            kotlinx.coroutines.Job r2 = (kotlinx.coroutines.Job) r2
            kotlin.ResultKt.b(r11)
            goto L52
        L30:
            kotlin.ResultKt.b(r11)
            java.lang.Boolean r11 = java.lang.Boolean.TRUE
            r3.invoke(r11)
            com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1$firstJob$1 r11 = new com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1$firstJob$1
            androidx.compose.animation.core.Animatable r2 = r10.g
            r11.<init>(r2, r7)
            kotlinx.coroutines.Job r2 = kotlinx.coroutines.BuildersKt.c(r0, r7, r7, r11, r4)
            r10.f65867e = r0
            r10.f65865b = r2
            r10.d = r6
            r8 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.b(r8, r10)
            if (r11 != r1) goto L52
            goto L7a
        L52:
            com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1$secondJob$1 r11 = new com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1$secondJob$1
            androidx.compose.animation.core.Animatable r6 = r10.f65869h
            r11.<init>(r6, r7)
            kotlinx.coroutines.Job r0 = kotlinx.coroutines.BuildersKt.c(r0, r7, r7, r11, r4)
            r10.f65867e = r7
            r10.f65865b = r7
            r10.f65866c = r0
            r10.d = r5
            java.lang.Object r11 = r2.join(r10)
            if (r11 != r1) goto L6c
            goto L7a
        L6c:
            r10.f65867e = r7
            r10.f65865b = r7
            r10.f65866c = r7
            r10.d = r4
            java.lang.Object r10 = r0.join(r10)
            if (r10 != r1) goto L7b
        L7a:
            return r1
        L7b:
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            r3.invoke(r10)
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.utils.PlpUtilsKt$launchSwitchGridAnimation$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
