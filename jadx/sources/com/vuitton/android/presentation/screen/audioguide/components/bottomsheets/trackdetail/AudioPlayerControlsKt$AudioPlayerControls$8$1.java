package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioPlayerControls$8$1", f = "AudioPlayerControls.kt", l = {132}, m = "invokeSuspend", v = 2)
final class AudioPlayerControlsKt$AudioPlayerControls$8$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f53085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f53086c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f53087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PlayerSpeed f53088f;
    public final /* synthetic */ MutableLongState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f53089h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPlayerControlsKt$AudioPlayerControls$8$1(boolean z, PlayerSpeed playerSpeed, MutableLongState mutableLongState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f53087e = z;
        this.f53088f = playerSpeed;
        this.g = mutableLongState;
        this.f53089h = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioPlayerControlsKt$AudioPlayerControls$8$1(this.f53087e, this.f53088f, this.g, this.f53089h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioPlayerControlsKt$AudioPlayerControls$8$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:18:0x0072  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0043 -> B:16:0x0046). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:15:0x0045
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r13.d
            r2 = 1
            if (r1 == 0) goto L18
            if (r1 != r2) goto L11
            long r3 = r13.f53086c
            long r5 = r13.f53085b
            kotlin.ResultKt.b(r14)
            goto L46
        L11:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            r13 = 0
            return r13
        L18:
            kotlin.ResultKt.b(r14)
            boolean r14 = r13.f53087e
            if (r14 != 0) goto L22
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        L22:
            kotlin.time.Clock r14 = kotlin.time.InstantJvmKt.f74578a
            kotlin.time.Instant r14 = r14.now()
            long r3 = r14.a()
            r5 = 16
            r11 = r5
            r5 = r3
            r3 = r11
        L31:
            kotlin.time.Duration$Companion r14 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r14 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.h(r3, r14)
            r13.f53085b = r5
            r13.f53086c = r3
            r13.d = r2
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.c(r7, r13)
            if (r14 != r0) goto L46
            return r0
        L46:
            kotlin.time.Clock r14 = kotlin.time.InstantJvmKt.f74578a
            kotlin.time.Instant r14 = r14.now()
            long r7 = r14.a()
            long r5 = r7 - r5
            androidx.compose.runtime.MutableLongState r14 = r13.g
            long r9 = r14.b()
            float r1 = (float) r5
            com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed r5 = r13.f53088f
            float r5 = r5.getValue()
            float r5 = r5 * r1
            long r5 = (long) r5
            long r9 = r9 + r5
            androidx.compose.runtime.MutableState r1 = r13.f53089h
            java.lang.Object r1 = r1.getF10755b()
            java.lang.Number r1 = (java.lang.Number) r1
            long r5 = r1.longValue()
            int r1 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r1 <= 0) goto L73
            r9 = r5
        L73:
            r14.D(r9)
            r5 = r7
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioPlayerControls$8$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
