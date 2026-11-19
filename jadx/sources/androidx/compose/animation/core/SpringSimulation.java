package androidx.compose.animation.core;

import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/core/SpringSimulation;", "", "", "finalPosition", "<init>", "(F)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SpringSimulation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f3965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public double f3966b = Math.sqrt(50.0d);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f3967c = 1.0f;

    public SpringSimulation(float f2) {
        this.f3965a = f2;
    }

    public final long a(float f2, float f3, long j2) {
        double dSin;
        double dCos;
        double dExp;
        double dExp2;
        float f4 = f2 - this.f3965a;
        double d = j2 / 1000.0d;
        float f5 = this.f3967c;
        double d2 = ((double) f5) * ((double) f5);
        double d3 = this.f3966b;
        double d4 = ((double) (-f5)) * d3;
        if (f5 <= 1.0f) {
            if (f5 == 1.0f) {
                double d5 = f4;
                double d6 = (d3 * d5) + ((double) f3);
                double d7 = (-d3) * d;
                double d8 = (d * d6) + d5;
                dSin = Math.exp(d7) * d8;
                dExp = Math.exp(d7) * d8 * (-this.f3966b);
                dExp2 = Math.exp(d7) * d6;
            } else {
                double dSqrt = Math.sqrt(1.0d - d2) * d3;
                double d9 = f4;
                double d10 = (((-d4) * d9) + ((double) f3)) * (1.0d / dSqrt);
                double d11 = dSqrt * d;
                double d12 = d * d4;
                dSin = ((Math.sin(d11) * d10) + (Math.cos(d11) * d9)) * Math.exp(d12);
                dCos = (((Math.cos(d11) * dSqrt * d10) + (Math.sin(d11) * (-dSqrt) * d9)) * Math.exp(d12)) + (d4 * dSin);
            }
            return (((long) Float.floatToRawIntBits((float) dCos)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits((float) (dSin + ((double) this.f3965a))) << 32);
        }
        double dSqrt2 = Math.sqrt(d2 - 1.0d) * d3;
        double d13 = d4 + dSqrt2;
        double d14 = d4 - dSqrt2;
        double d15 = f4;
        double d16 = ((d14 * d15) - ((double) f3)) / (d14 - d13);
        double d17 = d15 - d16;
        double d18 = d14 * d;
        double d19 = d * d13;
        dSin = (Math.exp(d19) * d16) + (Math.exp(d18) * d17);
        dExp = Math.exp(d18) * d17 * d14;
        dExp2 = Math.exp(d19) * d16 * d13;
        dCos = dExp2 + dExp;
        return (((long) Float.floatToRawIntBits((float) dCos)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits((float) (dSin + ((double) this.f3965a))) << 32);
    }
}
