package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0003"}, d2 = {"Landroidx/compose/animation/core/VectorizedAnimationSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface VectorizedAnimationSpec<V extends AnimationVector> {
    boolean a();

    long c(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    default AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return f(c(animationVector, animationVector2, animationVector3), animationVector, animationVector2, animationVector3);
    }

    AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);

    AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3);
}
