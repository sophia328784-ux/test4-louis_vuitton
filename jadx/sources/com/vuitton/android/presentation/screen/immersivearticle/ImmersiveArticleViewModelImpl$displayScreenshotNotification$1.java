package com.vuitton.android.presentation.screen.immersivearticle;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$displayScreenshotNotification$1", f = "ImmersiveArticleViewModelImpl.kt", l = {557, 560, 562}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$displayScreenshotNotification$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58302c;
    public final /* synthetic */ Bitmap d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$displayScreenshotNotification$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, Bitmap bitmap, Continuation continuation) {
        super(2, continuation);
        this.f58302c = immersiveArticleViewModelImpl;
        this.d = bitmap;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$displayScreenshotNotification$1(this.f58302c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$displayScreenshotNotification$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        if (r0.emit(r9, r8) == r1) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl r0 = r8.f58302c
            kotlinx.coroutines.flow.MutableStateFlow r0 = r0.z
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r8.f58301b
            android.graphics.Bitmap r3 = r8.d
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L28
            if (r2 == r6) goto L24
            if (r2 == r5) goto L20
            if (r2 != r4) goto L19
            kotlin.ResultKt.b(r9)
            goto L5b
        L19:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L20:
            kotlin.ResultKt.b(r9)
            goto L4c
        L24:
            kotlin.ResultKt.b(r9)
            goto L39
        L28:
            kotlin.ResultKt.b(r9)
            com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel r9 = new com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel
            r9.<init>(r6, r3)
            r8.f58301b = r6
            java.lang.Object r9 = r0.emit(r9, r8)
            if (r9 != r1) goto L39
            goto L5a
        L39:
            kotlin.time.Duration$Companion r9 = kotlin.time.Duration.INSTANCE
            r6 = 4400(0x1130, double:2.174E-320)
            kotlin.time.DurationUnit r9 = kotlin.time.DurationUnit.MILLISECONDS
            long r6 = kotlin.time.DurationKt.h(r6, r9)
            r8.f58301b = r5
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.c(r6, r8)
            if (r9 != r1) goto L4c
            goto L5a
        L4c:
            com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel r9 = new com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel
            r2 = 0
            r9.<init>(r2, r3)
            r8.f58301b = r4
            java.lang.Object r8 = r0.emit(r9, r8)
            if (r8 != r1) goto L5b
        L5a:
            return r1
        L5b:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$displayScreenshotNotification$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
