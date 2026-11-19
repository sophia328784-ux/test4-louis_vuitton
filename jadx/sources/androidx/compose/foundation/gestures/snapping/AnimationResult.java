package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0004B#\u0012\u0006\u0010\u0005\u001a\u00028\u0000\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/AnimationResult;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "remainingOffset", "Landroidx/compose/animation/core/AnimationState;", "currentAnimationState", "<init>", "(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnimationResult<T, V extends AnimationVector> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnimationState f4843b;

    public AnimationResult(T t, AnimationState<T, V> animationState) {
        this.f4842a = t;
        this.f4843b = animationState;
    }
}
