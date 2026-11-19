package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/foundation/gestures/AnchoredDraggableKt$NoOpDecayAnimationSpec$1", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnchoredDraggableKt$NoOpDecayAnimationSpec$1 implements FloatDecayAnimationSpec {
    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float a() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float b(float f2, long j2) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float c(float f2, float f3, long j2) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final long d(float f2) {
        return 0L;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float e(float f2, float f3) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
