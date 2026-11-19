package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/StartDelayAnimationSpec;", "T", "Landroidx/compose/animation/core/AnimationSpec;", "animationSpec", "", "startDelayNanos", "<init>", "(Landroidx/compose/animation/core/AnimationSpec;J)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StartDelayAnimationSpec<T> implements AnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnimationSpec f3971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3972b;

    public StartDelayAnimationSpec(AnimationSpec<T> animationSpec, long j2) {
        this.f3971a = animationSpec;
        this.f3972b = j2;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new StartDelayVectorizedAnimationSpec(this.f3971a.a(twoWayConverter), this.f3972b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StartDelayAnimationSpec)) {
            return false;
        }
        StartDelayAnimationSpec startDelayAnimationSpec = (StartDelayAnimationSpec) obj;
        return startDelayAnimationSpec.f3972b == this.f3972b && Intrinsics.c(startDelayAnimationSpec.f3971a, this.f3971a);
    }

    public final int hashCode() {
        return Long.hashCode(this.f3972b) + (this.f3971a.hashCode() * 31);
    }
}
