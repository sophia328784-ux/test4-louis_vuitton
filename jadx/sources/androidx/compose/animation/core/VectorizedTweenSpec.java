package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/animation/core/VectorizedTweenSpec;", "Landroidx/compose/animation/core/AnimationVector;", "V", "Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;", "", "durationMillis", "delayMillis", "Landroidx/compose/animation/core/Easing;", "easing", "<init>", "(IILandroidx/compose/animation/core/Easing;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VectorizedTweenSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Easing f4088c;
    public final VectorizedFloatAnimationSpec d;

    public VectorizedTweenSpec(int i2, int i3, Easing easing) {
        this.f4086a = i2;
        this.f4087b = i3;
        this.f4088c = easing;
        this.d = new VectorizedFloatAnimationSpec(new FloatTweenSpec(i2, i3, easing));
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getF4086a() {
        return this.f4086a;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF4087b() {
        return this.f4087b;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.d.f(j2, animationVector, animationVector2, animationVector3);
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector g(long j2, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        return this.d.g(j2, animationVector, animationVector2, animationVector3);
    }

    public VectorizedTweenSpec(int i2, int i3, Easing easing, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 300 : i2, (i4 & 2) != 0 ? 0 : i3, (i4 & 4) != 0 ? EasingKt.f3862a : easing);
    }

    public VectorizedTweenSpec() {
        this(0, 0, null, 7, null);
    }
}
