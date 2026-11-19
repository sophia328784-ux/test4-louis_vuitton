package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B)\b\u0016\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/core/VectorizedSpringSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;", "", "dampingRatio", "stiffness", "visibilityThreshold", "<init>", "(FFLandroidx/compose/animation/core/AnimationVector;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedSpringSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ VectorizedFloatAnimationSpec f4085a;

    public VectorizedSpringSpec(final float f2, final float f3, final V v) {
        int[] iArr = VectorizedAnimationSpecKt.f4043a;
        this.f4085a = new VectorizedFloatAnimationSpec(v != null ? new Animations(f2, f3, v) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final FloatSpringSpec[] f4046a;

            {
                int d = v.getD();
                FloatSpringSpec[] floatSpringSpecArr = new FloatSpringSpec[d];
                for (int i2 = 0; i2 < d; i2++) {
                    floatSpringSpecArr[i2] = new FloatSpringSpec(f2, f3, v.a(i2));
                }
                this.f4046a = floatSpringSpecArr;
            }

            @Override // androidx.compose.animation.core.Animations
            public final FloatAnimationSpec get(int i2) {
                return this.f4046a[i2];
            }
        } : new Animations(f2, f3) { // from class: androidx.compose.animation.core.VectorizedAnimationSpecKt$createSpringAnimations$2

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final FloatSpringSpec f4047a;

            {
                this.f4047a = new FloatSpringSpec(f2, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 4, null);
            }

            @Override // androidx.compose.animation.core.Animations
            public final FloatAnimationSpec get(int i2) {
                return this.f4047a;
            }
        });
    }

    @Override // androidx.compose.animation.core.VectorizedFiniteAnimationSpec, androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean a() {
        this.f4085a.getClass();
        return false;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long c(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4085a.c(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4085a.e(animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4085a.f(j2, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4085a.g(j2, animationVector, animationVector2, animationVector3);
    }

    public /* synthetic */ VectorizedSpringSpec(float f2, float f3, AnimationVector animationVector, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? 1500.0f : f3, (i2 & 4) != 0 ? null : animationVector);
    }
}
