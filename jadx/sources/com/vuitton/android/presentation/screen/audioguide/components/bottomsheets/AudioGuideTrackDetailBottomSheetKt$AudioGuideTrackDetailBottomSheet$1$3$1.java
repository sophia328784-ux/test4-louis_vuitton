package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.runtime.MutableState;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1", f = "AudioGuideTrackDetailBottomSheet.kt", l = {151}, m = "invokeSuspend", v = 2)
final class AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AudioGuideViewState.Success f53035c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1(AudioGuideViewState.Success success, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f53035c = success;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1(this.f53035c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53034b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jH = DurationKt.h(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD, DurationUnit.MILLISECONDS);
            this.f53034b = 1;
            if (DelayKt.c(jH, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        if (!this.f53035c.f53229f.f51777c) {
            float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
            this.d.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
