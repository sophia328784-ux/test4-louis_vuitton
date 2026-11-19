package androidx.dynamicanimation.animation;

import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class SpringForce implements Force {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public double f13052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f13053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13054c;
    public double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public double f13055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public double f13056f;
    public double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f13057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public double f13058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DynamicAnimation.MassState f13059j;

    public SpringForce() {
        this.f13052a = Math.sqrt(1500.0d);
        this.f13053b = 0.5d;
        this.f13054c = false;
        this.f13058i = Double.MAX_VALUE;
        this.f13059j = new DynamicAnimation.MassState();
    }

    public final void a(float f2) {
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Damping ratio must be non-negative");
        } else {
            this.f13053b = f2;
            this.f13054c = false;
        }
    }

    public final void b(float f2) {
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("Spring stiffness constant must be positive.");
        } else {
            this.f13052a = Math.sqrt(f2);
            this.f13054c = false;
        }
    }

    public final DynamicAnimation.MassState c(long j2, double d, double d2) {
        double dSin;
        double dCos;
        if (!this.f13054c) {
            if (this.f13058i == Double.MAX_VALUE) {
                md.k("Error: Final position of the spring must be set before the animation starts");
                return null;
            }
            double d3 = this.f13053b;
            if (d3 > 1.0d) {
                double d4 = this.f13052a;
                this.f13056f = (Math.sqrt((d3 * d3) - 1.0d) * d4) + ((-d3) * d4);
                double d5 = this.f13053b;
                double d6 = this.f13052a;
                this.g = ((-d5) * d6) - (Math.sqrt((d5 * d5) - 1.0d) * d6);
            } else if (d3 >= 0.0d && d3 < 1.0d) {
                this.f13057h = Math.sqrt(1.0d - (d3 * d3)) * this.f13052a;
            }
            this.f13054c = true;
        }
        double d7 = j2 / 1000.0d;
        double d8 = d - this.f13058i;
        double d9 = this.f13053b;
        if (d9 > 1.0d) {
            double d10 = this.g;
            double d11 = ((d10 * d8) - d2) / (d10 - this.f13056f);
            double d12 = d8 - d11;
            dSin = (Math.pow(2.718281828459045d, this.f13056f * d7) * d11) + (Math.pow(2.718281828459045d, d10 * d7) * d12);
            double d13 = this.g;
            double dPow = Math.pow(2.718281828459045d, d13 * d7) * d12 * d13;
            double d14 = this.f13056f;
            dCos = (Math.pow(2.718281828459045d, d14 * d7) * d11 * d14) + dPow;
        } else if (d9 == 1.0d) {
            double d15 = this.f13052a;
            double d16 = (d15 * d8) + d2;
            double d17 = (d16 * d7) + d8;
            double dPow2 = Math.pow(2.718281828459045d, (-d15) * d7) * d17;
            double dPow3 = Math.pow(2.718281828459045d, (-this.f13052a) * d7) * d17;
            double d18 = -this.f13052a;
            dCos = (Math.pow(2.718281828459045d, d18 * d7) * d16) + (dPow3 * d18);
            dSin = dPow2;
        } else {
            double d19 = 1.0d / this.f13057h;
            double d20 = this.f13052a;
            double d21 = ((d9 * d20 * d8) + d2) * d19;
            dSin = ((Math.sin(this.f13057h * d7) * d21) + (Math.cos(this.f13057h * d7) * d8)) * Math.pow(2.718281828459045d, (-d9) * d20 * d7);
            double d22 = this.f13052a;
            double d23 = this.f13053b;
            double d24 = (-d22) * dSin * d23;
            double dPow4 = Math.pow(2.718281828459045d, (-d23) * d22 * d7);
            double d25 = this.f13057h;
            double dSin2 = Math.sin(d25 * d7) * (-d25) * d8;
            double d26 = this.f13057h;
            dCos = (((Math.cos(d26 * d7) * d21 * d26) + dSin2) * dPow4) + d24;
        }
        float f2 = (float) (dSin + this.f13058i);
        DynamicAnimation.MassState massState = this.f13059j;
        massState.f13049a = f2;
        massState.f13050b = (float) dCos;
        return massState;
    }

    public SpringForce(float f2) {
        this.f13052a = Math.sqrt(1500.0d);
        this.f13053b = 0.5d;
        this.f13054c = false;
        this.f13059j = new DynamicAnimation.MassState();
        this.f13058i = f2;
    }
}
