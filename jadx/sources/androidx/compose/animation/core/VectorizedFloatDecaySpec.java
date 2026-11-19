package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/VectorizedFloatDecaySpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "floatDecaySpec", "<init>", "(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class VectorizedFloatDecaySpec<V extends AnimationVector> implements VectorizedDecayAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FloatDecayAnimationSpec f4052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AnimationVector f4053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimationVector f4054c;
    public AnimationVector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f4055e;

    public VectorizedFloatDecaySpec(FloatDecayAnimationSpec floatDecayAnimationSpec) {
        this.f4052a = floatDecayAnimationSpec;
        this.f4055e = floatDecayAnimationSpec.getF3865a();
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF4055e() {
        return this.f4055e;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public final AnimationVector b(long j2, AnimationVector animationVector, AnimationVector animationVector2) {
        if (this.f4054c == null) {
            this.f4054c = animationVector.c();
        }
        AnimationVector animationVector3 = this.f4054c;
        if (animationVector3 == null) {
            Intrinsics.h("velocityVector");
            throw null;
        }
        int f3825c = animationVector3.getF3825c();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector4 = this.f4054c;
            if (i2 >= f3825c) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.h("velocityVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.h("velocityVector");
                throw null;
            }
            animationVector.getClass();
            animationVector4.e(this.f4052a.b(animationVector2.a(i2), j2), i2);
            i2++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public final long c(AnimationVector animationVector, AnimationVector animationVector2) {
        if (this.f4054c == null) {
            this.f4054c = animationVector.c();
        }
        AnimationVector animationVector3 = this.f4054c;
        if (animationVector3 == null) {
            Intrinsics.h("velocityVector");
            throw null;
        }
        int f3825c = animationVector3.getF3825c();
        long jMax = 0;
        for (int i2 = 0; i2 < f3825c; i2++) {
            animationVector.getClass();
            jMax = Math.max(jMax, this.f4052a.d(animationVector2.a(i2)));
        }
        return jMax;
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public final AnimationVector d(AnimationVector animationVector, AnimationVector animationVector2) {
        if (this.d == null) {
            this.d = animationVector.c();
        }
        AnimationVector animationVector3 = this.d;
        if (animationVector3 == null) {
            Intrinsics.h("targetVector");
            throw null;
        }
        int f3825c = animationVector3.getF3825c();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector4 = this.d;
            if (i2 >= f3825c) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.h("targetVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.h("targetVector");
                throw null;
            }
            animationVector4.e(this.f4052a.e(animationVector.a(i2), animationVector2.a(i2)), i2);
            i2++;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedDecayAnimationSpec
    public final AnimationVector e(long j2, AnimationVector animationVector, AnimationVector animationVector2) {
        if (this.f4053b == null) {
            this.f4053b = animationVector.c();
        }
        AnimationVector animationVector3 = this.f4053b;
        if (animationVector3 == null) {
            Intrinsics.h("valueVector");
            throw null;
        }
        int f3825c = animationVector3.getF3825c();
        int i2 = 0;
        while (true) {
            AnimationVector animationVector4 = this.f4053b;
            if (i2 >= f3825c) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.h("valueVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.h("valueVector");
                throw null;
            }
            animationVector4.e(this.f4052a.c(animationVector.a(i2), animationVector2.a(i2), j2), i2);
            i2++;
        }
    }
}
