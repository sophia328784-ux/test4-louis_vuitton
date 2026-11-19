package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B%\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/animation/core/TweenSpec;", "T", "Landroidx/compose/animation/core/DurationBasedAnimationSpec;", "", "durationMillis", "delay", "Landroidx/compose/animation/core/Easing;", "easing", "<init>", "(IILandroidx/compose/animation/core/Easing;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TweenSpec<T> implements DurationBasedAnimationSpec<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Easing f4033c;

    public TweenSpec(int i2, int i3, Easing easing, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 300 : i2, (i4 & 2) != 0 ? 0 : i3, (i4 & 4) != 0 ? EasingKt.f3862a : easing);
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedTweenSpec(this.f4031a, this.f4032b, this.f4033c);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TweenSpec) {
            TweenSpec tweenSpec = (TweenSpec) obj;
            if (tweenSpec.f4031a == this.f4031a && tweenSpec.f4032b == this.f4032b && Intrinsics.c(tweenSpec.f4033c, this.f4033c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f4033c.hashCode() + (this.f4031a * 31)) * 31) + this.f4032b;
    }

    @Override // androidx.compose.animation.core.DurationBasedAnimationSpec, androidx.compose.animation.core.AnimationSpec
    public final VectorizedDurationBasedAnimationSpec a(TwoWayConverter twoWayConverter) {
        return new VectorizedTweenSpec(this.f4031a, this.f4032b, this.f4033c);
    }

    public TweenSpec() {
        this(0, 0, null, 7, null);
    }

    public TweenSpec(int i2, int i3, Easing easing) {
        this.f4031a = i2;
        this.f4032b = i3;
        this.f4033c = easing;
    }
}
