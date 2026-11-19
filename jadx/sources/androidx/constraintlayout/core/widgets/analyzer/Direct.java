package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import java.util.HashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class Direct {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BasicMeasure.Measure f11535a = new BasicMeasure.Measure();

    public static boolean a(ConstraintWidget constraintWidget) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[1];
        ConstraintWidget constraintWidget2 = constraintWidget.X;
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget2 != null ? (ConstraintWidgetContainer) constraintWidget2 : null;
        if (constraintWidgetContainer != null) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidgetContainer.W[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = constraintWidgetContainer.W[1];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = ConstraintWidget.DimensionBehaviour.FIXED;
        boolean z = dimensionBehaviour3 == dimensionBehaviour9 || constraintWidget.F() || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour3 == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.t == 0 && constraintWidget.a0 == Call.Parameters.DEFAULT_CAMERA_ZOOM && constraintWidget.y(0)) || (dimensionBehaviour3 == dimensionBehaviour2 && constraintWidget.t == 1 && constraintWidget.z(0, constraintWidget.v()));
        boolean z2 = dimensionBehaviour4 == dimensionBehaviour9 || constraintWidget.G() || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || (dimensionBehaviour4 == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.u == 0 && constraintWidget.a0 == Call.Parameters.DEFAULT_CAMERA_ZOOM && constraintWidget.y(1)) || (dimensionBehaviour4 == dimensionBehaviour && constraintWidget.u == 1 && constraintWidget.z(1, constraintWidget.p()));
        return (constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM && (z || z2)) || (z && z2);
    }

    public static void b(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        char c2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.o) {
            return;
        }
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.E() && a(constraintWidget)) {
            ConstraintWidgetContainer.d0(constraintWidget, measurer, new BasicMeasure.Measure());
        }
        ConstraintAnchor constraintAnchorN = constraintWidget.n(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor constraintAnchorN2 = constraintWidget.n(ConstraintAnchor.Type.RIGHT);
        int iD = constraintAnchorN.d();
        int iD2 = constraintAnchorN2.d();
        HashSet<ConstraintAnchor> hashSet = constraintAnchorN.f11480a;
        if (hashSet != null && constraintAnchorN.f11482c) {
            for (ConstraintAnchor constraintAnchor5 : hashSet) {
                ConstraintWidget constraintWidget2 = constraintAnchor5.d;
                int i3 = i2 + 1;
                boolean zA = a(constraintWidget2);
                ConstraintAnchor constraintAnchor6 = constraintWidget2.L;
                ConstraintAnchor constraintAnchor7 = constraintWidget2.N;
                if (constraintWidget2.E() && zA) {
                    c2 = 0;
                    ConstraintWidgetContainer.d0(constraintWidget2, measurer, new BasicMeasure.Measure());
                } else {
                    c2 = 0;
                }
                char c3 = ((constraintAnchor5 == constraintAnchor6 && (constraintAnchor4 = constraintAnchor7.f11484f) != null && constraintAnchor4.f11482c) || (constraintAnchor5 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor6.f11484f) != null && constraintAnchor3.f11482c)) ? (char) 1 : c2;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.W[c2];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour != dimensionBehaviour2 || zA) {
                    if (!constraintWidget2.E()) {
                        if (constraintAnchor5 == constraintAnchor6 && constraintAnchor7.f11484f == null) {
                            int iE = constraintAnchor6.e() + iD;
                            constraintWidget2.P(iE, constraintWidget2.v() + iE);
                            b(i3, constraintWidget2, measurer, z);
                        } else if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.f11484f == null) {
                            int iE2 = iD - constraintAnchor7.e();
                            constraintWidget2.P(iE2 - constraintWidget2.v(), iE2);
                            b(i3, constraintWidget2, measurer, z);
                        } else if (c3 != 0 && !constraintWidget2.C()) {
                            c(i3, constraintWidget2, measurer, z);
                        }
                    }
                } else if (dimensionBehaviour == dimensionBehaviour2 && constraintWidget2.x >= 0 && constraintWidget2.w >= 0 && (constraintWidget2.k0 == 8 || (constraintWidget2.t == 0 && constraintWidget2.a0 == Call.Parameters.DEFAULT_CAMERA_ZOOM))) {
                    if (!constraintWidget2.C() && !constraintWidget2.I && c3 != 0 && !constraintWidget2.C()) {
                        d(i3, constraintWidget, measurer, constraintWidget2, z);
                    }
                }
            }
        }
        if (constraintWidget instanceof Guideline) {
            return;
        }
        HashSet<ConstraintAnchor> hashSet2 = constraintAnchorN2.f11480a;
        if (hashSet2 != null && constraintAnchorN2.f11482c) {
            for (ConstraintAnchor constraintAnchor8 : hashSet2) {
                ConstraintWidget constraintWidget3 = constraintAnchor8.d;
                int i4 = i2 + 1;
                boolean zA2 = a(constraintWidget3);
                ConstraintAnchor constraintAnchor9 = constraintWidget3.L;
                ConstraintAnchor constraintAnchor10 = constraintWidget3.N;
                if (constraintWidget3.E() && zA2) {
                    ConstraintWidgetContainer.d0(constraintWidget3, measurer, new BasicMeasure.Measure());
                }
                boolean z2 = (constraintAnchor8 == constraintAnchor9 && (constraintAnchor2 = constraintAnchor10.f11484f) != null && constraintAnchor2.f11482c) || (constraintAnchor8 == constraintAnchor10 && (constraintAnchor = constraintAnchor9.f11484f) != null && constraintAnchor.f11482c);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget3.W[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour3 != dimensionBehaviour4 || zA2) {
                    if (!constraintWidget3.E()) {
                        if (constraintAnchor8 == constraintAnchor9 && constraintAnchor10.f11484f == null) {
                            int iE3 = constraintAnchor9.e() + iD2;
                            constraintWidget3.P(iE3, constraintWidget3.v() + iE3);
                            b(i4, constraintWidget3, measurer, z);
                        } else if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.f11484f == null) {
                            int iE4 = iD2 - constraintAnchor10.e();
                            constraintWidget3.P(iE4 - constraintWidget3.v(), iE4);
                            b(i4, constraintWidget3, measurer, z);
                        } else if (z2 && !constraintWidget3.C()) {
                            c(i4, constraintWidget3, measurer, z);
                        }
                    }
                } else if (dimensionBehaviour3 == dimensionBehaviour4 && constraintWidget3.x >= 0 && constraintWidget3.w >= 0) {
                    if (constraintWidget3.k0 == 8 || (constraintWidget3.t == 0 && constraintWidget3.a0 == Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                        if (!constraintWidget3.C() && !constraintWidget3.I && z2 && !constraintWidget3.C()) {
                            d(i4, constraintWidget, measurer, constraintWidget3, z);
                        }
                    }
                }
            }
        }
        constraintWidget.o = true;
    }

    public static void c(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, boolean z) {
        float f2 = constraintWidget.h0;
        ConstraintAnchor constraintAnchor = constraintWidget.L;
        int iD = constraintAnchor.f11484f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget.N;
        int iD2 = constraintAnchor2.f11484f.d();
        int iE = constraintAnchor.e() + iD;
        int iE2 = iD2 - constraintAnchor2.e();
        if (iD == iD2) {
            f2 = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iV = constraintWidget.v();
        int i3 = (iD2 - iD) - iV;
        if (iD > iD2) {
            i3 = (iD - iD2) - iV;
        }
        int i4 = ((int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3)) + iD;
        int i5 = i4 + iV;
        if (iD > iD2) {
            i5 = i4 - iV;
        }
        constraintWidget.P(i4, i5);
        b(i2 + 1, constraintWidget, measurer, z);
    }

    public static void d(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2, boolean z) {
        float f2 = constraintWidget2.h0;
        ConstraintAnchor constraintAnchor = constraintWidget2.L;
        int iE = constraintAnchor.e() + constraintAnchor.f11484f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.N;
        int iD = constraintAnchor2.f11484f.d() - constraintAnchor2.e();
        if (iD >= iE) {
            int iV = constraintWidget2.v();
            if (constraintWidget2.k0 != 8) {
                int i3 = constraintWidget2.t;
                if (i3 == 2) {
                    iV = (int) (constraintWidget2.h0 * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.v() : constraintWidget.X.v()));
                } else if (i3 == 0) {
                    iV = iD - iE;
                }
                iV = Math.max(constraintWidget2.w, iV);
                int i4 = constraintWidget2.x;
                if (i4 > 0) {
                    iV = Math.min(i4, iV);
                }
            }
            int i5 = iE + ((int) ((f2 * ((iD - iE) - iV)) + 0.5f));
            constraintWidget2.P(i5, iV + i5);
            b(i2 + 1, constraintWidget2, measurer, z);
        }
    }

    public static void e(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        float f2 = constraintWidget.i0;
        ConstraintAnchor constraintAnchor = constraintWidget.M;
        int iD = constraintAnchor.f11484f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget.O;
        int iD2 = constraintAnchor2.f11484f.d();
        int iE = constraintAnchor.e() + iD;
        int iE2 = iD2 - constraintAnchor2.e();
        if (iD == iD2) {
            f2 = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iP = constraintWidget.p();
        int i3 = (iD2 - iD) - iP;
        if (iD > iD2) {
            i3 = (iD - iD2) - iP;
        }
        int i4 = (int) (i3 > 0 ? (f2 * i3) + 0.5f : f2 * i3);
        int i5 = iD + i4;
        int i6 = i5 + iP;
        if (iD > iD2) {
            i5 = iD - i4;
            i6 = i5 - iP;
        }
        constraintWidget.Q(i5, i6);
        g(i2 + 1, constraintWidget, measurer);
    }

    public static void f(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer, ConstraintWidget constraintWidget2) {
        float f2 = constraintWidget2.i0;
        ConstraintAnchor constraintAnchor = constraintWidget2.M;
        int iE = constraintAnchor.e() + constraintAnchor.f11484f.d();
        ConstraintAnchor constraintAnchor2 = constraintWidget2.O;
        int iD = constraintAnchor2.f11484f.d() - constraintAnchor2.e();
        if (iD >= iE) {
            int iP = constraintWidget2.p();
            if (constraintWidget2.k0 != 8) {
                int i3 = constraintWidget2.u;
                if (i3 == 2) {
                    iP = (int) (f2 * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.p() : constraintWidget.X.p()));
                } else if (i3 == 0) {
                    iP = iD - iE;
                }
                iP = Math.max(constraintWidget2.z, iP);
                int i4 = constraintWidget2.A;
                if (i4 > 0) {
                    iP = Math.min(i4, iP);
                }
            }
            int i5 = iE + ((int) ((f2 * ((iD - iE) - iP)) + 0.5f));
            constraintWidget2.Q(i5, iP + i5);
            g(i2 + 1, constraintWidget2, measurer);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    public static void g(int i2, ConstraintWidget constraintWidget, BasicMeasure.Measurer measurer) {
        boolean z;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        float f2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.p) {
            return;
        }
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.E() && a(constraintWidget)) {
            ConstraintWidgetContainer.d0(constraintWidget, measurer, new BasicMeasure.Measure());
        }
        ConstraintAnchor constraintAnchorN = constraintWidget.n(ConstraintAnchor.Type.TOP);
        ConstraintAnchor constraintAnchorN2 = constraintWidget.n(ConstraintAnchor.Type.BOTTOM);
        int iD = constraintAnchorN.d();
        int iD2 = constraintAnchorN2.d();
        HashSet<ConstraintAnchor> hashSet = constraintAnchorN.f11480a;
        char c2 = 1;
        if (hashSet != null && constraintAnchorN.f11482c) {
            for (ConstraintAnchor constraintAnchor5 : hashSet) {
                ConstraintWidget constraintWidget2 = constraintAnchor5.d;
                int i3 = i2 + 1;
                boolean zA = a(constraintWidget2);
                ConstraintAnchor constraintAnchor6 = constraintWidget2.M;
                ConstraintAnchor constraintAnchor7 = constraintWidget2.O;
                if (constraintWidget2.E() && zA) {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    ConstraintWidgetContainer.d0(constraintWidget2, measurer, new BasicMeasure.Measure());
                } else {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                char c3 = ((constraintAnchor5 == constraintAnchor6 && (constraintAnchor4 = constraintAnchor7.f11484f) != null && constraintAnchor4.f11482c) || (constraintAnchor5 == constraintAnchor7 && (constraintAnchor3 = constraintAnchor6.f11484f) != null && constraintAnchor3.f11482c)) ? c2 : (char) 0;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.W[c2];
                char c4 = c2;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour != dimensionBehaviour2 || zA) {
                    if (!constraintWidget2.E()) {
                        if (constraintAnchor5 == constraintAnchor6 && constraintAnchor7.f11484f == null) {
                            int iE = constraintAnchor6.e() + iD;
                            constraintWidget2.Q(iE, constraintWidget2.p() + iE);
                            g(i3, constraintWidget2, measurer);
                        } else if (constraintAnchor5 == constraintAnchor7 && constraintAnchor6.f11484f == null) {
                            int iE2 = iD - constraintAnchor7.e();
                            constraintWidget2.Q(iE2 - constraintWidget2.p(), iE2);
                            g(i3, constraintWidget2, measurer);
                        } else if (c3 != 0 && !constraintWidget2.D()) {
                            e(i3, constraintWidget2, measurer);
                        }
                    }
                } else if (dimensionBehaviour == dimensionBehaviour2 && constraintWidget2.A >= 0 && constraintWidget2.z >= 0 && ((constraintWidget2.k0 == 8 || (constraintWidget2.u == 0 && constraintWidget2.a0 == f2)) && !constraintWidget2.D() && !constraintWidget2.I && c3 != 0 && !constraintWidget2.D())) {
                    f(i3, constraintWidget, measurer, constraintWidget2);
                }
                c2 = c4;
            }
        }
        ?? r17 = c2;
        if (constraintWidget instanceof Guideline) {
            return;
        }
        HashSet<ConstraintAnchor> hashSet2 = constraintAnchorN2.f11480a;
        if (hashSet2 != null && constraintAnchorN2.f11482c) {
            for (ConstraintAnchor constraintAnchor8 : hashSet2) {
                ConstraintWidget constraintWidget3 = constraintAnchor8.d;
                int i4 = i2 + 1;
                boolean zA2 = a(constraintWidget3);
                ConstraintAnchor constraintAnchor9 = constraintWidget3.M;
                ConstraintAnchor constraintAnchor10 = constraintWidget3.O;
                if (constraintWidget3.E() && zA2) {
                    ConstraintWidgetContainer.d0(constraintWidget3, measurer, new BasicMeasure.Measure());
                }
                ?? r11 = ((constraintAnchor8 == constraintAnchor9 && (constraintAnchor2 = constraintAnchor10.f11484f) != null && constraintAnchor2.f11482c) || (constraintAnchor8 == constraintAnchor10 && (constraintAnchor = constraintAnchor9.f11484f) != null && constraintAnchor.f11482c)) ? r17 == true ? 1 : 0 : 0;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = constraintWidget3.W[r17 == true ? 1 : 0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour3 != dimensionBehaviour4 || zA2) {
                    if (!constraintWidget3.E()) {
                        if (constraintAnchor8 == constraintAnchor9 && constraintAnchor10.f11484f == null) {
                            int iE3 = constraintAnchor9.e() + iD2;
                            constraintWidget3.Q(iE3, constraintWidget3.p() + iE3);
                            g(i4, constraintWidget3, measurer);
                        } else if (constraintAnchor8 == constraintAnchor10 && constraintAnchor9.f11484f == null) {
                            int iE4 = iD2 - constraintAnchor10.e();
                            constraintWidget3.Q(iE4 - constraintWidget3.p(), iE4);
                            g(i4, constraintWidget3, measurer);
                        } else if (r11 != 0 && !constraintWidget3.D()) {
                            e(i4, constraintWidget3, measurer);
                        }
                    }
                } else if (dimensionBehaviour3 == dimensionBehaviour4 && constraintWidget3.A >= 0 && constraintWidget3.z >= 0 && (constraintWidget3.k0 == 8 || (constraintWidget3.u == 0 && constraintWidget3.a0 == Call.Parameters.DEFAULT_CAMERA_ZOOM))) {
                    if (!constraintWidget3.D() && !constraintWidget3.I && r11 != 0 && !constraintWidget3.D()) {
                        f(i4, constraintWidget, measurer, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor constraintAnchorN3 = constraintWidget.n(ConstraintAnchor.Type.BASELINE);
        if (constraintAnchorN3.f11480a != null && constraintAnchorN3.f11482c) {
            int iD3 = constraintAnchorN3.d();
            for (ConstraintAnchor constraintAnchor11 : constraintAnchorN3.f11480a) {
                ConstraintWidget constraintWidget4 = constraintAnchor11.d;
                int i5 = i2 + 1;
                boolean zA3 = a(constraintWidget4);
                ConstraintAnchor constraintAnchor12 = constraintWidget4.P;
                if (constraintWidget4.E() && zA3) {
                    ConstraintWidgetContainer.d0(constraintWidget4, measurer, new BasicMeasure.Measure());
                }
                if (constraintWidget4.W[r17 == true ? 1 : 0] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || zA3) {
                    if (!constraintWidget4.E()) {
                        if (constraintAnchor11 == constraintAnchor12) {
                            int iE5 = constraintAnchor11.e() + iD3;
                            if (constraintWidget4.G) {
                                int i6 = iE5 - constraintWidget4.e0;
                                int i7 = constraintWidget4.Z + i6;
                                constraintWidget4.d0 = i6;
                                constraintWidget4.M.l(i6);
                                constraintWidget4.O.l(i7);
                                constraintAnchor12.l(iE5);
                                z = r17 == true ? 1 : 0;
                                constraintWidget4.n = z;
                            } else {
                                z = r17 == true ? 1 : 0;
                            }
                            g(i5, constraintWidget4, measurer);
                        }
                        r17 = z;
                    }
                }
                z = r17 == true ? 1 : 0;
                r17 = z;
            }
        }
        constraintWidget.p = r17;
    }
}
