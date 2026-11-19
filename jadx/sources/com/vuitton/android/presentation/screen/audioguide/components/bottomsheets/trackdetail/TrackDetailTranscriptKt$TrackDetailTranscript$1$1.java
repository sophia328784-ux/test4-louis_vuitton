package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.foundation.lazy.LazyListState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript$1$1", f = "TrackDetailTranscript.kt", l = {73, 78}, m = "invokeSuspend", v = 2)
final class TrackDetailTranscriptKt$TrackDetailTranscript$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f53110c;
    public final /* synthetic */ LazyListState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f53111e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackDetailTranscriptKt$TrackDetailTranscript$1$1(int i2, LazyListState lazyListState, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f53110c = i2;
        this.d = lazyListState;
        this.f53111e = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TrackDetailTranscriptKt$TrackDetailTranscript$1$1(this.f53110c, this.d, this.f53111e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TrackDetailTranscriptKt$TrackDetailTranscript$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
    
        if (androidx.compose.foundation.gestures.ScrollExtensionsKt.a(r1, r11, r2, r10) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0083, code lost:
    
        if (r1.f(r11, -(r6 / 3), r10) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f53109b
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L18
            if (r1 == r3) goto L14
            if (r1 != r2) goto Le
            goto L14
        Le:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r4
        L14:
            kotlin.ResultKt.b(r11)
            goto L86
        L18:
            kotlin.ResultKt.b(r11)
            int r11 = r10.f53110c
            if (r11 < 0) goto L86
            androidx.compose.runtime.MutableIntState r1 = r10.f53111e
            int r5 = r1.f()
            if (r11 == r5) goto L86
            r1.i(r11)
            int r11 = r11 + r3
            androidx.compose.foundation.lazy.LazyListState r1 = r10.d
            androidx.compose.foundation.lazy.LazyListLayoutInfo r5 = r1.j()
            long r6 = r5.a()
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r6 = r6 & r8
            int r6 = (int) r6
            java.util.List r5 = r5.getF5211k()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.Iterator r5 = r5.iterator()
        L46:
            boolean r7 = r5.hasNext()
            if (r7 == 0) goto L5a
            java.lang.Object r7 = r5.next()
            r8 = r7
            androidx.compose.foundation.lazy.LazyListItemInfo r8 = (androidx.compose.foundation.lazy.LazyListItemInfo) r8
            int r8 = r8.getF5212a()
            if (r8 != r11) goto L46
            goto L5b
        L5a:
            r7 = r4
        L5b:
            androidx.compose.foundation.lazy.LazyListItemInfo r7 = (androidx.compose.foundation.lazy.LazyListItemInfo) r7
            if (r7 == 0) goto L7a
            int r11 = r7.getP()
            float r11 = (float) r11
            float r2 = (float) r6
            r5 = 1077936128(0x40400000, float:3.0)
            float r2 = r2 / r5
            float r11 = r11 - r2
            r2 = 1112014848(0x42480000, float:50.0)
            r5 = 5
            r6 = 0
            androidx.compose.animation.core.SpringSpec r2 = androidx.compose.animation.core.AnimationSpecKt.b(r6, r2, r5, r4)
            r10.f53109b = r3
            java.lang.Object r10 = androidx.compose.foundation.gestures.ScrollExtensionsKt.a(r1, r11, r2, r10)
            if (r10 != r0) goto L86
            goto L85
        L7a:
            int r6 = r6 / 3
            int r3 = -r6
            r10.f53109b = r2
            java.lang.Object r10 = r1.f(r11, r3, r10)
            if (r10 != r0) goto L86
        L85:
            return r0
        L86:
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
