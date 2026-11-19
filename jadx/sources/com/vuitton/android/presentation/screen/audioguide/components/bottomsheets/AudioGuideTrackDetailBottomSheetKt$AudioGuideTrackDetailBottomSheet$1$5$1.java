package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1", f = "AudioGuideTrackDetailBottomSheet.kt", l = {198}, m = "invokeSuspend", v = 2)
final class AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f53041c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f53042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f53043f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1(PagerState pagerState, int i2, MutableState mutableState, MutableIntState mutableIntState, Continuation continuation) {
        super(2, continuation);
        this.f53041c = pagerState;
        this.d = i2;
        this.f53042e = mutableState;
        this.f53043f = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1(this.f53041c, this.d, this.f53042e, this.f53043f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53040b;
        if (i2 == 0) {
            ResultKt.b(obj);
            float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
            if (((TrackDetailSubMode) this.f53042e.getF10755b()) == TrackDetailSubMode.None) {
                PagerState pagerState = this.f53041c;
                int iK = pagerState.k();
                int i3 = this.d;
                if (iK != i3) {
                    this.f53043f.i(i3);
                    this.f53040b = 1;
                    if (PagerState.v(pagerState, i3, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
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
