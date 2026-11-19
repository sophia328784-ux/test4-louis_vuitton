package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimationStateKt {
    public static AnimationState a(float f2, float f3, int i2) {
        if ((i2 & 2) != 0) {
            f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return new AnimationState(VectorConvertersKt.f4036a, Float.valueOf(f2), new AnimationVector1D(f3), Long.MIN_VALUE, Long.MIN_VALUE, false);
    }

    public static AnimationState b(AnimationState animationState, float f2, float f3, int i2) {
        if ((i2 & 1) != 0) {
            f2 = ((Number) ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b()).floatValue();
        }
        if ((i2 & 2) != 0) {
            f3 = ((AnimationVector1D) animationState.d).f3821a;
        }
        return new AnimationState(animationState.f3817b, Float.valueOf(f2), new AnimationVector1D(f3), animationState.f3819e, animationState.f3820f, animationState.g);
    }
}
