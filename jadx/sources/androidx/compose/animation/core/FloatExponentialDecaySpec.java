package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/core/FloatExponentialDecaySpec;", "Landroidx/compose/animation/core/FloatDecayAnimationSpec;", "", "frictionMultiplier", "absVelocityThreshold", "<init>", "(FF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FloatExponentialDecaySpec implements FloatDecayAnimationSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3866b;

    public FloatExponentialDecaySpec(float f2, float f3) {
        this.f3865a = Math.max(1.0E-7f, Math.abs(f3));
        this.f3866b = Math.max(1.0E-4f, f2) * (-4.2f);
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF3865a() {
        return this.f3865a;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float b(float f2, long j2) {
        return f2 * ((float) Math.exp(((j2 / 1000000) / 1000.0f) * this.f3866b));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float c(float f2, float f3, long j2) {
        float f4 = this.f3866b;
        return ((f3 / f4) * ((float) Math.exp((f4 * (j2 / 1000000)) / 1000.0f))) + (f2 - (f3 / f4));
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final long d(float f2) {
        return ((long) ((((float) Math.log(this.f3865a / Math.abs(f2))) * 1000.0f) / this.f3866b)) * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatDecayAnimationSpec
    public final float e(float f2, float f3) {
        float fAbs = Math.abs(f3);
        float f4 = this.f3865a;
        if (fAbs <= f4) {
            return f2;
        }
        double dLog = Math.log(Math.abs(f4 / f3));
        float f5 = this.f3866b;
        return ((f3 / f5) * ((float) Math.exp((((double) f5) * ((dLog / ((double) f5)) * 1000.0d)) / 1000.0d))) + (f2 - (f3 / f5));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public FloatExponentialDecaySpec() {
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this(f2, f2, 3, null);
    }

    public /* synthetic */ FloatExponentialDecaySpec(float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? 0.1f : f3);
    }
}
