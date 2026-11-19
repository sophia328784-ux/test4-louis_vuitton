package androidx.compose.animation.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0003"}, d2 = {"Landroidx/compose/animation/core/FloatAnimationSpec;", "Landroidx/compose/animation/core/AnimationSpec;", "", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface FloatAnimationSpec extends AnimationSpec<Float> {
    @Override // androidx.compose.animation.core.AnimationSpec
    /* bridge */ /* synthetic */ default VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return b();
    }

    default VectorizedFloatAnimationSpec b() {
        return new VectorizedFloatAnimationSpec(this);
    }

    default float c(float f2, float f3, float f4) {
        return e(f(f2, f3, f4), f2, f3, f4);
    }

    float d(long j2, float f2, float f3, float f4);

    float e(long j2, float f2, float f3, float f4);

    long f(float f2, float f3, float f4);
}
