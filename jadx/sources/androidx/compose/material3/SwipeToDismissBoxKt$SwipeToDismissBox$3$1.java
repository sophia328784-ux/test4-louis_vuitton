package androidx.compose.material3;

import androidx.compose.foundation.gestures.AnchoredDraggableState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SwipeToDismissBoxKt$SwipeToDismissBox$3$1", f = "SwipeToDismissBox.kt", l = {}, m = "invokeSuspend")
final class SwipeToDismissBoxKt$SwipeToDismissBox$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SwipeToDismissBoxState f7343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f7344c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeToDismissBoxKt$SwipeToDismissBox$3$1(SwipeToDismissBoxState swipeToDismissBoxState, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f7343b = swipeToDismissBoxState;
        this.f7344c = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SwipeToDismissBoxKt$SwipeToDismissBox$3$1(this.f7343b, this.f7344c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SwipeToDismissBoxKt$SwipeToDismissBox$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        AnchoredDraggableState anchoredDraggableState = this.f7343b.f7346a;
        SwipeToDismissBoxValue swipeToDismissBoxValue = (SwipeToDismissBoxValue) ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).getF10755b();
        SwipeToDismissBoxValue swipeToDismissBoxValue2 = SwipeToDismissBoxValue.Settled;
        if (swipeToDismissBoxValue != swipeToDismissBoxValue2) {
            if (((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a() != Call.Parameters.DEFAULT_CAMERA_ZOOM && !Float.isNaN(((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a())) {
                swipeToDismissBoxValue2 = ((SnapshotMutableFloatStateImpl) anchoredDraggableState.f4404j).a() > Call.Parameters.DEFAULT_CAMERA_ZOOM ? SwipeToDismissBoxValue.StartToEnd : SwipeToDismissBoxValue.EndToStart;
            }
            this.f7344c.invoke(swipeToDismissBoxValue2);
        }
        return Unit.f71739a;
    }
}
