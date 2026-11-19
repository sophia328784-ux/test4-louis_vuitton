package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B9\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0001¢\u0006\u0004\b\u000b\u0010\fB;\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0001¢\u0006\u0004\b\u000b\u0010\u000eB;\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\u000f\u001a\u00028\u0000¢\u0006\u0004\b\u000b\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/compose/animation/core/DecayAnimation;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/Animation;", "Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;", "animationSpec", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "initialValue", "initialVelocityVector", "<init>", "(Landroidx/compose/animation/core/VectorizedDecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "Landroidx/compose/animation/core/DecayAnimationSpec;", "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "initialVelocity", "(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DecayAnimation<T, V extends AnimationVector> implements Animation<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VectorizedDecayAnimationSpec f3854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TwoWayConverter f3855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3856c;
    public final AnimationVector d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnimationVector f3857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnimationVector f3858f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f3859h;

    public DecayAnimation(VectorizedDecayAnimationSpec<V> vectorizedDecayAnimationSpec, TwoWayConverter<T, V> twoWayConverter, T t, V v) {
        this.f3854a = vectorizedDecayAnimationSpec;
        this.f3855b = twoWayConverter;
        this.f3856c = t;
        AnimationVector animationVector = (AnimationVector) twoWayConverter.getF4034a().invoke(t);
        this.d = animationVector;
        this.f3857e = AnimationVectorsKt.a(v);
        this.g = twoWayConverter.getF4035b().invoke(vectorizedDecayAnimationSpec.d(animationVector, v));
        long jC = vectorizedDecayAnimationSpec.c(animationVector, v);
        this.f3859h = jC;
        AnimationVector animationVectorA = AnimationVectorsKt.a(vectorizedDecayAnimationSpec.b(jC, animationVector, v));
        this.f3858f = animationVectorA;
        int f3832e = animationVectorA.getF3832e();
        for (int i2 = 0; i2 < f3832e; i2++) {
            AnimationVector animationVector2 = this.f3858f;
            animationVector2.e(RangesKt.c(animationVector2.a(i2), -this.f3854a.getF4055e(), this.f3854a.getF4055e()), i2);
        }
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean a() {
        return false;
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector b(long j2) {
        if (c(j2)) {
            return this.f3858f;
        }
        return this.f3854a.b(j2, this.d, this.f3857e);
    }

    @Override // androidx.compose.animation.core.Animation
    /* JADX INFO: renamed from: d, reason: from getter */
    public final long getF3859h() {
        return this.f3859h;
    }

    @Override // androidx.compose.animation.core.Animation
    /* JADX INFO: renamed from: e, reason: from getter */
    public final TwoWayConverter getF3855b() {
        return this.f3855b;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object f(long j2) {
        if (c(j2)) {
            return this.g;
        }
        return this.f3855b.getF4035b().invoke(this.f3854a.e(j2, this.d, this.f3857e));
    }

    @Override // androidx.compose.animation.core.Animation
    /* JADX INFO: renamed from: g, reason: from getter */
    public final Object getG() {
        return this.g;
    }

    public DecayAnimation(DecayAnimationSpec<T> decayAnimationSpec, TwoWayConverter<T, V> twoWayConverter, T t, V v) {
        this(decayAnimationSpec.b(), twoWayConverter, t, v);
    }

    public DecayAnimation(DecayAnimationSpec<T> decayAnimationSpec, TwoWayConverter<T, V> twoWayConverter, T t, T t2) {
        this((VectorizedDecayAnimationSpec<AnimationVector>) decayAnimationSpec.b(), twoWayConverter, t, (AnimationVector) twoWayConverter.getF4034a().invoke(t2));
    }
}
