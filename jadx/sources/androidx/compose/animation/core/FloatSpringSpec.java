package androidx.compose.animation.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/core/FloatSpringSpec;", "Landroidx/compose/animation/core/FloatAnimationSpec;", "", "dampingRatio", "stiffness", "visibilityThreshold", "<init>", "(FFF)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FloatSpringSpec implements FloatAnimationSpec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f3867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpringSimulation f3868b;

    public FloatSpringSpec(float f2, float f3, float f4) {
        this.f3867a = f4;
        SpringSimulation springSimulation = new SpringSimulation(1.0f);
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            PreconditionsKt.a("Damping ratio must be non-negative");
        }
        springSimulation.f3967c = f2;
        double d = springSimulation.f3966b;
        if (((float) (d * d)) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            PreconditionsKt.a("Spring stiffness constant must be positive.");
        }
        springSimulation.f3966b = Math.sqrt(f3);
        this.f3868b = springSimulation;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float c(float f2, float f3, float f4) {
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float d(long j2, float f2, float f3, float f4) {
        SpringSimulation springSimulation = this.f3868b;
        springSimulation.f3965a = f3;
        return Float.intBitsToFloat((int) (springSimulation.a(f2, f4, j2 / 1000000) >> 32));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float e(long j2, float f2, float f3, float f4) {
        SpringSimulation springSimulation = this.f3868b;
        springSimulation.f3965a = f3;
        return Float.intBitsToFloat((int) (springSimulation.a(f2, f4, j2 / 1000000) & BodyPartID.bodyIdMax));
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final long f(float f2, float f3, float f4) {
        double dLog;
        long j2;
        SpringSimulation springSimulation = this.f3868b;
        double d = springSimulation.f3966b;
        float f5 = (float) (d * d);
        float f6 = springSimulation.f3967c;
        float f7 = this.f3867a;
        float f8 = (f2 - f3) / f7;
        float f9 = f4 / f7;
        if (f6 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            j2 = 9223372036854L;
        } else {
            double d2 = f5;
            double d3 = f6;
            double d4 = f9;
            double d5 = f8;
            double dSqrt = Math.sqrt(d2) * d3 * 2.0d;
            double d6 = (dSqrt * dSqrt) - (d2 * 4.0d);
            double dSqrt2 = d6 < 0.0d ? 0.0d : Math.sqrt(d6);
            double d7 = -dSqrt;
            double d8 = (d7 + dSqrt2) * 0.5d;
            double dSqrt3 = (d6 < 0.0d ? Math.sqrt(Math.abs(d6)) : 0.0d) * 0.5d;
            double d9 = (d7 - dSqrt2) * 0.5d;
            if (d5 == 0.0d && d4 == 0.0d) {
                j2 = 0;
            } else {
                if (d5 < 0.0d) {
                    d4 = -d4;
                }
                double dAbs = Math.abs(d5);
                double d10 = 1.0d;
                double d11 = -1.0d;
                double dAbs2 = Double.MAX_VALUE;
                if (d3 > 1.0d) {
                    double d12 = (d8 * dAbs) - d4;
                    double d13 = d8 - d9;
                    double d14 = d12 / d13;
                    double d15 = dAbs - d14;
                    dLog = Math.log(Math.abs(1.0d / d15)) / d8;
                    double dLog2 = Math.log(Math.abs(1.0d / d14)) / d9;
                    if ((Double.doubleToRawLongBits(dLog) & Long.MAX_VALUE) >= 9218868437227405312L) {
                        dLog = dLog2;
                    } else if ((Double.doubleToRawLongBits(dLog2) & Long.MAX_VALUE) < 9218868437227405312L) {
                        dLog = Math.max(dLog, dLog2);
                    }
                    double d16 = d15 * d8;
                    double dLog3 = Math.log(d16 / ((-d14) * d9)) / (d9 - d8);
                    if (Double.isNaN(dLog3) || dLog3 <= 0.0d) {
                        d10 = -1.0d;
                    } else {
                        if (dLog3 > 0.0d) {
                            if ((-((Math.exp(dLog3 * d9) * d14) + (Math.exp(d8 * dLog3) * d15))) < 1.0d) {
                                dLog = (d14 <= 0.0d || d15 >= 0.0d) ? dLog : 0.0d;
                                d10 = -1.0d;
                            }
                        }
                        dLog = Math.log((-((d14 * d9) * d9)) / (d16 * d8)) / d13;
                    }
                    double d17 = d14 * d9;
                    if (Math.abs((Math.exp(d9 * dLog) * d17) + (Math.exp(d8 * dLog) * d16)) >= 1.0E-4d) {
                        int i2 = 0;
                        while (dAbs2 > 0.001d && i2 < 100) {
                            i2++;
                            double d18 = d8 * dLog;
                            double d19 = d9 * dLog;
                            double dExp = dLog - ((((Math.exp(d19) * d14) + (Math.exp(d18) * d15)) + d10) / ((Math.exp(d19) * d17) + (Math.exp(d18) * d16)));
                            dAbs2 = Math.abs(dLog - dExp);
                            dLog = dExp;
                        }
                    }
                } else if (d3 < 1.0d) {
                    double d20 = (d4 - (d8 * dAbs)) / dSqrt3;
                    dLog = Math.log(1.0d / Math.sqrt((d20 * d20) + (dAbs * dAbs))) / d8;
                } else {
                    double d21 = d8 * dAbs;
                    double d22 = d4 - d21;
                    double dLog4 = Math.log(Math.abs(1.0d / dAbs)) / d8;
                    double dLog5 = Math.log(Math.abs(1.0d / d22));
                    double dLog6 = dLog5;
                    for (int i3 = 0; i3 < 6; i3++) {
                        dLog6 = dLog5 - Math.log(Math.abs(dLog6 / d8));
                    }
                    double d23 = dLog6 / d8;
                    if ((Double.doubleToRawLongBits(dLog4) & Long.MAX_VALUE) >= 9218868437227405312L) {
                        dLog4 = d23;
                    } else if ((Double.doubleToRawLongBits(d23) & Long.MAX_VALUE) < 9218868437227405312L) {
                        dLog4 = Math.max(dLog4, d23);
                    }
                    double d24 = (-(d21 + d22)) / (d8 * d22);
                    double d25 = d8 * d24;
                    double dExp2 = (Math.exp(d25) * d22 * d24) + (Math.exp(d25) * dAbs);
                    if (!Double.isNaN(d24) && d24 > 0.0d) {
                        if (d24 <= 0.0d || (-dExp2) >= 1.0d) {
                            dLog4 = (-(2.0d / d8)) - (dAbs / d22);
                            d11 = 1.0d;
                        } else {
                            dLog4 = (d22 >= 0.0d || dAbs <= 0.0d) ? dLog4 : 0.0d;
                        }
                    }
                    dLog = dLog4;
                    int i4 = 0;
                    while (dAbs2 > 0.001d && i4 < 100) {
                        i4++;
                        double d26 = d8 * dLog;
                        double dExp3 = dLog - (((Math.exp(d26) * ((d22 * dLog) + dAbs)) + d11) / (Math.exp(d26) * (((d26 + 1.0d) * d22) + d21)));
                        dAbs2 = Math.abs(dLog - dExp3);
                        dLog = dExp3;
                    }
                }
                j2 = (long) (dLog * 1000.0d);
            }
        }
        return j2 * 1000000;
    }

    public FloatSpringSpec() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);
    }

    public /* synthetic */ FloatSpringSpec(float f2, float f3, float f4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? 1500.0f : f3, (i2 & 4) != 0 ? 0.01f : f4);
    }
}
