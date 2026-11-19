package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1", f = "AudioGuideTrackDetailBottomSheet.kt", l = {187, 190}, m = "invokeSuspend", v = 2)
final class AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f53037c;
    public final /* synthetic */ ScrollState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PagerState f53038e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f53039f;
    public final /* synthetic */ MutableIntState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1(boolean z, ScrollState scrollState, PagerState pagerState, int i2, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f53037c = z;
        this.d = scrollState;
        this.f53038e = pagerState;
        this.f53039f = i2;
        this.g = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1(this.f53037c, this.d, this.f53038e, this.f53039f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        if (androidx.compose.foundation.pager.PagerState.g(r6, r4, null, r5, 6) == r0) goto L21;
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
            int r1 = r5.f53036b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1b
            if (r1 == r4) goto L17
            if (r1 != r3) goto L11
            kotlin.ResultKt.b(r6)
            goto L56
        L11:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            return r2
        L17:
            kotlin.ResultKt.b(r6)
            goto L3b
        L1b:
            kotlin.ResultKt.b(r6)
            boolean r6 = r5.f53037c
            if (r6 == 0) goto L25
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        L25:
            r5.f53036b = r4
            androidx.compose.foundation.ScrollState r6 = r5.d
            androidx.compose.runtime.MutableIntState r1 = r6.f4290a
            androidx.compose.runtime.SnapshotMutableIntStateImpl r1 = (androidx.compose.runtime.SnapshotMutableIntStateImpl) r1
            int r1 = r1.f()
            int r1 = 0 - r1
            float r1 = (float) r1
            java.lang.Object r6 = androidx.compose.foundation.gestures.ScrollExtensionsKt.b(r6, r1, r5)
            if (r6 != r0) goto L3b
            goto L55
        L3b:
            androidx.compose.foundation.pager.PagerState r6 = r5.f53038e
            int r1 = r6.k()
            int r4 = r5.f53039f
            if (r1 == r4) goto L56
            float r1 = com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt.f53032a
            androidx.compose.runtime.MutableIntState r1 = r5.g
            r1.i(r4)
            r5.f53036b = r3
            r1 = 6
            java.lang.Object r5 = androidx.compose.foundation.pager.PagerState.g(r6, r4, r2, r5, r1)
            if (r5 != r0) goto L56
        L55:
            return r0
        L56:
            kotlin.Unit r5 = kotlin.Unit.f71739a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$4$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
