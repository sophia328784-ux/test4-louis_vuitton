package com.vuitton.android.presentation.inappbanner;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.SnapshotMutableStateImpl;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerContent$1$1", f = "InAppBannerComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class InAppBannerComposableKt$InAppBannerContent$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeToDismissBoxState f51558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f51559c;
    public final /* synthetic */ HapticFeedback d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppBannerComposableKt$InAppBannerContent$1$1(SwipeToDismissBoxState swipeToDismissBoxState, Function0 function0, HapticFeedback hapticFeedback, Continuation continuation) {
        super(2, continuation);
        this.f51558b = swipeToDismissBoxState;
        this.f51559c = function0;
        this.d = hapticFeedback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InAppBannerComposableKt$InAppBannerContent$1$1(this.f51558b, this.f51559c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InAppBannerComposableKt$InAppBannerContent$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AnchoredDraggableState anchoredDraggableState = this.f51558b.f7346a;
        if (((SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b()) == SwipeToDismissBoxValue.StartToEnd) {
            this.f51559c.mo47invoke();
        } else if (((SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.g).getF10755b()) == SwipeToDismissBoxValue.Settled) {
            HapticFeedbackType.f9193b.getClass();
            int i2 = PlatformHapticFeedbackType.f9196a;
            this.d.a(0);
        }
        return Unit.f71739a;
    }
}
