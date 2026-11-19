package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt$ModelSizeSlider$1$1", f = "ModelSizeSlider.kt", l = {}, m = "invokeSuspend", v = 2)
final class ModelSizeSliderKt$ModelSizeSlider$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerState f61511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f61512c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModelSizeSliderKt$ModelSizeSlider$1$1(PagerState pagerState, HapticFeedback hapticFeedback, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f61511b = pagerState;
        this.f61512c = hapticFeedback;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ModelSizeSliderKt$ModelSizeSlider$1$1(this.f61511b, this.f61512c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModelSizeSliderKt$ModelSizeSlider$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        float f2 = ModelSizeSliderKt.f61508a;
        MutableState mutableState = this.d;
        int iIntValue = ((Number) mutableState.getF10755b()).intValue();
        PagerState pagerState = this.f61511b;
        if (iIntValue != pagerState.k()) {
            HapticFeedbackType.f9193b.getClass();
            int i2 = PlatformHapticFeedbackType.f9196a;
            this.f61512c.a(0);
            mutableState.setValue(Integer.valueOf(pagerState.k()));
        }
        return Unit.f71739a;
    }
}
