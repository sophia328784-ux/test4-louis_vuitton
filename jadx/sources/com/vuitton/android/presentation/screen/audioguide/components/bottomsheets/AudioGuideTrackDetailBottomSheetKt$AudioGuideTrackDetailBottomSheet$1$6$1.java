package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.audioguide.AudioGuideTracker;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModel;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideTrackingUiModelKt;
import defpackage.md;
import defpackage.u2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1", f = "AudioGuideTrackDetailBottomSheet.kt", l = {204}, m = "invokeSuspend", v = 2)
final class AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f53045c;
    public final /* synthetic */ AudioGuideTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f53046e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f53047f;
    public final /* synthetic */ MutableState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1(PagerState pagerState, AudioGuideTracker audioGuideTracker, MutableIntState mutableIntState, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f53045c = pagerState;
        this.d = audioGuideTracker;
        this.f53046e = mutableIntState;
        this.f53047f = mutableState;
        this.g = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1(this.f53045c, this.d, this.f53046e, this.f53047f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53044b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowM = SnapshotStateKt.m(new u2(this.f53045c, 1));
            final MutableState mutableState = this.f53047f;
            final MutableState mutableState2 = this.g;
            final AudioGuideTracker audioGuideTracker = this.d;
            final MutableIntState mutableIntState = this.f53046e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$6$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                    MutableIntState mutableIntState2 = mutableIntState;
                    if (iIntValue != mutableIntState2.f()) {
                        int iF = mutableIntState2.f();
                        mutableIntState2.i(iIntValue);
                        AudioGuideTracker audioGuideTracker2 = audioGuideTracker;
                        if (iIntValue > iF) {
                            audioGuideTracker2.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitNextCoverEvent.f53175a));
                            ((Function0) mutableState.getF10755b()).mo47invoke();
                        } else {
                            audioGuideTracker2.f52976a.a(AudioGuideTrackingUiModelKt.a(AudioGuideTrackingUiModel.OnHitPreviousCoverEvent.f53185a));
                            ((Function0) mutableState2.getF10755b()).mo47invoke();
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f53044b = 1;
            if (((AbstractFlow) flowM).f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
