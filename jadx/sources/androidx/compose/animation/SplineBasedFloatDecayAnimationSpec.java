package androidx.compose.animation;

import androidx.compose.animation.core.FloatDecayAnimationSpec;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SplineBasedFloatDecayAnimationSpec implements FloatDecayAnimationSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlingCalculator f3748a;

    public SplineBasedFloatDecayAnimationSpec(Density density) {
        this.f3748a = new FlingCalculator(SplineBasedFloatDecayAnimationSpec_androidKt.f3749a, density);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    /* JADX INFO: renamed from: a */
    public final float getF3865a() {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float b(float f2, long j2) {
        long j3 = j2 / 1000000;
        FlingCalculator.FlingInfo flingInfoA = this.f3748a.a(f2);
        long j4 = flingInfoA.f3639c;
        return (((Math.signum(flingInfoA.f3637a) * AndroidFlingSpline.a(j4 > 0 ? j3 / j4 : 1.0f).f3413b) * flingInfoA.f3638b) / j4) * 1000.0f;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float c(float f2, float f3, long j2) {
        long j3 = j2 / 1000000;
        FlingCalculator.FlingInfo flingInfoA = this.f3748a.a(f3);
        long j4 = flingInfoA.f3639c;
        return (Math.signum(flingInfoA.f3637a) * flingInfoA.f3638b * AndroidFlingSpline.a(j4 > 0 ? j3 / j4 : 1.0f).f3412a) + f2;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final long d(float f2) {
        return ((long) (Math.exp(this.f3748a.b(f2) / (((double) FlingCalculatorKt.f3640a) - 1.0d)) * 1000.0d)) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float e(float f2, float f3) {
        FlingCalculator flingCalculator = this.f3748a;
        double dB = flingCalculator.b(f3);
        double d = FlingCalculatorKt.f3640a;
        return (Math.signum(f3) * ((float) (Math.exp((d / (d - 1.0d)) * dB) * ((double) (flingCalculator.f3634a * flingCalculator.f3636c))))) + f2;
    }
}
