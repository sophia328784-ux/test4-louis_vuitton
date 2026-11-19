package androidx.compose.animation.core;

import androidx.compose.ui.graphics.BezierKt;
import androidx.compose.ui.util.MathHelpersKt;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/animation/core/CubicBezierEasing;", "Landroidx/compose/animation/core/Easing;", "", "a", NBSSpanMetricUnit.Bit, "c", NBSSpanMetricUnit.Day, "<init>", "(FFFF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CubicBezierEasing implements Easing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f3850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f3851c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f3852e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f3853f;

    public CubicBezierEasing(float f2, float f3, float f4, float f5) {
        int iA;
        this.f3849a = f2;
        this.f3850b = f3;
        this.f3851c = f4;
        this.d = f5;
        if (!((Float.isNaN(f2) || Float.isNaN(f3) || Float.isNaN(f4) || Float.isNaN(f5)) ? false : true)) {
            PreconditionsKt.a("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: " + f2 + ", " + f3 + ", " + f4 + ", " + f5 + JwtParser.SEPARATOR_CHAR);
        }
        float[] fArr = new float[5];
        float f6 = (f3 - Call.Parameters.DEFAULT_CAMERA_ZOOM) * 3.0f;
        float f7 = (f5 - f3) * 3.0f;
        float f8 = (1.0f - f5) * 3.0f;
        double d = f6;
        double d2 = f7;
        double d3 = f8;
        double d4 = d2 * 2.0d;
        double d5 = (d - d4) + d3;
        if (d5 == 0.0d) {
            iA = d2 == d3 ? 0 : BezierKt.a((float) ((d4 - d3) / (d4 - (d3 * 2.0d))), fArr, 0);
        } else {
            double d6 = -Math.sqrt((d2 * d2) - (d3 * d));
            double d7 = (-d) + d2;
            int iA2 = BezierKt.a((float) ((-(d6 + d7)) / d5), fArr, 0);
            int iA3 = BezierKt.a((float) ((d6 - d7) / d5), fArr, iA2) + iA2;
            if (iA3 > 1) {
                float f9 = fArr[0];
                float f10 = fArr[1];
                if (f9 > f10) {
                    fArr[0] = f10;
                    fArr[1] = f9;
                } else if (f9 == f10) {
                    iA = iA3 - 1;
                }
                iA = iA3;
            } else {
                iA = iA3;
            }
        }
        float f11 = (f7 - f6) * 2.0f;
        int iA4 = BezierKt.a((-f11) / (((f8 - f7) * 2.0f) - f11), fArr, iA) + iA;
        float fMin = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        float fMax = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        for (int i2 = 0; i2 < iA4; i2++) {
            float f12 = fArr[i2];
            float f13 = (((((((((f3 - f5) * 3.0f) + 1.0f) - Call.Parameters.DEFAULT_CAMERA_ZOOM) * f12) + (((f5 - (f3 * 2.0f)) + Call.Parameters.DEFAULT_CAMERA_ZOOM) * 3.0f)) * f12) + f6) * f12) + Call.Parameters.DEFAULT_CAMERA_ZOOM;
            fMin = Math.min(fMin, f13);
            fMax = Math.max(fMax, f13);
        }
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fMin)) << 32) | (((long) Float.floatToRawIntBits(fMax)) & BodyPartID.bodyIdMax);
        this.f3852e = Float.intBitsToFloat((int) (jFloatToRawIntBits >> 32));
        this.f3853f = Float.intBitsToFloat((int) (jFloatToRawIntBits & BodyPartID.bodyIdMax));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0092 A[PHI: r3
      0x0092: PHI (r3v27 float) = (r3v5 float), (r3v16 float), (r3v21 float), (r3v31 float), (r3v36 float) binds: [B:128:0x0236, B:117:0x0206, B:92:0x01bb, B:47:0x00e5, B:22:0x008e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:69:0x0162 A[PHI: r12
      0x0162: PHI (r12v41 float) = (r12v25 float), (r12v36 float) binds: [B:68:0x0160, B:81:0x0191] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.animation.core.Easing
    public final float a(float f2) {
        float f3;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || f2 >= 1.0f) {
            return f2;
        }
        float fMax = Math.max(f2, 1.1920929E-7f);
        float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM - fMax;
        float f5 = this.f3849a;
        float f6 = f5 - fMax;
        float f7 = this.f3851c;
        float f8 = f7 - fMax;
        double d = f4;
        float f9 = 0.0f;
        double d2 = ((d - (((double) f6) * 2.0d)) + ((double) f8)) * 3.0d;
        double d3 = ((double) (f6 - f4)) * 3.0d;
        double d4 = (((double) (f6 - f8)) * 3.0d) + ((double) (-f4)) + ((double) (1.0f - fMax));
        float f10 = Float.NaN;
        if (Math.abs(d4 - 0.0d) >= 1.0E-7d) {
            double d5 = d2 / d4;
            double d6 = d3 / d4;
            double d7 = d / d4;
            double d8 = ((d6 * 3.0d) - (d5 * d5)) / 9.0d;
            double d9 = ((d7 * 27.0d) + ((((2.0d * d5) * d5) * d5) - ((9.0d * d5) * d6))) / 54.0d;
            double d10 = d8 * d8 * d8;
            double d11 = (d9 * d9) + d10;
            double d12 = d5 / 3.0d;
            if (d11 < 0.0d) {
                double dSqrt = Math.sqrt(-d10);
                double d13 = (-d9) / dSqrt;
                if (d13 < -1.0d) {
                    d13 = -1.0d;
                }
                if (d13 > 1.0d) {
                    d13 = 1.0d;
                }
                double dAcos = Math.acos(d13);
                double dA = MathHelpersKt.a((float) dSqrt) * 2.0f;
                float fCos = (float) ((Math.cos(dAcos / 3.0d) * dA) - d12);
                float f11 = fCos < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : fCos;
                if (f11 > 1.0f) {
                    f11 = 1.0f;
                }
                if (Math.abs(f11 - fCos) > 1.05E-6f) {
                    f11 = Float.NaN;
                }
                if (Float.isNaN(f11)) {
                    float fCos2 = (float) ((Math.cos((6.283185307179586d + dAcos) / 3.0d) * dA) - d12);
                    f11 = fCos2 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : fCos2;
                    if (f11 > 1.0f) {
                        f11 = 1.0f;
                    }
                    if (Math.abs(f11 - fCos2) > 1.05E-6f) {
                        f11 = Float.NaN;
                    }
                    if (Float.isNaN(f11)) {
                        float fCos3 = (float) ((Math.cos((dAcos + 12.566370614359172d) / 3.0d) * dA) - d12);
                        if (fCos3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            f9 = fCos3;
                        }
                        f3 = f9 > 1.0f ? 1.0f : f9;
                        if (Math.abs(f3 - fCos3) <= 1.05E-6f) {
                            f10 = f3;
                        }
                    } else {
                        f10 = f11;
                    }
                } else {
                    f10 = f11;
                }
            } else if (d11 == 0.0d) {
                float f12 = -MathHelpersKt.a((float) d9);
                float f13 = (float) d12;
                float f14 = (f12 * 2.0f) - f13;
                float f15 = f14 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f14;
                if (f15 > 1.0f) {
                    f15 = 1.0f;
                }
                if (Math.abs(f15 - f14) > 1.05E-6f) {
                    f15 = Float.NaN;
                }
                if (Float.isNaN(f15)) {
                    float f16 = (-f12) - f13;
                    if (f16 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f9 = f16;
                    }
                    f3 = f9 > 1.0f ? 1.0f : f9;
                    if (Math.abs(f3 - f16) <= 1.05E-6f) {
                        f10 = f3;
                    }
                } else {
                    f10 = f15;
                }
            } else {
                double dSqrt2 = Math.sqrt(d11);
                float fA = (float) (((double) (MathHelpersKt.a((float) ((-d9) + dSqrt2)) - MathHelpersKt.a((float) (d9 + dSqrt2)))) - d12);
                if (fA >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f9 = fA;
                }
                f3 = f9 > 1.0f ? 1.0f : f9;
                if (Math.abs(f3 - fA) <= 1.05E-6f) {
                    f10 = f3;
                }
            }
        } else if (Math.abs(d2 - 0.0d) >= 1.0E-7d) {
            double dSqrt3 = Math.sqrt((d3 * d3) - ((4.0d * d2) * d));
            double d14 = d2 * 2.0d;
            float f17 = (float) ((dSqrt3 - d3) / d14);
            float f18 = f17 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? 0.0f : f17;
            if (f18 > 1.0f) {
                f18 = 1.0f;
            }
            if (Math.abs(f18 - f17) > 1.05E-6f) {
                f18 = Float.NaN;
            }
            if (Float.isNaN(f18)) {
                float f19 = (float) (((-d3) - dSqrt3) / d14);
                if (f19 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f9 = f19;
                }
                f3 = f9 > 1.0f ? 1.0f : f9;
                if (Math.abs(f3 - f19) <= 1.05E-6f) {
                    f10 = f3;
                }
            } else {
                f10 = f18;
            }
        } else if (Math.abs(d3 - 0.0d) >= 1.0E-7d) {
            float f20 = (float) ((-d) / d3);
            if (f20 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                f9 = f20;
            }
            f3 = f9 > 1.0f ? 1.0f : f9;
            if (Math.abs(f3 - f20) <= 1.05E-6f) {
                f10 = f3;
            }
        }
        boolean zIsNaN = Float.isNaN(f10);
        float f21 = this.d;
        float f22 = this.f3850b;
        if (!zIsNaN) {
            float f23 = ((((((f22 - f21) + 0.33333334f) * f10) + (f21 - (2.0f * f22))) * f10) + f22) * 3.0f * f10;
            float f24 = this.f3852e;
            if (f23 < f24) {
                f23 = f24;
            }
            float f25 = this.f3853f;
            return f23 > f25 ? f25 : f23;
        }
        throw new IllegalArgumentException("The cubic curve with parameters (" + f5 + ", " + f22 + ", " + f7 + ", " + f21 + ") has no solution at " + f2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CubicBezierEasing)) {
            return false;
        }
        CubicBezierEasing cubicBezierEasing = (CubicBezierEasing) obj;
        return this.f3849a == cubicBezierEasing.f3849a && this.f3850b == cubicBezierEasing.f3850b && this.f3851c == cubicBezierEasing.f3851c && this.d == cubicBezierEasing.d;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f3849a) * 31, 31, this.f3850b), 31, this.f3851c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CubicBezierEasing(a=");
        sb.append(this.f3849a);
        sb.append(", b=");
        sb.append(this.f3850b);
        sb.append(", c=");
        sb.append(this.f3851c);
        sb.append(", d=");
        return defpackage.a.m(sb, this.d, ')');
    }
}
