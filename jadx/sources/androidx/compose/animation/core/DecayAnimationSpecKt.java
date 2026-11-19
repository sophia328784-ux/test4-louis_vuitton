package androidx.compose.animation.core;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class DecayAnimationSpecKt {
    public static final float a(DecayAnimationSpec decayAnimationSpec, float f2, float f3) {
        TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
        return ((AnimationVector1D) ((VectorizedFloatDecaySpec) decayAnimationSpec.b()).d(new AnimationVector1D(f2), new AnimationVector1D(f3))).f3821a;
    }

    public static DecayAnimationSpec b() {
        return new DecayAnimationSpecImpl(new FloatExponentialDecaySpec(1.0f, 0.1f));
    }

    public static final DecayAnimationSpec c(FloatDecayAnimationSpec floatDecayAnimationSpec) {
        return new DecayAnimationSpecImpl(floatDecayAnimationSpec);
    }
}
