package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;", "Landroidx/compose/animation/core/Animations;", "anims", "<init>", "(Landroidx/compose/animation/core/Animations;)V", "Landroidx/compose/animation/core/FloatAnimationSpec;", "anim", "(Landroidx/compose/animation/core/FloatAnimationSpec;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedFloatAnimationSpec<V extends AnimationVector> implements VectorizedFiniteAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Animations f4048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimationVector f4049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationVector f4050c;
    public AnimationVector d;

    public VectorizedFloatAnimationSpec(final FloatAnimationSpec floatAnimationSpec) {
        this(new Animations() { // from class: androidx.compose.animation.core.VectorizedFloatAnimationSpec.1
            @Override // androidx.compose.animation.core.Animations
            public final FloatAnimationSpec get(int i2) {
                return floatAnimationSpec;
            }
        });
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long c(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int f3825c = animationVector.getD();
        long jMax = 0;
        for (int i2 = 0; i2 < f3825c; i2++) {
            jMax = Math.max(jMax, this.f4048a.get(i2).f(animationVector.a(i2), animationVector2.a(i2), animationVector3.a(i2)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector e(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.d == null) {
            this.d = animationVector3.c();
        }
        AnimationVector animationVector4 = this.d;
        if (animationVector4 == null) {
            Intrinsics.h("endVelocityVector");
            throw null;
        }
        int f3825c = animationVector4.getD();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector5 = this.d;
            if (i2 >= f3825c) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.h("endVelocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.h("endVelocityVector");
                throw null;
            }
            animationVector5.e(this.f4048a.get(i2).c(animationVector.a(i2), animationVector2.a(i2), animationVector3.a(i2)), i2);
            i2++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.f4050c == null) {
            this.f4050c = animationVector3.c();
        }
        AnimationVector animationVector4 = this.f4050c;
        if (animationVector4 == null) {
            Intrinsics.h("velocityVector");
            throw null;
        }
        int f3825c = animationVector4.getD();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector5 = this.f4050c;
            if (i2 >= f3825c) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.h("velocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.h("velocityVector");
                throw null;
            }
            animationVector5.e(this.f4048a.get(i2).e(j2, animationVector.a(i2), animationVector2.a(i2), animationVector3.a(i2)), i2);
            i2++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        if (this.f4049b == null) {
            this.f4049b = animationVector.c();
        }
        AnimationVector animationVector4 = this.f4049b;
        if (animationVector4 == null) {
            Intrinsics.h("valueVector");
            throw null;
        }
        int f3825c = animationVector4.getD();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector5 = this.f4049b;
            if (i2 >= f3825c) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.h("valueVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.h("valueVector");
                throw null;
            }
            animationVector5.e(this.f4048a.get(i2).d(j2, animationVector.a(i2), animationVector2.a(i2), animationVector3.a(i2)), i2);
            i2++;
        }
    }

    public VectorizedFloatAnimationSpec(Animations animations) {
        this.f4048a = animations;
    }
}
