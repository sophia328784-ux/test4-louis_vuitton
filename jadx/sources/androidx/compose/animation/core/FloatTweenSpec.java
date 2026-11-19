package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/FloatTweenSpec;", "Landroidx/compose/animation/core/FloatAnimationSpec;", "", "duration", "delay", "Landroidx/compose/animation/core/Easing;", "easing", "<init>", "(IILandroidx/compose/animation/core/Easing;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FloatTweenSpec implements FloatAnimationSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Easing f3870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3871c;
    public final long d;

    public FloatTweenSpec(int i2, int i3, Easing easing, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 300 : i2, (i4 & 2) != 0 ? 0 : i3, (i4 & 4) != 0 ? EasingKt.f3862a : easing);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float d(long j2, float f2, float f3, float f4) {
        long j3 = j2 - this.d;
        if (j3 < 0) {
            j3 = 0;
        }
        long j4 = this.f3871c;
        if (j3 > j4) {
            j3 = j4;
        }
        float fA = this.f3870b.a(this.f3869a == 0 ? 1.0f : j3 / j4);
        return (f3 * fA) + ((1.0f - fA) * f2);
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float e(long j2, float f2, float f3, float f4) {
        long j3 = j2 - this.d;
        if (j3 < 0) {
            j3 = 0;
        }
        long j4 = this.f3871c;
        long j5 = j3 > j4 ? j4 : j3;
        if (j5 == 0) {
            return f4;
        }
        return (d(j5, f2, f3, f4) - d(j5 - 1000000, f2, f3, f4)) * 1000.0f;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final long f(float f2, float f3, float f4) {
        return this.d + this.f3871c;
    }

    public FloatTweenSpec() {
        this(0, 0, null, 7, null);
    }

    public FloatTweenSpec(int i2, int i3, Easing easing) {
        this.f3869a = i2;
        this.f3870b = easing;
        this.f3871c = ((long) i2) * 1000000;
        this.d = ((long) i3) * 1000000;
    }
}
