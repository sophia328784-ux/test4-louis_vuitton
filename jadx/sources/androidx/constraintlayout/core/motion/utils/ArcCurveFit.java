package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ArcCurveFit extends CurveFit {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double[] f11326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Arc[] f11327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11328c;

    public static class Arc {
        public static final double[] s = new double[91];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public double[] f11329a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public double f11330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public double f11331c;
        public double d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public double f11332e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double f11333f;
        public double g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public double f11334h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public double f11335i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public double f11336j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public double f11337k;
        public double l;
        public double m;
        public double n;
        public double o;
        public double p;
        public boolean q;
        public boolean r;

        public final double a() {
            double d = this.f11336j * this.p;
            double dHypot = this.n / Math.hypot(d, (-this.f11337k) * this.o);
            return this.q ? (-d) * dHypot : d * dHypot;
        }

        public final double b() {
            double d = this.f11336j * this.p;
            double d2 = (-this.f11337k) * this.o;
            double dHypot = this.n / Math.hypot(d, d2);
            return this.q ? (-d2) * dHypot : d2 * dHypot;
        }

        public final double c(double d) {
            double d2 = (d - this.f11331c) * this.f11335i;
            double d3 = this.f11332e;
            return ((this.f11333f - d3) * d2) + d3;
        }

        public final double d(double d) {
            double d2 = (d - this.f11331c) * this.f11335i;
            double d3 = this.g;
            return ((this.f11334h - d3) * d2) + d3;
        }

        public final double e() {
            return (this.f11336j * this.o) + this.l;
        }

        public final double f() {
            return (this.f11337k * this.p) + this.m;
        }

        public final void g(double d) {
            double d2 = (this.q ? this.d - d : d - this.f11331c) * this.f11335i;
            double d3 = 0.0d;
            if (d2 > 0.0d) {
                d3 = 1.0d;
                if (d2 < 1.0d) {
                    double[] dArr = this.f11329a;
                    double length = d2 * ((double) (dArr.length - 1));
                    int i2 = (int) length;
                    double d4 = dArr[i2];
                    d3 = ((dArr[i2 + 1] - d4) * (length - ((double) i2))) + d4;
                }
            }
            double d5 = d3 * 1.5707963267948966d;
            this.o = Math.sin(d5);
            this.p = Math.cos(d5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0039  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.core.motion.utils.ArcCurveFit, androidx.constraintlayout.core.motion.utils.CurveFit] */
    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        boolean z;
        Arc arc;
        int i2;
        double[] dArr3;
        double[] dArr4 = dArr;
        ?? curveFit = new CurveFit();
        int i3 = 1;
        curveFit.f11328c = true;
        curveFit.f11326a = dArr4;
        curveFit.f11327b = new Arc[dArr4.length - 1];
        char c2 = 0;
        int i4 = 1;
        int i5 = 1;
        int i6 = 0;
        ArcCurveFit arcCurveFit = curveFit;
        while (true) {
            Arc[] arcArr = arcCurveFit.f11327b;
            if (i6 >= arcArr.length) {
                return;
            }
            int i7 = iArr[i6];
            if (i7 == 0) {
                i5 = 3;
            } else if (i7 == i3) {
                i4 = i3;
                i5 = i4;
            } else {
                if (i7 != 2) {
                    if (i7 == 3) {
                        if (i4 != i3) {
                            i4 = i3;
                        }
                        i5 = i4;
                    } else if (i7 == 4) {
                        i5 = 4;
                    } else if (i7 == 5) {
                        i5 = 5;
                    }
                }
                i4 = 2;
                i5 = i4;
            }
            double d = dArr4[i6];
            int i8 = i6 + 1;
            double d2 = dArr4[i8];
            double[] dArr5 = dArr2[i6];
            double d3 = dArr5[c2];
            int i9 = i3;
            boolean z2 = c2;
            double d4 = dArr5[i9];
            double[] dArr6 = dArr2[i8];
            double d5 = dArr6[z2 ? 1 : 0];
            int i10 = i6;
            int i11 = i4;
            double d6 = dArr6[i9];
            Arc arc2 = new Arc();
            arc2.r = z2;
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            boolean z3 = i9;
            if (i5 != z3) {
                if (i5 == 4) {
                    arc2.q = d8 > 0.0d;
                } else if (i5 != 5) {
                    arc2.q = false;
                } else {
                    arc2.q = d8 < 0.0d;
                }
                z = true;
            } else {
                arc2.q = z3;
                z = z3;
            }
            arc2.f11331c = r16;
            arc2.d = d2;
            double d9 = d2 - d;
            double d10 = 1.0d / d9;
            arc2.f11335i = d10;
            if (3 == i5) {
                arc2.r = z;
            }
            if (arc2.r || Math.abs(d7) < 0.001d || Math.abs(d8) < 0.001d) {
                arc = arc2;
                i2 = 1;
                arc.r = true;
                arc.f11332e = d3;
                arc.f11333f = d5;
                arc.g = d4;
                arc.f11334h = d6;
                double dHypot = Math.hypot(d8, d7);
                arc.f11330b = dHypot;
                arc.n = dHypot * d10;
                arc.l = d7 / d9;
                arc.m = d8 / d9;
            } else {
                double[] dArr7 = new double[101];
                arc2.f11329a = dArr7;
                boolean z4 = arc2.q;
                arc2.f11336j = ((double) (z4 ? -1 : 1)) * d7;
                arc2.f11337k = ((double) (z4 ? 1 : -1)) * d8;
                arc2.l = z4 ? d5 : d3;
                arc2.m = z4 ? d4 : d6;
                double d11 = d4 - d6;
                double dHypot2 = 0.0d;
                double d12 = 0.0d;
                double d13 = 0.0d;
                int i12 = 0;
                while (true) {
                    dArr3 = Arc.s;
                    if (i12 >= 91) {
                        break;
                    }
                    double d14 = d13;
                    double radians = Math.toRadians((((double) i12) * 90.0d) / 90.0d);
                    double dSin = Math.sin(radians) * d7;
                    double dCos = Math.cos(radians) * d11;
                    if (i12 > 0) {
                        dHypot2 += Math.hypot(dSin - d12, dCos - d14);
                        dArr3[i12] = dHypot2;
                    }
                    i12++;
                    arc2 = arc2;
                    d12 = dSin;
                    d13 = dCos;
                }
                arc = arc2;
                arc.f11330b = dHypot2;
                for (int i13 = 0; i13 < 91; i13++) {
                    dArr3[i13] = dArr3[i13] / dHypot2;
                }
                for (int i14 = 0; i14 < 101; i14++) {
                    double d15 = ((double) i14) / 100.0d;
                    int iBinarySearch = Arrays.binarySearch(dArr3, d15);
                    if (iBinarySearch >= 0) {
                        dArr7[i14] = ((double) iBinarySearch) / 90.0d;
                    } else if (iBinarySearch == -1) {
                        dArr7[i14] = 0.0d;
                    } else {
                        int i15 = -iBinarySearch;
                        int i16 = i15 - 2;
                        double d16 = dArr3[i16];
                        dArr7[i14] = (((d15 - d16) / (dArr3[i15 - 1] - d16)) + ((double) i16)) / 90.0d;
                    }
                }
                arc.n = arc.f11330b * arc.f11335i;
                i2 = 1;
            }
            arcArr[i10] = arc;
            arcCurveFit = this;
            dArr4 = dArr;
            i3 = i2;
            i6 = i8;
            i4 = i11;
            c2 = 0;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double b(double d) {
        boolean z = this.f11328c;
        Arc[] arcArr = this.f11327b;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.f11331c;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.r) {
                    return (d3 * arcArr[0].l) + arc.c(d2);
                }
                arc.g(d2);
                return (d3 * arcArr[0].a()) + arcArr[0].e();
            }
            if (d > arcArr[arcArr.length - 1].d) {
                double d4 = arcArr[arcArr.length - 1].d;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                return (d5 * arcArr[length].l) + arcArr[length].c(d4);
            }
        } else {
            double d6 = arcArr[0].f11331c;
            if (d < d6) {
                d = d6;
            } else if (d > arcArr[arcArr.length - 1].d) {
                d = arcArr[arcArr.length - 1].d;
            }
        }
        for (int i2 = 0; i2 < arcArr.length; i2++) {
            Arc arc2 = arcArr[i2];
            if (d <= arc2.d) {
                if (arc2.r) {
                    return arc2.c(d);
                }
                arc2.g(d);
                return arcArr[i2].e();
            }
        }
        return Double.NaN;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void c(double d, double[] dArr) {
        boolean z = this.f11328c;
        Arc[] arcArr = this.f11327b;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.f11331c;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.r) {
                    double dC = arc.c(d2);
                    Arc arc2 = arcArr[0];
                    dArr[0] = (arc2.l * d3) + dC;
                    dArr[1] = (d3 * arcArr[0].m) + arc2.d(d2);
                    return;
                }
                arc.g(d2);
                dArr[0] = (arcArr[0].a() * d3) + arcArr[0].e();
                dArr[1] = (d3 * arcArr[0].b()) + arcArr[0].f();
                return;
            }
            if (d > arcArr[arcArr.length - 1].d) {
                double d4 = arcArr[arcArr.length - 1].d;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                Arc arc3 = arcArr[length];
                if (arc3.r) {
                    double dC2 = arc3.c(d4);
                    Arc arc4 = arcArr[length];
                    dArr[0] = (arc4.l * d5) + dC2;
                    dArr[1] = (d5 * arcArr[length].m) + arc4.d(d4);
                    return;
                }
                arc3.g(d);
                dArr[0] = (arcArr[length].a() * d5) + arcArr[length].e();
                dArr[1] = (d5 * arcArr[length].b()) + arcArr[length].f();
                return;
            }
        } else {
            double d6 = arcArr[0].f11331c;
            if (d < d6) {
                d = d6;
            }
            if (d > arcArr[arcArr.length - 1].d) {
                d = arcArr[arcArr.length - 1].d;
            }
        }
        for (int i2 = 0; i2 < arcArr.length; i2++) {
            Arc arc5 = arcArr[i2];
            if (d <= arc5.d) {
                if (arc5.r) {
                    dArr[0] = arc5.c(d);
                    dArr[1] = arcArr[i2].d(d);
                    return;
                } else {
                    arc5.g(d);
                    dArr[0] = arcArr[i2].e();
                    dArr[1] = arcArr[i2].f();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void d(double d, float[] fArr) {
        boolean z = this.f11328c;
        Arc[] arcArr = this.f11327b;
        if (z) {
            Arc arc = arcArr[0];
            double d2 = arc.f11331c;
            if (d < d2) {
                double d3 = d - d2;
                if (arc.r) {
                    double dC = arc.c(d2);
                    Arc arc2 = arcArr[0];
                    fArr[0] = (float) ((arc2.l * d3) + dC);
                    fArr[1] = (float) ((d3 * arcArr[0].m) + arc2.d(d2));
                    return;
                }
                arc.g(d2);
                fArr[0] = (float) ((arcArr[0].a() * d3) + arcArr[0].e());
                fArr[1] = (float) ((d3 * arcArr[0].b()) + arcArr[0].f());
                return;
            }
            if (d > arcArr[arcArr.length - 1].d) {
                double d4 = arcArr[arcArr.length - 1].d;
                double d5 = d - d4;
                int length = arcArr.length - 1;
                Arc arc3 = arcArr[length];
                if (!arc3.r) {
                    arc3.g(d);
                    fArr[0] = (float) arcArr[length].e();
                    fArr[1] = (float) arcArr[length].f();
                    return;
                } else {
                    double dC2 = arc3.c(d4);
                    Arc arc4 = arcArr[length];
                    fArr[0] = (float) ((arc4.l * d5) + dC2);
                    fArr[1] = (float) ((d5 * arcArr[length].m) + arc4.d(d4));
                    return;
                }
            }
        } else {
            double d6 = arcArr[0].f11331c;
            if (d < d6) {
                d = d6;
            } else if (d > arcArr[arcArr.length - 1].d) {
                d = arcArr[arcArr.length - 1].d;
            }
        }
        for (int i2 = 0; i2 < arcArr.length; i2++) {
            Arc arc5 = arcArr[i2];
            if (d <= arc5.d) {
                if (arc5.r) {
                    fArr[0] = (float) arc5.c(d);
                    fArr[1] = (float) arcArr[i2].d(d);
                    return;
                } else {
                    arc5.g(d);
                    fArr[0] = (float) arcArr[i2].e();
                    fArr[1] = (float) arcArr[i2].f();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final void e(double d, double[] dArr) {
        Arc[] arcArr = this.f11327b;
        double d2 = arcArr[0].f11331c;
        if (d < d2) {
            d = d2;
        } else if (d > arcArr[arcArr.length - 1].d) {
            d = arcArr[arcArr.length - 1].d;
        }
        for (int i2 = 0; i2 < arcArr.length; i2++) {
            Arc arc = arcArr[i2];
            if (d <= arc.d) {
                if (arc.r) {
                    dArr[0] = arc.l;
                    dArr[1] = arc.m;
                    return;
                } else {
                    arc.g(d);
                    dArr[0] = arcArr[i2].a();
                    dArr[1] = arcArr[i2].b();
                    return;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public final double[] f() {
        return this.f11326a;
    }
}
