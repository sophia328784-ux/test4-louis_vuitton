package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B!\b\u0017\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB)\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedAnimationSpec;", "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;", "animation", "Landroidx/compose/animation/core/RepeatMode;", "repeatMode", "<init>", "(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V", "Landroidx/compose/animation/core/StartOffset;", "initialStartOffset", "(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedInfiniteRepeatableSpec<V extends AnimationVector> implements VectorizedAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VectorizedDurationBasedAnimationSpec f4056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepeatMode f4057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f4058c;
    public final long d;

    public VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4056a = vectorizedDurationBasedAnimationSpec;
        this.f4057b = repeatMode;
        this.f4058c = ((long) (vectorizedDurationBasedAnimationSpec.b() + vectorizedDurationBasedAnimationSpec.getF4084a())) * 1000000;
        this.d = j2 * 1000000;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean a() {
        return true;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long c(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return Long.MAX_VALUE;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4056a.f(h(j2), animationVector, animationVector2, i(j2, animationVector, animationVector3, animationVector2));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f4056a.g(h(j2), animationVector, animationVector2, i(j2, animationVector, animationVector3, animationVector2));
    }

    public final long h(long j2) {
        long j3 = this.d;
        if (j2 + j3 <= 0) {
            return 0L;
        }
        long j4 = j2 + j3;
        long j5 = this.f4058c;
        long j6 = j4 / j5;
        return (this.f4057b == RepeatMode.Restart || j6 % 2 == 0) ? j4 - (j6 * j5) : ((j6 + 1) * j5) - j4;
    }

    public final AnimationVector i(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j3 = this.d;
        long j4 = j2 + j3;
        long j5 = this.f4058c;
        return j4 > j5 ? this.f4056a.f(j5 - j3, animationVector, animationVector3, animationVector2) : animationVector2;
    }

    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(vectorizedDurationBasedAnimationSpec, (i2 & 2) != 0 ? RepeatMode.Restart : repeatMode, (i2 & 4) != 0 ? StartOffset.a(0) : j2, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(vectorizedDurationBasedAnimationSpec, (i2 & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    @Deprecated
    public /* synthetic */ VectorizedInfiniteRepeatableSpec(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode) {
        this(vectorizedDurationBasedAnimationSpec, repeatMode, StartOffset.a(0), (DefaultConstructorMarker) null);
    }
}
