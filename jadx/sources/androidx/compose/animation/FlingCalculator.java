package androidx.compose.animation;

import androidx.compose.ui.unit.Density;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/compose/animation/FlingCalculator;", "", "", "friction", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(FLandroidx/compose/ui/unit/Density;)V", "FlingInfo", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FlingCalculator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Density f3635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3636c;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/FlingCalculator$FlingInfo;", "", "", "initialVelocity", "distance", "", "duration", "<init>", "(FFJ)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class FlingInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f3637a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f3638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f3639c;

        public FlingInfo(float f2, float f3, long j2) {
            this.f3637a = f2;
            this.f3638b = f3;
            this.f3639c = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            return Float.compare(this.f3637a, flingInfo.f3637a) == 0 && Float.compare(this.f3638b, flingInfo.f3638b) == 0 && this.f3639c == flingInfo.f3639c;
        }

        public final int hashCode() {
            return Long.hashCode(this.f3639c) + pq0.b(Float.hashCode(this.f3637a) * 31, 31, this.f3638b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FlingInfo(initialVelocity=");
            sb.append(this.f3637a);
            sb.append(", distance=");
            sb.append(this.f3638b);
            sb.append(", duration=");
            return fc.k(sb, this.f3639c, ')');
        }
    }

    public FlingCalculator(float f2, Density density) {
        this.f3634a = f2;
        this.f3635b = density;
        float f11002b = density.getF11002b();
        float f3 = FlingCalculatorKt.f3640a;
        this.f3636c = f11002b * 386.0878f * 160.0f * 0.84f;
    }

    public final FlingInfo a(float f2) {
        double dB = b(f2);
        double d = FlingCalculatorKt.f3640a;
        double d2 = d - 1.0d;
        return new FlingInfo(f2, (float) (Math.exp((d / d2) * dB) * ((double) (this.f3634a * this.f3636c))), (long) (Math.exp(dB / d2) * 1000.0d));
    }

    public final double b(float f2) {
        float[] fArr = AndroidFlingSpline.f3411a;
        return Math.log(((double) (Math.abs(f2) * 0.35f)) / ((double) (this.f3634a * this.f3636c)));
    }
}
