package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class Flow extends VirtualLayout {
    public ConstraintWidget[] g1;
    public int J0 = -1;
    public int K0 = -1;
    public int L0 = -1;
    public int M0 = -1;
    public int N0 = -1;
    public int O0 = -1;
    public float P0 = 0.5f;
    public float Q0 = 0.5f;
    public float R0 = 0.5f;
    public float S0 = 0.5f;
    public float T0 = 0.5f;
    public float U0 = 0.5f;
    public int V0 = 0;
    public int W0 = 0;
    public int X0 = 2;
    public int Y0 = 2;
    public int Z0 = 0;
    public int a1 = -1;
    public int b1 = 0;
    public final ArrayList c1 = new ArrayList();
    public ConstraintWidget[] d1 = null;
    public ConstraintWidget[] e1 = null;
    public int[] f1 = null;
    public int h1 = 0;

    public class WidgetsList {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11497a;
        public ConstraintAnchor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ConstraintAnchor f11500e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ConstraintAnchor f11501f;
        public ConstraintAnchor g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f11502h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11503i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11504j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f11505k;
        public int q;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ConstraintWidget f11498b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11499c = 0;
        public int l = 0;
        public int m = 0;
        public int n = 0;
        public int o = 0;
        public int p = 0;

        public WidgetsList(int i2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i3) {
            this.f11497a = i2;
            this.d = constraintAnchor;
            this.f11500e = constraintAnchor2;
            this.f11501f = constraintAnchor3;
            this.g = constraintAnchor4;
            this.f11502h = Flow.this.C0;
            this.f11503i = Flow.this.y0;
            this.f11504j = Flow.this.D0;
            this.f11505k = Flow.this.z0;
            this.q = i3;
        }

        public final void a(ConstraintWidget constraintWidget) {
            int i2 = this.f11497a;
            int i3 = this.q;
            Flow flow = Flow.this;
            if (i2 == 0) {
                int iD0 = flow.d0(constraintWidget, i3);
                if (constraintWidget.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.p++;
                    iD0 = 0;
                }
                this.l = iD0 + (constraintWidget.k0 != 8 ? flow.V0 : 0) + this.l;
                int iC0 = flow.c0(constraintWidget, this.q);
                if (this.f11498b == null || this.f11499c < iC0) {
                    this.f11498b = constraintWidget;
                    this.f11499c = iC0;
                    this.m = iC0;
                }
            } else {
                int iD1 = flow.d0(constraintWidget, i3);
                int iC1 = flow.c0(constraintWidget, this.q);
                if (constraintWidget.W[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.p++;
                    iC1 = 0;
                }
                this.m = iC1 + (constraintWidget.k0 != 8 ? flow.W0 : 0) + this.m;
                if (this.f11498b == null || this.f11499c < iD1) {
                    this.f11498b = constraintWidget;
                    this.f11499c = iD1;
                    this.l = iD1;
                }
            }
            this.o++;
        }

        /* JADX WARN: Code duplicated, block: B:89:0x0105 A[PHI: r5 r9
          0x0105: PHI (r5v25 int) = (r5v23 int), (r5v26 int) binds: [B:95:0x0115, B:88:0x0103] A[DONT_GENERATE, DONT_INLINE]
          0x0105: PHI (r9v24 float) = (r9v22 float), (r9v27 float) binds: [B:95:0x0115, B:88:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
        public final void b(int i2, boolean z, boolean z2) {
            Flow flow;
            int i3;
            int i4;
            ConstraintWidget constraintWidget;
            boolean z3;
            char c2;
            int i5;
            float f2;
            int i6;
            int i7 = this.o;
            int i8 = 0;
            while (true) {
                flow = Flow.this;
                if (i8 >= i7 || (i6 = this.n + i8) >= flow.h1) {
                    break;
                }
                ConstraintWidget constraintWidget2 = flow.g1[i6];
                if (constraintWidget2 != null) {
                    constraintWidget2.I();
                }
                i8++;
            }
            if (i7 == 0 || this.f11498b == null) {
                return;
            }
            boolean z4 = z2 && i2 == 0;
            int i9 = -1;
            int i10 = -1;
            for (int i11 = 0; i11 < i7; i11++) {
                int i12 = this.n + (z ? (i7 - 1) - i11 : i11);
                if (i12 >= flow.h1) {
                    break;
                }
                ConstraintWidget constraintWidget3 = flow.g1[i12];
                if (constraintWidget3 != null && constraintWidget3.k0 == 0) {
                    if (i9 == -1) {
                        i9 = i11;
                    }
                    i10 = i11;
                }
            }
            int i13 = this.f11497a;
            ConstraintWidget constraintWidget4 = this.f11498b;
            if (i13 == 0) {
                constraintWidget4.o0 = flow.K0;
                ConstraintAnchor constraintAnchor = constraintWidget4.O;
                ConstraintAnchor constraintAnchor2 = constraintWidget4.M;
                int i14 = this.f11503i;
                if (i2 > 0) {
                    i14 += flow.W0;
                }
                constraintAnchor2.a(this.f11500e, i14);
                if (z2) {
                    constraintAnchor.a(this.g, this.f11505k);
                }
                if (i2 > 0) {
                    this.f11500e.d.O.a(constraintAnchor2, 0);
                }
                if (flow.Y0 != 3 || constraintWidget4.G) {
                    constraintWidget = constraintWidget4;
                    break;
                }
                int i15 = 0;
                while (true) {
                    if (i15 < i7) {
                        int i16 = this.n + (z ? (i7 - 1) - i15 : i15);
                        if (i16 < flow.h1) {
                            constraintWidget = flow.g1[i16];
                            if (constraintWidget.G) {
                                break;
                            } else {
                                i15++;
                            }
                        }
                    }
                    constraintWidget = constraintWidget4;
                    break;
                }
                int i17 = 0;
                ConstraintWidget constraintWidget5 = null;
                while (i17 < i7) {
                    int i18 = z ? (i7 - 1) - i17 : i17;
                    int i19 = this.n + i18;
                    if (i19 >= flow.h1) {
                        return;
                    }
                    ConstraintWidget constraintWidget6 = flow.g1[i19];
                    if (constraintWidget6 == null) {
                        i7 = i7;
                        z3 = z4;
                        i10 = i10;
                        c2 = 3;
                    } else {
                        ConstraintAnchor constraintAnchor3 = constraintWidget6.M;
                        ConstraintAnchor constraintAnchor4 = constraintWidget6.O;
                        ConstraintAnchor constraintAnchor5 = constraintWidget6.L;
                        z3 = z4;
                        if (i17 == 0) {
                            constraintWidget6.j(constraintAnchor5, this.d, this.f11502h);
                        }
                        if (i18 == 0) {
                            int i20 = flow.J0;
                            float f3 = flow.P0;
                            if (z) {
                                f3 = 1.0f - f3;
                            }
                            if (this.n == 0 && (i5 = flow.L0) != -1) {
                                f2 = flow.R0;
                                if (z) {
                                    f2 = 1.0f - f2;
                                }
                            } else if (!z2 || (i5 = flow.N0) == -1) {
                                i5 = i20;
                                f2 = f3;
                            } else {
                                f2 = flow.T0;
                                if (z) {
                                    f2 = 1.0f - f2;
                                }
                            }
                            constraintWidget6.n0 = i5;
                            constraintWidget6.h0 = f2;
                        }
                        if (i17 == i7 - 1) {
                            constraintWidget6.j(constraintWidget6.N, this.f11501f, this.f11504j);
                        }
                        if (constraintWidget5 != null) {
                            ConstraintAnchor constraintAnchor6 = constraintWidget5.N;
                            constraintAnchor5.a(constraintAnchor6, flow.V0);
                            if (i17 == i9) {
                                int i21 = this.f11502h;
                                if (constraintAnchor5.h()) {
                                    constraintAnchor5.f11485h = i21;
                                }
                            }
                            constraintAnchor6.a(constraintAnchor5, 0);
                            if (i17 == i10 + 1) {
                                int i22 = this.f11504j;
                                if (constraintAnchor6.h()) {
                                    constraintAnchor6.f11485h = i22;
                                }
                            }
                        }
                        if (constraintWidget6 != constraintWidget4) {
                            int i23 = flow.Y0;
                            c2 = 3;
                            if (i23 == 3 && constraintWidget.G && constraintWidget6 != constraintWidget && constraintWidget6.G) {
                                constraintWidget6.P.a(constraintWidget.P, 0);
                            } else if (i23 == 0) {
                                constraintAnchor3.a(constraintAnchor2, 0);
                            } else if (i23 == 1) {
                                constraintAnchor4.a(constraintAnchor, 0);
                            } else if (z3) {
                                constraintAnchor3.a(this.f11500e, this.f11503i);
                                constraintAnchor4.a(this.g, this.f11505k);
                            } else {
                                constraintAnchor3.a(constraintAnchor2, 0);
                                constraintAnchor4.a(constraintAnchor, 0);
                            }
                        } else {
                            c2 = 3;
                        }
                        constraintWidget5 = constraintWidget6;
                    }
                    i17++;
                    z4 = z3;
                    i10 = i10;
                    i7 = i7;
                }
                return;
            }
            int i24 = i7;
            boolean z5 = z4;
            int i25 = i10;
            constraintWidget4.n0 = flow.J0;
            ConstraintAnchor constraintAnchor7 = constraintWidget4.L;
            ConstraintAnchor constraintAnchor8 = constraintWidget4.N;
            int i26 = this.f11502h;
            if (i2 > 0) {
                i26 += flow.V0;
            }
            if (z) {
                constraintAnchor8.a(this.f11501f, i26);
                if (z2) {
                    constraintAnchor7.a(this.d, this.f11504j);
                }
                if (i2 > 0) {
                    this.f11501f.d.L.a(constraintAnchor8, 0);
                }
            } else {
                constraintAnchor7.a(this.d, i26);
                if (z2) {
                    constraintAnchor8.a(this.f11501f, this.f11504j);
                }
                if (i2 > 0) {
                    this.d.d.N.a(constraintAnchor7, 0);
                }
            }
            int i27 = 0;
            ConstraintWidget constraintWidget7 = null;
            while (true) {
                int i28 = i24;
                if (i27 >= i28 || (i3 = this.n + i27) >= flow.h1) {
                    return;
                }
                ConstraintWidget constraintWidget8 = flow.g1[i3];
                if (constraintWidget8 == null) {
                    i24 = i28;
                } else {
                    ConstraintAnchor constraintAnchor9 = constraintWidget8.L;
                    ConstraintAnchor constraintAnchor10 = constraintWidget8.M;
                    ConstraintAnchor constraintAnchor11 = constraintWidget8.N;
                    if (i27 == 0) {
                        constraintWidget8.j(constraintAnchor10, this.f11500e, this.f11503i);
                        int i29 = flow.K0;
                        float f4 = flow.Q0;
                        if (this.n == 0) {
                            int i30 = flow.M0;
                            i24 = i28;
                            i4 = -1;
                            if (i30 != -1) {
                                f4 = flow.S0;
                            }
                            i29 = i30;
                            constraintWidget8.o0 = i29;
                            constraintWidget8.i0 = f4;
                        } else {
                            i24 = i28;
                            i4 = -1;
                        }
                        if (z2 && (i30 = flow.O0) != i4) {
                            f4 = flow.U0;
                            i29 = i30;
                        }
                        constraintWidget8.o0 = i29;
                        constraintWidget8.i0 = f4;
                    } else {
                        i24 = i28;
                    }
                    if (i27 == i24 - 1) {
                        constraintWidget8.j(constraintWidget8.O, this.g, this.f11505k);
                    }
                    if (constraintWidget7 != null) {
                        ConstraintAnchor constraintAnchor12 = constraintWidget7.O;
                        constraintAnchor10.a(constraintAnchor12, flow.W0);
                        if (i27 == i9) {
                            int i31 = this.f11503i;
                            if (constraintAnchor10.h()) {
                                constraintAnchor10.f11485h = i31;
                            }
                        }
                        constraintAnchor12.a(constraintAnchor10, 0);
                        if (i27 == i25 + 1) {
                            int i32 = this.f11505k;
                            if (constraintAnchor12.h()) {
                                constraintAnchor12.f11485h = i32;
                            }
                        }
                    }
                    if (constraintWidget8 != constraintWidget4) {
                        int i33 = flow.X0;
                        if (z) {
                            if (i33 == 0) {
                                constraintAnchor11.a(constraintAnchor8, 0);
                            } else if (i33 == 1) {
                                constraintAnchor9.a(constraintAnchor7, 0);
                            } else if (i33 == 2) {
                                constraintAnchor9.a(constraintAnchor7, 0);
                                constraintAnchor11.a(constraintAnchor8, 0);
                            }
                        } else if (i33 == 0) {
                            constraintAnchor9.a(constraintAnchor7, 0);
                        } else if (i33 == 1) {
                            constraintAnchor11.a(constraintAnchor8, 0);
                        } else if (i33 == 2) {
                            if (z5) {
                                constraintAnchor9.a(this.d, this.f11502h);
                                constraintAnchor11.a(this.f11501f, this.f11504j);
                            } else {
                                constraintAnchor9.a(constraintAnchor7, 0);
                                constraintAnchor11.a(constraintAnchor8, 0);
                            }
                        }
                    }
                    constraintWidget7 = constraintWidget8;
                }
                i27++;
            }
        }

        public final int c() {
            int i2 = this.f11497a;
            int i3 = this.m;
            return i2 == 1 ? i3 - Flow.this.W0 : i3;
        }

        public final int d() {
            int i2 = this.f11497a;
            int i3 = this.l;
            return i2 == 0 ? i3 - Flow.this.V0 : i3;
        }

        public final void e(int i2) {
            Flow flow;
            int i3;
            int i4 = this.p;
            if (i4 == 0) {
                return;
            }
            int i5 = this.o;
            int i6 = i2 / i4;
            int i7 = 0;
            while (true) {
                flow = Flow.this;
                if (i7 >= i5 || (i3 = this.n + i7) >= flow.h1) {
                    break;
                }
                ConstraintWidget constraintWidget = flow.g1[i3];
                if (this.f11497a == 0) {
                    if (constraintWidget != null) {
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
                        if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.t == 0) {
                            flow.b0(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i6, dimensionBehaviourArr[1], constraintWidget.p());
                        }
                    }
                } else if (constraintWidget != null) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.W;
                    if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.u == 0) {
                        int i8 = i6;
                        flow.b0(constraintWidget, dimensionBehaviourArr2[0], constraintWidget.v(), ConstraintWidget.DimensionBehaviour.FIXED, i8);
                        i6 = i8;
                    }
                }
                i7++;
            }
            this.l = 0;
            this.m = 0;
            this.f11498b = null;
            this.f11499c = 0;
            int i9 = this.o;
            for (int i10 = 0; i10 < i9; i10++) {
                int i11 = this.n + i10;
                if (i11 >= flow.h1) {
                    return;
                }
                ConstraintWidget constraintWidget2 = flow.g1[i11];
                if (this.f11497a == 0) {
                    int iV = constraintWidget2.v();
                    int i12 = flow.V0;
                    if (constraintWidget2.k0 == 8) {
                        i12 = 0;
                    }
                    this.l = iV + i12 + this.l;
                    int iC0 = flow.c0(constraintWidget2, this.q);
                    if (this.f11498b == null || this.f11499c < iC0) {
                        this.f11498b = constraintWidget2;
                        this.f11499c = iC0;
                        this.m = iC0;
                    }
                } else {
                    int iD0 = flow.d0(constraintWidget2, this.q);
                    int iC1 = flow.c0(constraintWidget2, this.q);
                    int i13 = flow.W0;
                    if (constraintWidget2.k0 == 8) {
                        i13 = 0;
                    }
                    this.m = iC1 + i13 + this.m;
                    if (this.f11498b == null || this.f11499c < iD0) {
                        this.f11498b = constraintWidget2;
                        this.f11499c = iD0;
                        this.l = iD0;
                    }
                }
            }
        }

        public final void f(int i2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i3, int i4, int i5, int i6, int i7) {
            this.f11497a = i2;
            this.d = constraintAnchor;
            this.f11500e = constraintAnchor2;
            this.f11501f = constraintAnchor3;
            this.g = constraintAnchor4;
            this.f11502h = i3;
            this.f11503i = i4;
            this.f11504j = i5;
            this.f11505k = i6;
            this.q = i7;
        }
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0102  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public final void a0(int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int[] iArr;
        int i9;
        int i10;
        WidgetsList widgetsList;
        char c2;
        int i11;
        int i12;
        int i13;
        int iCeil;
        Object obj;
        ConstraintWidget constraintWidget;
        int i14;
        int i15;
        int i16;
        int i17;
        if (this.x0 > 0) {
            ConstraintWidget constraintWidget2 = this.X;
            BasicMeasure.Measurer measurer = constraintWidget2 != null ? ((ConstraintWidgetContainer) constraintWidget2).A0 : null;
            if (measurer == null) {
                this.F0 = 0;
                this.G0 = 0;
                this.E0 = false;
                return;
            }
            for (int i18 = 0; i18 < this.x0; i18++) {
                ConstraintWidget constraintWidget3 = this.w0[i18];
                if (constraintWidget3 != null && !(constraintWidget3 instanceof Guideline)) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidget3.o(0);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidget3.o(1);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviourO != dimensionBehaviour || constraintWidget3.t == 1 || dimensionBehaviourO2 != dimensionBehaviour || constraintWidget3.u == 1) {
                        if (dimensionBehaviourO == dimensionBehaviour) {
                            dimensionBehaviourO = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        }
                        if (dimensionBehaviourO2 == dimensionBehaviour) {
                            dimensionBehaviourO2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                        }
                        BasicMeasure.Measure measure = this.H0;
                        measure.f11511a = dimensionBehaviourO;
                        measure.f11512b = dimensionBehaviourO2;
                        measure.f11513c = constraintWidget3.v();
                        measure.d = constraintWidget3.p();
                        measurer.b(constraintWidget3, measure);
                        constraintWidget3.W(measure.f11514e);
                        constraintWidget3.R(measure.f11515f);
                        constraintWidget3.N(measure.g);
                    }
                }
            }
        }
        int i19 = this.C0;
        int i20 = this.D0;
        int i21 = this.y0;
        int i22 = this.z0;
        int[] iArr2 = new int[2];
        int i23 = (i3 - i19) - i20;
        int i24 = this.b1;
        if (i24 == 1) {
            i23 = (i5 - i21) - i22;
        }
        int i25 = i23;
        int i26 = this.J0;
        if (i24 == 0) {
            if (i26 == -1) {
                this.J0 = 0;
            }
            if (this.K0 == -1) {
                this.K0 = 0;
            }
        } else {
            if (i26 == -1) {
                this.J0 = 0;
            }
            if (this.K0 == -1) {
                this.K0 = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.w0;
        int i27 = 0;
        int i28 = 0;
        int i29 = 0;
        while (true) {
            i6 = this.x0;
            if (i27 >= i6) {
                break;
            }
            if (this.w0[i27].k0 == 8) {
                i28++;
            }
            i27++;
        }
        if (i28 > 0) {
            constraintWidgetArr = new ConstraintWidget[i6 - i28];
            int i30 = 0;
            for (int i31 = 0; i31 < this.x0; i31++) {
                ConstraintWidget constraintWidget4 = this.w0[i31];
                if (constraintWidget4.k0 != 8) {
                    constraintWidgetArr[i30] = constraintWidget4;
                    i30++;
                }
            }
            i6 = i30;
        }
        ConstraintWidget[] constraintWidgetArr2 = constraintWidgetArr;
        this.g1 = constraintWidgetArr2;
        this.h1 = i6;
        int i32 = this.Z0;
        ArrayList arrayList = this.c1;
        if (i32 != 0) {
            ConstraintAnchor constraintAnchor = this.M;
            ConstraintAnchor constraintAnchor2 = this.L;
            i9 = i19;
            ConstraintAnchor constraintAnchor3 = this.N;
            ConstraintAnchor constraintAnchor4 = this.O;
            if (i32 == 1) {
                i8 = i22;
                iArr = iArr2;
                i10 = i20;
                i7 = i21;
                int i33 = this.b1;
                if (i6 != 0) {
                    arrayList.clear();
                    WidgetsList widgetsList2 = new WidgetsList(i33, this.L, this.M, this.N, this.O, i25);
                    arrayList.add(widgetsList2);
                    if (i33 == 0) {
                        i11 = 0;
                        int i34 = 0;
                        int i35 = 0;
                        while (i35 < i6) {
                            ConstraintWidget constraintWidget5 = constraintWidgetArr2[i35];
                            int iD0 = d0(constraintWidget5, i25);
                            if (constraintWidget5.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i11++;
                            }
                            int i36 = i11;
                            boolean z = (i34 == i25 || (this.V0 + i34) + iD0 > i25) && widgetsList2.f11498b != null;
                            if (!z && i35 > 0 && (i13 = this.a1) > 0 && i35 % i13 == 0) {
                                z = true;
                            }
                            if (z) {
                                widgetsList2 = new WidgetsList(i33, this.L, this.M, this.N, this.O, i25);
                                widgetsList2.n = i35;
                                arrayList.add(widgetsList2);
                            } else {
                                if (i35 > 0) {
                                    i34 = this.V0 + iD0 + i34;
                                }
                                widgetsList2.a(constraintWidget5);
                                i35++;
                                i11 = i36;
                            }
                            i34 = iD0;
                            widgetsList2.a(constraintWidget5);
                            i35++;
                            i11 = i36;
                        }
                    } else {
                        i11 = 0;
                        int i37 = 0;
                        int i38 = 0;
                        while (i38 < i6) {
                            ConstraintWidget constraintWidget6 = constraintWidgetArr2[i38];
                            int iC0 = c0(constraintWidget6, i25);
                            if (constraintWidget6.W[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i11++;
                            }
                            int i39 = i11;
                            boolean z2 = (i37 == i25 || (this.W0 + i37) + iC0 > i25) && widgetsList2.f11498b != null;
                            if (!z2 && i38 > 0 && (i12 = this.a1) > 0 && i38 % i12 == 0) {
                                z2 = true;
                            }
                            if (z2) {
                                widgetsList2 = new WidgetsList(i33, this.L, this.M, this.N, this.O, i25);
                                widgetsList2.n = i38;
                                arrayList.add(widgetsList2);
                            } else {
                                if (i38 > 0) {
                                    i37 = this.W0 + iC0 + i37;
                                }
                                widgetsList2.a(constraintWidget6);
                                i38++;
                                i11 = i39;
                            }
                            i37 = iC0;
                            widgetsList2.a(constraintWidget6);
                            i38++;
                            i11 = i39;
                        }
                    }
                    int size = arrayList.size();
                    int i40 = this.C0;
                    int i41 = this.y0;
                    int i42 = this.D0;
                    int i43 = this.z0;
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = this.W;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    boolean z3 = dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviourArr[1] == dimensionBehaviour3;
                    if (i11 > 0 && z3) {
                        for (int i44 = 0; i44 < size; i44++) {
                            WidgetsList widgetsList3 = (WidgetsList) arrayList.get(i44);
                            if (i33 == 0) {
                                widgetsList3.e(i25 - widgetsList3.d());
                            } else {
                                widgetsList3.e(i25 - widgetsList3.c());
                            }
                        }
                    }
                    int i45 = i40;
                    int i46 = i41;
                    int i47 = i42;
                    int i48 = i43;
                    ConstraintAnchor constraintAnchor5 = constraintAnchor2;
                    ConstraintAnchor constraintAnchor6 = constraintAnchor;
                    int iD = 0;
                    int iMax = 0;
                    ConstraintAnchor constraintAnchor7 = constraintAnchor3;
                    ConstraintAnchor constraintAnchor8 = constraintAnchor4;
                    for (int i49 = 0; i49 < size; i49++) {
                        WidgetsList widgetsList4 = (WidgetsList) arrayList.get(i49);
                        if (i33 == 0) {
                            if (i49 < size - 1) {
                                constraintAnchor8 = ((WidgetsList) arrayList.get(i49 + 1)).f11498b.M;
                                i48 = 0;
                            } else {
                                i48 = this.z0;
                                constraintAnchor8 = constraintAnchor4;
                            }
                            ConstraintAnchor constraintAnchor9 = widgetsList4.f11498b.O;
                            widgetsList4.f(i33, constraintAnchor5, constraintAnchor6, constraintAnchor7, constraintAnchor8, i45, i46, i47, i48, i25);
                            iD = Math.max(iD, widgetsList4.d());
                            iMax += widgetsList4.c();
                            if (i49 > 0) {
                                iMax += this.W0;
                            }
                            constraintAnchor6 = constraintAnchor9;
                            i46 = 0;
                        } else {
                            if (i49 < size - 1) {
                                constraintAnchor7 = ((WidgetsList) arrayList.get(i49 + 1)).f11498b.L;
                                i47 = 0;
                            } else {
                                i47 = this.D0;
                                constraintAnchor7 = constraintAnchor3;
                            }
                            ConstraintAnchor constraintAnchor10 = widgetsList4.f11498b.N;
                            widgetsList4.f(i33, constraintAnchor5, constraintAnchor6, constraintAnchor7, constraintAnchor8, i45, i46, i47, i48, i25);
                            iD += widgetsList4.d();
                            iMax = Math.max(iMax, widgetsList4.c());
                            if (i49 > 0) {
                                iD += this.V0;
                            }
                            constraintAnchor5 = constraintAnchor10;
                            i45 = 0;
                        }
                    }
                    iArr[0] = iD;
                    iArr[1] = iMax;
                }
            } else if (i32 == 2) {
                i8 = i22;
                iArr = iArr2;
                i10 = i20;
                i7 = i21;
                int i50 = this.b1;
                int iCeil2 = this.a1;
                if (i50 == 0) {
                    if (iCeil2 <= 0) {
                        int i51 = 0;
                        iCeil = 0;
                        for (int i52 = 0; i52 < i6; i52++) {
                            if (i52 > 0) {
                                i51 += this.V0;
                            }
                            ConstraintWidget constraintWidget7 = constraintWidgetArr2[i52];
                            if (constraintWidget7 != null) {
                                int iD1 = d0(constraintWidget7, i25) + i51;
                                if (iD1 > i25) {
                                    break;
                                }
                                iCeil++;
                                i51 = iD1;
                            }
                        }
                    } else {
                        iCeil = iCeil2;
                    }
                    iCeil2 = 0;
                } else {
                    if (iCeil2 <= 0) {
                        int i53 = 0;
                        int i54 = 0;
                        for (int i55 = 0; i55 < i6; i55++) {
                            if (i55 > 0) {
                                i53 += this.W0;
                            }
                            ConstraintWidget constraintWidget8 = constraintWidgetArr2[i55];
                            if (constraintWidget8 != null) {
                                int iC1 = c0(constraintWidget8, i25) + i53;
                                if (iC1 > i25) {
                                    break;
                                }
                                i54++;
                                i53 = iC1;
                            }
                        }
                        iCeil2 = i54;
                    }
                    iCeil = 0;
                }
                if (this.f1 == null) {
                    this.f1 = new int[2];
                }
                boolean z4 = (iCeil2 == 0 && i50 == 1) || (iCeil == 0 && i50 == 0);
                while (!z4) {
                    if (i50 == 0) {
                        iCeil2 = (int) Math.ceil(i6 / iCeil);
                    } else {
                        iCeil = (int) Math.ceil(i6 / iCeil2);
                    }
                    ConstraintWidget[] constraintWidgetArr3 = this.e1;
                    if (constraintWidgetArr3 == null || constraintWidgetArr3.length < iCeil) {
                        obj = null;
                        this.e1 = new ConstraintWidget[iCeil];
                    } else {
                        obj = null;
                        Arrays.fill(constraintWidgetArr3, (Object) null);
                    }
                    ConstraintWidget[] constraintWidgetArr4 = this.d1;
                    if (constraintWidgetArr4 == null || constraintWidgetArr4.length < iCeil2) {
                        this.d1 = new ConstraintWidget[iCeil2];
                    } else {
                        Arrays.fill(constraintWidgetArr4, obj);
                    }
                    for (int i56 = 0; i56 < iCeil; i56++) {
                        for (int i57 = 0; i57 < iCeil2; i57++) {
                            int i58 = (i57 * iCeil) + i56;
                            if (i50 == 1) {
                                i58 = (i56 * iCeil2) + i57;
                            }
                            if (i58 < constraintWidgetArr2.length && (constraintWidget = constraintWidgetArr2[i58]) != null) {
                                int iD2 = d0(constraintWidget, i25);
                                ConstraintWidget constraintWidget9 = this.e1[i56];
                                if (constraintWidget9 == null || constraintWidget9.v() < iD2) {
                                    this.e1[i56] = constraintWidget;
                                }
                                int iC2 = c0(constraintWidget, i25);
                                ConstraintWidget constraintWidget10 = this.d1[i57];
                                if (constraintWidget10 == null || constraintWidget10.p() < iC2) {
                                    this.d1[i57] = constraintWidget;
                                }
                            }
                        }
                    }
                    int iD3 = 0;
                    for (int i59 = 0; i59 < iCeil; i59++) {
                        ConstraintWidget constraintWidget11 = this.e1[i59];
                        if (constraintWidget11 != null) {
                            if (i59 > 0) {
                                iD3 += this.V0;
                            }
                            iD3 = d0(constraintWidget11, i25) + iD3;
                        }
                    }
                    int iC3 = 0;
                    for (int i60 = 0; i60 < iCeil2; i60++) {
                        ConstraintWidget constraintWidget12 = this.d1[i60];
                        if (constraintWidget12 != null) {
                            if (i60 > 0) {
                                iC3 += this.W0;
                            }
                            iC3 = c0(constraintWidget12, i25) + iC3;
                        }
                    }
                    iArr[0] = iD3;
                    iArr[1] = iC3;
                    if (i50 == 0) {
                        if (iD3 <= i25 || iCeil <= 1) {
                            z4 = true;
                        } else {
                            iCeil--;
                        }
                    } else if (iC3 <= i25 || iCeil2 <= 1) {
                        z4 = true;
                    } else {
                        iCeil2--;
                    }
                }
                int[] iArr3 = this.f1;
                iArr3[0] = iCeil;
                iArr3[1] = iCeil2;
                c2 = 1;
            } else if (i32 != 3) {
                i8 = i22;
                iArr = iArr2;
                i10 = i20;
                i7 = i21;
            } else {
                int i61 = this.b1;
                if (i6 == 0) {
                    i8 = i22;
                    iArr = iArr2;
                    i10 = i20;
                    i7 = i21;
                } else {
                    arrayList.clear();
                    iArr = iArr2;
                    i7 = i21;
                    i8 = i22;
                    WidgetsList widgetsList5 = new WidgetsList(i61, this.L, this.M, this.N, this.O, i25);
                    arrayList.add(widgetsList5);
                    if (i61 == 0) {
                        int i62 = 0;
                        int i63 = 0;
                        i14 = 0;
                        int i64 = 0;
                        while (i62 < i6) {
                            i63++;
                            int i65 = i20;
                            ConstraintWidget constraintWidget13 = constraintWidgetArr2[i62];
                            int iD4 = d0(constraintWidget13, i25);
                            int i66 = i61;
                            int i67 = i62;
                            if (constraintWidget13.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i14++;
                            }
                            int i68 = i14;
                            boolean z5 = (i64 == i25 || (this.V0 + i64) + iD4 > i25) && widgetsList5.f11498b != null;
                            if (!z5 && i67 > 0 && (i17 = this.a1) > 0 && i63 > i17) {
                                z5 = true;
                            }
                            if (z5) {
                                i61 = i66;
                                i16 = i67;
                                widgetsList5 = new WidgetsList(i61, this.L, this.M, this.N, this.O, i25);
                                widgetsList5.n = i16;
                                arrayList.add(widgetsList5);
                                i64 = iD4;
                                i63 = 1;
                            } else {
                                i61 = i66;
                                i16 = i67;
                                i64 = i16 > 0 ? this.V0 + iD4 + i64 : iD4;
                            }
                            widgetsList5.a(constraintWidget13);
                            i62 = i16 + 1;
                            i14 = i68;
                            i20 = i65;
                        }
                        i10 = i20;
                    } else {
                        i10 = i20;
                        int i69 = 0;
                        int i70 = 0;
                        int i71 = 0;
                        int i72 = 0;
                        while (i72 < i6) {
                            i69++;
                            ConstraintWidget constraintWidget14 = constraintWidgetArr2[i72];
                            int iC4 = c0(constraintWidget14, i25);
                            int i73 = i61;
                            if (constraintWidget14.W[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                                i70++;
                            }
                            int i74 = i70;
                            boolean z6 = (i71 == i25 || (this.W0 + i71) + iC4 > i25) && widgetsList5.f11498b != null;
                            if (!z6 && i72 > 0 && (i15 = this.a1) > 0 && i69 > i15) {
                                z6 = true;
                            }
                            if (z6) {
                                i61 = i73;
                                widgetsList5 = new WidgetsList(i61, this.L, this.M, this.N, this.O, i25);
                                widgetsList5.n = i72;
                                arrayList.add(widgetsList5);
                                i71 = iC4;
                                i69 = 1;
                            } else {
                                i61 = i73;
                                i71 = i72 > 0 ? this.W0 + iC4 + i71 : iC4;
                            }
                            widgetsList5.a(constraintWidget14);
                            i72++;
                            i70 = i74;
                        }
                        i14 = i70;
                    }
                    int size2 = arrayList.size();
                    int i75 = this.C0;
                    int i76 = this.y0;
                    int i77 = this.D0;
                    int i78 = this.z0;
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.W;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr2[0];
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    boolean z7 = dimensionBehaviour4 == dimensionBehaviour5 || dimensionBehaviourArr2[1] == dimensionBehaviour5;
                    if (i14 > 0 && z7) {
                        for (int i79 = 0; i79 < size2; i79++) {
                            WidgetsList widgetsList6 = (WidgetsList) arrayList.get(i79);
                            if (i61 == 0) {
                                widgetsList6.e(i25 - widgetsList6.d());
                            } else {
                                widgetsList6.e(i25 - widgetsList6.c());
                            }
                        }
                    }
                    int i80 = i75;
                    int i81 = i76;
                    int i82 = i77;
                    int i83 = i78;
                    ConstraintAnchor constraintAnchor11 = constraintAnchor2;
                    ConstraintAnchor constraintAnchor12 = constraintAnchor;
                    int iD5 = 0;
                    int iMax2 = 0;
                    ConstraintAnchor constraintAnchor13 = constraintAnchor3;
                    ConstraintAnchor constraintAnchor14 = constraintAnchor4;
                    for (int i84 = 0; i84 < size2; i84++) {
                        WidgetsList widgetsList7 = (WidgetsList) arrayList.get(i84);
                        if (i61 == 0) {
                            if (i84 < size2 - 1) {
                                constraintAnchor14 = ((WidgetsList) arrayList.get(i84 + 1)).f11498b.M;
                                i83 = 0;
                            } else {
                                i83 = this.z0;
                                constraintAnchor14 = constraintAnchor4;
                            }
                            ConstraintAnchor constraintAnchor15 = widgetsList7.f11498b.O;
                            widgetsList7.f(i61, constraintAnchor11, constraintAnchor12, constraintAnchor13, constraintAnchor14, i80, i81, i82, i83, i25);
                            iD5 = Math.max(iD5, widgetsList7.d());
                            iMax2 += widgetsList7.c();
                            if (i84 > 0) {
                                iMax2 += this.W0;
                            }
                            constraintAnchor12 = constraintAnchor15;
                            i81 = 0;
                        } else {
                            if (i84 < size2 - 1) {
                                constraintAnchor13 = ((WidgetsList) arrayList.get(i84 + 1)).f11498b.L;
                                i82 = 0;
                            } else {
                                i82 = this.D0;
                                constraintAnchor13 = constraintAnchor3;
                            }
                            ConstraintAnchor constraintAnchor16 = widgetsList7.f11498b.N;
                            widgetsList7.f(i61, constraintAnchor11, constraintAnchor12, constraintAnchor13, constraintAnchor14, i80, i81, i82, i83, i25);
                            iD5 += widgetsList7.d();
                            iMax2 = Math.max(iMax2, widgetsList7.c());
                            if (i84 > 0) {
                                iD5 += this.V0;
                            }
                            constraintAnchor11 = constraintAnchor16;
                            i80 = 0;
                        }
                    }
                    iArr[0] = iD5;
                    iArr[1] = iMax2;
                }
            }
            c2 = 1;
        } else {
            i7 = i21;
            i8 = i22;
            iArr = iArr2;
            i9 = i19;
            i10 = i20;
            int i85 = this.b1;
            if (i6 == 0) {
                c2 = 1;
            } else {
                if (arrayList.size() == 0) {
                    widgetsList = new WidgetsList(i85, this.L, this.M, this.N, this.O, i25);
                    arrayList.add(widgetsList);
                } else {
                    WidgetsList widgetsList8 = (WidgetsList) arrayList.get(0);
                    widgetsList8.f11499c = 0;
                    widgetsList8.f11498b = null;
                    widgetsList8.l = 0;
                    widgetsList8.m = 0;
                    widgetsList8.n = 0;
                    widgetsList8.o = 0;
                    widgetsList8.p = 0;
                    widgetsList8.f(i85, this.L, this.M, this.N, this.O, this.C0, this.y0, this.D0, this.z0, i25);
                    widgetsList = widgetsList8;
                }
                for (int i86 = 0; i86 < i6; i86++) {
                    widgetsList.a(constraintWidgetArr2[i86]);
                }
                i29 = 0;
                iArr[0] = widgetsList.d();
                c2 = 1;
                iArr[1] = widgetsList.c();
            }
        }
        int iMin = iArr[i29] + i9 + i10;
        int iMin2 = iArr[c2] + i7 + i8;
        if (i2 == 1073741824) {
            iMin = i3;
        } else if (i2 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i3);
        } else if (i2 != 0) {
            iMin = i29;
        }
        if (i4 == 1073741824) {
            iMin2 = i5;
        } else if (i4 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i5);
        } else if (i4 != 0) {
            iMin2 = i29;
        }
        this.F0 = iMin;
        this.G0 = iMin2;
        W(iMin);
        R(iMin2);
        this.E0 = this.x0 > 0 ? c2 : i29;
    }

    public final int c0(ConstraintWidget constraintWidget, int i2) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.W[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i3 = constraintWidget.u;
            if (i3 == 0) {
                return 0;
            }
            if (i3 == 2) {
                int i4 = (int) (constraintWidget.B * i2);
                if (i4 != constraintWidget.p()) {
                    constraintWidget.g = true;
                    b0(constraintWidget, constraintWidget.W[0], constraintWidget.v(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                }
                return i4;
            }
            constraintWidget2 = constraintWidget;
            if (i3 == 1) {
                return constraintWidget2.p();
            }
            if (i3 == 3) {
                return (int) ((constraintWidget2.v() * constraintWidget2.a0) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.p();
    }

    public final int d0(ConstraintWidget constraintWidget, int i2) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.W[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i3 = constraintWidget.t;
            if (i3 == 0) {
                return 0;
            }
            if (i3 == 2) {
                int i4 = (int) (constraintWidget.y * i2);
                if (i4 != constraintWidget.v()) {
                    constraintWidget.g = true;
                    b0(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, constraintWidget.W[1], constraintWidget.p());
                }
                return i4;
            }
            constraintWidget2 = constraintWidget;
            if (i3 == 1) {
                return constraintWidget2.v();
            }
            if (i3 == 3) {
                return (int) ((constraintWidget2.p() * constraintWidget2.a0) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.v();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void f(LinearSystem linearSystem, boolean z) {
        ConstraintWidget constraintWidget;
        float f2;
        int i2;
        super.f(linearSystem, z);
        ConstraintWidget constraintWidget2 = this.X;
        boolean z2 = constraintWidget2 != null && ((ConstraintWidgetContainer) constraintWidget2).B0;
        int i3 = this.Z0;
        ArrayList arrayList = this.c1;
        if (i3 != 0) {
            if (i3 == 1) {
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    ((WidgetsList) arrayList.get(i4)).b(i4, z2, i4 == size + (-1));
                    i4++;
                }
            } else if (i3 != 2) {
                if (i3 == 3) {
                    int size2 = arrayList.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        ((WidgetsList) arrayList.get(i5)).b(i5, z2, i5 == size2 + (-1));
                        i5++;
                    }
                }
            } else if (this.f1 != null && this.e1 != null && this.d1 != null) {
                for (int i6 = 0; i6 < this.h1; i6++) {
                    this.g1[i6].I();
                }
                int[] iArr = this.f1;
                int i7 = iArr[0];
                int i8 = iArr[1];
                float f3 = this.P0;
                ConstraintWidget constraintWidget3 = null;
                int i9 = 0;
                while (i9 < i7) {
                    if (z2) {
                        i2 = (i7 - i9) - 1;
                        f2 = 1.0f - this.P0;
                    } else {
                        f2 = f3;
                        i2 = i9;
                    }
                    ConstraintWidget constraintWidget4 = this.e1[i2];
                    if (constraintWidget4 != null) {
                        ConstraintAnchor constraintAnchor = constraintWidget4.L;
                        if (constraintWidget4.k0 != 8) {
                            if (i9 == 0) {
                                constraintWidget4.j(constraintAnchor, this.L, this.C0);
                                constraintWidget4.n0 = this.J0;
                                constraintWidget4.h0 = f2;
                            }
                            if (i9 == i7 - 1) {
                                constraintWidget4.j(constraintWidget4.N, this.N, this.D0);
                            }
                            if (i9 > 0 && constraintWidget3 != null) {
                                ConstraintAnchor constraintAnchor2 = constraintWidget3.N;
                                constraintWidget4.j(constraintAnchor, constraintAnchor2, this.V0);
                                constraintWidget3.j(constraintAnchor2, constraintAnchor, 0);
                            }
                            constraintWidget3 = constraintWidget4;
                        }
                    }
                    i9++;
                    f3 = f2;
                }
                for (int i10 = 0; i10 < i8; i10++) {
                    ConstraintWidget constraintWidget5 = this.d1[i10];
                    if (constraintWidget5 != null) {
                        ConstraintAnchor constraintAnchor3 = constraintWidget5.M;
                        if (constraintWidget5.k0 != 8) {
                            if (i10 == 0) {
                                constraintWidget5.j(constraintAnchor3, this.M, this.y0);
                                constraintWidget5.o0 = this.K0;
                                constraintWidget5.i0 = this.Q0;
                            }
                            if (i10 == i8 - 1) {
                                constraintWidget5.j(constraintWidget5.O, this.O, this.z0);
                            }
                            if (i10 > 0 && constraintWidget3 != null) {
                                ConstraintAnchor constraintAnchor4 = constraintWidget3.O;
                                constraintWidget5.j(constraintAnchor3, constraintAnchor4, this.W0);
                                constraintWidget3.j(constraintAnchor4, constraintAnchor3, 0);
                            }
                            constraintWidget3 = constraintWidget5;
                        }
                    }
                }
                for (int i11 = 0; i11 < i7; i11++) {
                    for (int i12 = 0; i12 < i8; i12++) {
                        int i13 = (i12 * i7) + i11;
                        if (this.b1 == 1) {
                            i13 = (i11 * i8) + i12;
                        }
                        ConstraintWidget[] constraintWidgetArr = this.g1;
                        if (i13 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i13]) != null && constraintWidget.k0 != 8) {
                            ConstraintWidget constraintWidget6 = this.e1[i11];
                            ConstraintWidget constraintWidget7 = this.d1[i12];
                            if (constraintWidget != constraintWidget6) {
                                constraintWidget.j(constraintWidget.L, constraintWidget6.L, 0);
                                constraintWidget.j(constraintWidget.N, constraintWidget6.N, 0);
                            }
                            if (constraintWidget != constraintWidget7) {
                                constraintWidget.j(constraintWidget.M, constraintWidget7.M, 0);
                                constraintWidget.j(constraintWidget.O, constraintWidget7.O, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((WidgetsList) arrayList.get(0)).b(0, z2, true);
        }
        this.E0 = false;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void k(ConstraintWidget constraintWidget, HashMap map) {
        super.k(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.J0 = flow.J0;
        this.K0 = flow.K0;
        this.L0 = flow.L0;
        this.M0 = flow.M0;
        this.N0 = flow.N0;
        this.O0 = flow.O0;
        this.P0 = flow.P0;
        this.Q0 = flow.Q0;
        this.R0 = flow.R0;
        this.S0 = flow.S0;
        this.T0 = flow.T0;
        this.U0 = flow.U0;
        this.V0 = flow.V0;
        this.W0 = flow.W0;
        this.X0 = flow.X0;
        this.Y0 = flow.Y0;
        this.Z0 = flow.Z0;
        this.a1 = flow.a1;
        this.b1 = flow.b1;
    }
}
