package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.ScrollState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1", f = "AudioGuideTrackDetailBottomSheet.kt", l = {381}, m = "invokeSuspend", v = 2)
final class AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScrollState f53054c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1(ScrollState scrollState, Continuation continuation) {
        super(2, continuation);
        this.f53054c = scrollState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1(this.f53054c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideTrackDetailBottomSheetKt$AudioGuideTrackDetailBottomSheet$1$7$1$5$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53053b;
        if (i2 == 0) {
            ResultKt.b(obj);
            TweenSpec tweenSpecC = AnimationSpecKt.c(1000, 0, null, 6);
            this.f53053b = 1;
            if (this.f53054c.f(0, tweenSpecC, this) == coroutineSingletons) {
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
