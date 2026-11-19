package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.gestures.ScrollScope;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/TargetApproachAnimation;", "Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;", "", "Landroidx/compose/animation/core/AnimationVector1D;", "Landroidx/compose/animation/core/AnimationSpec;", "animationSpec", "<init>", "(Landroidx/compose/animation/core/AnimationSpec;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class TargetApproachAnimation implements ApproachAnimation<Float, AnimationVector1D> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimationSpec f4878a;

    public TargetApproachAnimation(AnimationSpec<Float> animationSpec) {
        this.f4878a = animationSpec;
    }

    @Override // androidx.compose.foundation.gestures.snapping.ApproachAnimation
    public final Object a(ScrollScope scrollScope, Float f2, Float f3, Function1 function1, Continuation continuation) {
        float fFloatValue = f2.floatValue();
        float fFloatValue2 = f3.floatValue();
        Object objB = SnapFlingBehaviorKt.b(scrollScope, Math.signum(fFloatValue2) * Math.abs(fFloatValue), fFloatValue, AnimationStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, fFloatValue2, 28), this.f4878a, function1, (ContinuationImpl) continuation);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : (AnimationResult) objB;
    }
}
