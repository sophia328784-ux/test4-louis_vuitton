package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004BG\b\u0000\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\b\f\u0010\rBG\b\u0016\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00028\u0000\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/compose/animation/core/TargetBasedAnimation;", "T", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/Animation;", "Landroidx/compose/animation/core/VectorizedAnimationSpec;", "animationSpec", "Landroidx/compose/animation/core/TwoWayConverter;", "typeConverter", "initialValue", "targetValue", "initialVelocityVector", "<init>", "(Landroidx/compose/animation/core/VectorizedAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "Landroidx/compose/animation/core/AnimationSpec;", "(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TargetBasedAnimation<T, V extends AnimationVector> implements Animation<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VectorizedAnimationSpec f3981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TwoWayConverter f3982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3983c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AnimationVector f3984e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AnimationVector f3985f;
    public final AnimationVector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AnimationVector f3987i;

    public TargetBasedAnimation(VectorizedAnimationSpec<V> vectorizedAnimationSpec, TwoWayConverter<T, V> twoWayConverter, T t, T t2, V v) {
        this.f3981a = vectorizedAnimationSpec;
        this.f3982b = twoWayConverter;
        this.f3983c = t2;
        this.d = t;
        this.f3984e = (AnimationVector) twoWayConverter.getF4034a().invoke(t);
        this.f3985f = (AnimationVector) twoWayConverter.getF4034a().invoke(t2);
        this.g = v != null ? AnimationVectorsKt.a(v) : ((AnimationVector) twoWayConverter.getF4034a().invoke(t)).c();
        this.f3986h = -1L;
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean a() {
        return this.f3981a.a();
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector b(long j2) {
        if (!c(j2)) {
            return this.f3981a.f(j2, this.f3984e, this.f3985f, this.g);
        }
        AnimationVector animationVector = this.f3987i;
        if (animationVector != null) {
            return animationVector;
        }
        AnimationVector animationVectorE = this.f3981a.e(this.f3984e, this.f3985f, this.g);
        this.f3987i = animationVectorE;
        return animationVectorE;
    }

    @Override // androidx.compose.animation.core.Animation
    public final long d() {
        if (this.f3986h < 0) {
            this.f3986h = this.f3981a.c(this.f3984e, this.f3985f, this.g);
        }
        return this.f3986h;
    }

    @Override // androidx.compose.animation.core.Animation
    /* JADX INFO: renamed from: e, reason: from getter */
    public final TwoWayConverter getF3982b() {
        return this.f3982b;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object f(long j2) {
        if (c(j2)) {
            return this.f3983c;
        }
        AnimationVector animationVectorG = this.f3981a.g(j2, this.f3984e, this.f3985f, this.g);
        int f3832e = animationVectorG.getF3832e();
        for (int i2 = 0; i2 < f3832e; i2++) {
            if (Float.isNaN(animationVectorG.a(i2))) {
                PreconditionsKt.b("AnimationVector cannot contain a NaN. " + animationVectorG + ". Animation: " + this + ", playTimeNanos: " + j2);
            }
        }
        return this.f3982b.getF4035b().invoke(animationVectorG);
    }

    @Override // androidx.compose.animation.core.Animation
    /* JADX INFO: renamed from: g, reason: from getter */
    public final Object getF3983c() {
        return this.f3983c;
    }

    public final void h(Object obj) {
        if (Intrinsics.c(obj, this.d)) {
            return;
        }
        this.d = obj;
        this.f3984e = (AnimationVector) this.f3982b.getF4034a().invoke(obj);
        this.f3987i = null;
        this.f3986h = -1L;
    }

    public final void i(Object obj) {
        if (Intrinsics.c(this.f3983c, obj)) {
            return;
        }
        this.f3983c = obj;
        this.f3985f = (AnimationVector) this.f3982b.getF4034a().invoke(obj);
        this.f3987i = null;
        this.f3986h = -1L;
    }

    public final String toString() {
        return "TargetBasedAnimation: " + this.d + " -> " + this.f3983c + ",initial velocity: " + this.g + ", duration: " + (d() / 1000000) + " ms,animationSpec: " + this.f3981a;
    }

    public /* synthetic */ TargetBasedAnimation(VectorizedAnimationSpec vectorizedAnimationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((VectorizedAnimationSpec<AnimationVector>) vectorizedAnimationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i2 & 16) != 0 ? null : animationVector);
    }

    public /* synthetic */ TargetBasedAnimation(AnimationSpec animationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((AnimationSpec<Object>) animationSpec, (TwoWayConverter<Object, AnimationVector>) twoWayConverter, obj, obj2, (i2 & 16) != 0 ? null : animationVector);
    }

    public TargetBasedAnimation(AnimationSpec<T> animationSpec, TwoWayConverter<T, V> twoWayConverter, T t, T t2, V v) {
        this(animationSpec.a(twoWayConverter), twoWayConverter, t, t2, v);
    }
}
