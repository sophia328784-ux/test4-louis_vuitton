package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0003\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/StartDelayVectorizedAnimationSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedAnimationSpec;", "vectorizedAnimationSpec", "", "startDelayNanos", "<init>", "(Landroidx/compose/animation/core/VectorizedAnimationSpec;J)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StartDelayVectorizedAnimationSpec<V extends AnimationVector> implements VectorizedAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VectorizedAnimationSpec f3973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3974b;

    public StartDelayVectorizedAnimationSpec(VectorizedAnimationSpec<V> vectorizedAnimationSpec, long j2) {
        this.f3973a = vectorizedAnimationSpec;
        this.f3974b = j2;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final boolean a() {
        return this.f3973a.a();
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final long c(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.f3973a.c(animationVector, animationVector2, animationVector3) + this.f3974b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartDelayVectorizedAnimationSpec)) {
            return false;
        }
        StartDelayVectorizedAnimationSpec startDelayVectorizedAnimationSpec = (StartDelayVectorizedAnimationSpec) obj;
        return startDelayVectorizedAnimationSpec.f3974b == this.f3974b && Intrinsics.c(startDelayVectorizedAnimationSpec.f3973a, this.f3973a);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j3 = this.f3974b;
        return j2 < j3 ? animationVector3 : this.f3973a.f(j2 - j3, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j3 = this.f3974b;
        return j2 < j3 ? animationVector : this.f3973a.g(j2 - j3, animationVector, animationVector2, animationVector3);
    }

    public final int hashCode() {
        return Long.hashCode(this.f3974b) + (this.f3973a.hashCode() * 31);
    }
}
