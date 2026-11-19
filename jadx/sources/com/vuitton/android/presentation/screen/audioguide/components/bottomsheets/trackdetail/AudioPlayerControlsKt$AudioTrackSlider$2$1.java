package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.runtime.MutableState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.AudioPlayerControlsKt$AudioTrackSlider$2$1", f = "AudioPlayerControls.kt", l = {334}, m = "invokeSuspend", v = 2)
final class AudioPlayerControlsKt$AudioTrackSlider$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f53097c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f53098e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPlayerControlsKt$AudioTrackSlider$2$1(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, Continuation continuation) {
        super(2, continuation);
        this.f53097c = mutableState;
        this.d = mutableState2;
        this.f53098e = mutableState3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioPlayerControlsKt$AudioTrackSlider$2$1(this.f53097c, this.d, this.f53098e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioPlayerControlsKt$AudioTrackSlider$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53096b;
        MutableState mutableState = this.f53098e;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (((Boolean) this.f53097c.getF10755b()).booleanValue() || ((Boolean) this.d.getF10755b()).booleanValue()) {
                mutableState.setValue(Boolean.TRUE);
            } else if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                Duration.Companion companion = Duration.INSTANCE;
                long jH = DurationKt.h(200L, DurationUnit.MILLISECONDS);
                this.f53096b = 1;
                if (DelayKt.c(jH, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        mutableState.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
