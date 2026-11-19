package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0081\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/Fade;", "", "", "alpha", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "animationSpec", "<init>", "(FLandroidx/compose/animation/core/FiniteAnimationSpec;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Fade {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FiniteAnimationSpec f3633b;

    public Fade(float f2, FiniteAnimationSpec<Float> finiteAnimationSpec) {
        this.f3632a = f2;
        this.f3633b = finiteAnimationSpec;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fade)) {
            return false;
        }
        Fade fade = (Fade) obj;
        return Float.compare(this.f3632a, fade.f3632a) == 0 && Intrinsics.c(this.f3633b, fade.f3633b);
    }

    public final int hashCode() {
        return this.f3633b.hashCode() + (Float.hashCode(this.f3632a) * 31);
    }

    public final String toString() {
        return "Fade(alpha=" + this.f3632a + ", animationSpec=" + this.f3633b + ')';
    }
}
