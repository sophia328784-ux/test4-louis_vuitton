package androidx.compose.animation.core;

import defpackage.md;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B!\b\u0017\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0007\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/animation/core/InfiniteRepeatableSpec;", "T", "Landroidx/compose/animation/core/AnimationSpec;", "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "animation", "Landroidx/compose/animation/core/RepeatMode;", "repeatMode", "<init>", "(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V", "Landroidx/compose/animation/core/StartOffset;", "initialStartOffset", "(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InfiniteRepeatableSpec<T> implements AnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DurationBasedAnimationSpec f3874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RepeatMode f3875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3876c;

    public InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3874a = durationBasedAnimationSpec;
        this.f3875b = repeatMode;
        this.f3876c = j2;
        if (durationBasedAnimationSpec instanceof TweenSpec) {
            TweenSpec tweenSpec = (TweenSpec) durationBasedAnimationSpec;
            if (tweenSpec.f4031a != 0 || tweenSpec.f4032b != 0) {
                return;
            }
        } else if (durationBasedAnimationSpec instanceof SnapSpec) {
            if (((SnapSpec) durationBasedAnimationSpec).f3964a != 0) {
                return;
            }
        } else {
            if (durationBasedAnimationSpec instanceof KeyframesSpec) {
                int i2 = ((KeyframesSpec) durationBasedAnimationSpec).f3897a.f3899a;
                return;
            }
            if (durationBasedAnimationSpec instanceof KeyframesWithSplineSpec) {
                int i3 = ((KeyframesWithSplineSpec) durationBasedAnimationSpec).f3901a.f3899a;
                return;
            } else {
                if (!(durationBasedAnimationSpec instanceof ArcAnimationSpec)) {
                    return;
                }
                ArcAnimationSpec arcAnimationSpec = (ArcAnimationSpec) durationBasedAnimationSpec;
                if (arcAnimationSpec.f3834b != 0 || arcAnimationSpec.f3835c != 0) {
                    return;
                }
            }
        }
        md.n("Animation to be infinitely repeated cannot have a 0-duration");
        throw null;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedInfiniteRepeatableSpec(this.f3874a.a(twoWayConverter), this.f3875b, this.f3876c, (DefaultConstructorMarker) null);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof InfiniteRepeatableSpec) {
            InfiniteRepeatableSpec infiniteRepeatableSpec = (InfiniteRepeatableSpec) obj;
            if (Intrinsics.c(infiniteRepeatableSpec.f3874a, this.f3874a) && infiniteRepeatableSpec.f3875b == this.f3875b && infiniteRepeatableSpec.f3876c == this.f3876c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.f3876c) + ((this.f3875b.hashCode() + (this.f3874a.hashCode() * 31)) * 31);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(durationBasedAnimationSpec, (i2 & 2) != 0 ? RepeatMode.Restart : repeatMode, (i2 & 4) != 0 ? StartOffset.a(0) : j2, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(durationBasedAnimationSpec, (i2 & 2) != 0 ? RepeatMode.Restart : repeatMode);
    }

    @Deprecated
    public /* synthetic */ InfiniteRepeatableSpec(DurationBasedAnimationSpec durationBasedAnimationSpec, RepeatMode repeatMode) {
        this(durationBasedAnimationSpec, repeatMode, StartOffset.a(0), (DefaultConstructorMarker) null);
    }
}
