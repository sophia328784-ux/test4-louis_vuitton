package com.vuitton.android.presentation.screen.thankyou.components;

import androidx.compose.animation.core.SpringSpec;
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
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.components.ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1", f = "ThankYouFeedbackBottomSheet.kt", l = {128}, m = "invokeSuspend", v = 2)
final class ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScrollState f65242c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1(ScrollState scrollState, Continuation continuation) {
        super(2, continuation);
        this.f65242c = scrollState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1(this.f65242c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouFeedbackBottomSheetKt$ThankYouFeedbackBottomSheet$1$1$3$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65241b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f65241b = 1;
            ScrollState.Companion companion = ScrollState.f4288j;
            if (this.f65242c.f(Integer.MAX_VALUE, new SpringSpec(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 7, null), this) == coroutineSingletons) {
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
