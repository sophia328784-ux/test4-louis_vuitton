package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import defpackage.cj;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ChainRun extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f11519k;
    public int l;

    public ChainRun(ConstraintWidget constraintWidget, int i2) {
        ConstraintWidget constraintWidget2;
        super(constraintWidget);
        ArrayList<WidgetRun> arrayList = new ArrayList();
        this.f11519k = arrayList;
        this.f11551f = i2;
        ConstraintWidget constraintWidget3 = this.f11548b;
        ConstraintWidget constraintWidgetR = constraintWidget3.r(i2);
        while (true) {
            constraintWidget2 = constraintWidget3;
            constraintWidget3 = constraintWidgetR;
            if (constraintWidget3 == null) {
                break;
            } else {
                constraintWidgetR = constraintWidget3.r(this.f11551f);
            }
        }
        this.f11548b = constraintWidget2;
        int i3 = this.f11551f;
        arrayList.add(i3 == 0 ? constraintWidget2.d : i3 == 1 ? constraintWidget2.f11490e : null);
        ConstraintWidget constraintWidgetQ = constraintWidget2.q(this.f11551f);
        while (constraintWidgetQ != null) {
            int i4 = this.f11551f;
            arrayList.add(i4 == 0 ? constraintWidgetQ.d : i4 == 1 ? constraintWidgetQ.f11490e : null);
            constraintWidgetQ = constraintWidgetQ.q(this.f11551f);
        }
        for (WidgetRun widgetRun : arrayList) {
            int i5 = this.f11551f;
            if (i5 == 0) {
                widgetRun.f11548b.f11488b = this;
            } else if (i5 == 1) {
                widgetRun.f11548b.f11489c = this;
            }
        }
        if (this.f11551f == 0 && ((ConstraintWidgetContainer) this.f11548b.X).B0 && arrayList.size() > 1) {
            this.f11548b = ((WidgetRun) cj.c(1, arrayList)).f11548b;
        }
        int i6 = this.f11551f;
        ConstraintWidget constraintWidget4 = this.f11548b;
        this.l = i6 == 0 ? constraintWidget4.n0 : constraintWidget4.o0;
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00ea A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00de  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e2 A[ADDED_TO_REGION] */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        int i2;
        int i3;
        boolean z;
        float f2;
        float f3;
        int i4;
        int i5;
        int i6;
        int i7;
        float f4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f5;
        DependencyNode dependencyNode = this.f11552h;
        if (dependencyNode.f11533j) {
            DependencyNode dependencyNode2 = this.f11553i;
            if (dependencyNode2.f11533j) {
                ConstraintWidget constraintWidget = this.f11548b.X;
                boolean z2 = constraintWidget instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) constraintWidget).B0 : false;
                int i13 = dependencyNode2.g - dependencyNode.g;
                ArrayList arrayList = this.f11519k;
                int size = arrayList.size();
                int i14 = 0;
                while (true) {
                    i2 = -1;
                    i3 = 8;
                    if (i14 >= size) {
                        i14 = -1;
                        break;
                    } else if (((WidgetRun) arrayList.get(i14)).f11548b.k0 != 8) {
                        break;
                    } else {
                        i14++;
                    }
                }
                int i15 = size - 1;
                for (int i16 = i15; i16 >= 0; i16--) {
                    if (((WidgetRun) arrayList.get(i16)).f11548b.k0 != 8) {
                        i2 = i16;
                        break;
                    }
                }
                int i17 = 0;
                while (true) {
                    if (i17 >= 2) {
                        z = z2;
                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        f3 = 0.0f;
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        break;
                    }
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    i5 = 0;
                    int i18 = 0;
                    int i19 = 0;
                    int i20 = 0;
                    f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    while (i18 < size) {
                        WidgetRun widgetRun = (WidgetRun) arrayList.get(i18);
                        ConstraintWidget constraintWidget2 = widgetRun.f11548b;
                        boolean z3 = z2;
                        if (constraintWidget2.k0 != i3) {
                            i20++;
                            if (i18 > 0 && i18 >= i14) {
                                i5 += widgetRun.f11552h.f11530f;
                            }
                            DimensionDependency dimensionDependency = widgetRun.f11550e;
                            int i21 = dimensionDependency.g;
                            int i22 = i5;
                            boolean z4 = widgetRun.d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                            if (z4) {
                                int i23 = this.f11551f;
                                if (i23 == 0 && !constraintWidget2.d.f11550e.f11533j) {
                                    return;
                                }
                                if (i23 == 1 && !constraintWidget2.f11490e.f11550e.f11533j) {
                                    return;
                                }
                            } else {
                                if (widgetRun.f11547a == 1 && i17 == 0) {
                                    i12 = dimensionDependency.m;
                                    i19++;
                                } else {
                                    if (dimensionDependency.f11533j) {
                                        i12 = i21;
                                    }
                                    if (z4) {
                                        i5 = i22 + i12;
                                    } else {
                                        i19++;
                                        f5 = constraintWidget2.p0[this.f11551f];
                                        if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            f3 += f5;
                                        }
                                        i5 = i22;
                                    }
                                    if (i18 >= i15 && i18 < i2) {
                                        i5 += -widgetRun.f11553i.f11530f;
                                    }
                                }
                                z4 = true;
                                if (z4) {
                                    i19++;
                                    f5 = constraintWidget2.p0[this.f11551f];
                                    if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                        f3 += f5;
                                    }
                                    i5 = i22;
                                } else {
                                    i5 = i22 + i12;
                                }
                                if (i18 >= i15) {
                                }
                            }
                            i12 = i21;
                            if (z4) {
                                i19++;
                                f5 = constraintWidget2.p0[this.f11551f];
                                if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f3 += f5;
                                }
                                i5 = i22;
                            } else {
                                i5 = i22 + i12;
                            }
                            if (i18 >= i15) {
                            }
                        }
                        i18++;
                        z2 = z3;
                        i3 = 8;
                    }
                    z = z2;
                    if (i5 < i13 || i19 == 0) {
                        i4 = i19;
                        i6 = i20;
                        break;
                    } else {
                        i17++;
                        z2 = z;
                        i3 = 8;
                    }
                }
                int i24 = dependencyNode.g;
                if (z) {
                    i24 = dependencyNode2.g;
                }
                float f6 = 0.5f;
                if (i5 > i13) {
                    i24 = z ? i24 + ((int) (((i5 - i13) / 2.0f) + 0.5f)) : i24 - ((int) (((i5 - i13) / 2.0f) + 0.5f));
                }
                if (i4 > 0) {
                    float f7 = i13 - i5;
                    int i25 = (int) ((f7 / i4) + 0.5f);
                    int i26 = 0;
                    int i27 = 0;
                    while (i26 < size) {
                        float f8 = f6;
                        WidgetRun widgetRun2 = (WidgetRun) arrayList.get(i26);
                        int i28 = i24;
                        ConstraintWidget constraintWidget3 = widgetRun2.f11548b;
                        int i29 = i4;
                        DimensionDependency dimensionDependency2 = widgetRun2.f11550e;
                        int i30 = i5;
                        float f9 = f7;
                        if (constraintWidget3.k0 != 8 && widgetRun2.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !dimensionDependency2.f11533j) {
                            int i31 = f3 > f2 ? (int) (((constraintWidget3.p0[this.f11551f] * f9) / f3) + f8) : i25;
                            if (this.f11551f == 0) {
                                i10 = constraintWidget3.x;
                                i11 = constraintWidget3.w;
                            } else {
                                i10 = constraintWidget3.A;
                                i11 = constraintWidget3.z;
                            }
                            int iMax = Math.max(i11, widgetRun2.f11547a == 1 ? Math.min(i31, dimensionDependency2.m) : i31);
                            if (i10 > 0) {
                                iMax = Math.min(i10, iMax);
                            }
                            if (iMax != i31) {
                                i27++;
                                i31 = iMax;
                            }
                            dimensionDependency2.d(i31);
                        }
                        i26++;
                        i24 = i28;
                        f6 = f8;
                        i4 = i29;
                        i5 = i30;
                        f7 = f9;
                        i25 = i25;
                    }
                    i7 = i24;
                    f4 = f6;
                    int i32 = i4;
                    int i33 = i5;
                    if (i27 > 0) {
                        i4 = i32 - i27;
                        i5 = 0;
                        for (int i34 = 0; i34 < size; i34++) {
                            WidgetRun widgetRun3 = (WidgetRun) arrayList.get(i34);
                            if (widgetRun3.f11548b.k0 != 8) {
                                if (i34 > 0 && i34 >= i14) {
                                    i5 += widgetRun3.f11552h.f11530f;
                                }
                                i5 += widgetRun3.f11550e.g;
                                if (i34 < i15 && i34 < i2) {
                                    i5 += -widgetRun3.f11553i.f11530f;
                                }
                            }
                        }
                    } else {
                        i4 = i32;
                        i5 = i33;
                    }
                    i9 = 2;
                    if (this.l == 2 && i27 == 0) {
                        i8 = 0;
                        this.l = 0;
                    } else {
                        i8 = 0;
                    }
                } else {
                    i7 = i24;
                    f4 = 0.5f;
                    i8 = 0;
                    i9 = 2;
                }
                if (i5 > i13) {
                    this.l = i9;
                }
                if (i6 > 0 && i4 == 0 && i14 == i2) {
                    this.l = i9;
                }
                int i35 = this.l;
                if (i35 == 1) {
                    int i36 = i6 > 1 ? (i13 - i5) / (i6 - 1) : i6 == 1 ? (i13 - i5) / 2 : i8;
                    if (i4 > 0) {
                        i36 = i8;
                    }
                    int i37 = i7;
                    for (int i38 = i8; i38 < size; i38++) {
                        WidgetRun widgetRun4 = (WidgetRun) arrayList.get(z ? size - (i38 + 1) : i38);
                        ConstraintWidget constraintWidget4 = widgetRun4.f11548b;
                        DependencyNode dependencyNode3 = widgetRun4.f11553i;
                        DependencyNode dependencyNode4 = widgetRun4.f11552h;
                        if (constraintWidget4.k0 == 8) {
                            dependencyNode4.d(i37);
                            dependencyNode3.d(i37);
                        } else {
                            if (i38 > 0) {
                                i37 = z ? i37 - i36 : i37 + i36;
                            }
                            if (i38 > 0 && i38 >= i14) {
                                i37 = z ? i37 - dependencyNode4.f11530f : i37 + dependencyNode4.f11530f;
                            }
                            if (z) {
                                dependencyNode3.d(i37);
                            } else {
                                dependencyNode4.d(i37);
                            }
                            DimensionDependency dimensionDependency3 = widgetRun4.f11550e;
                            int i39 = dimensionDependency3.g;
                            if (widgetRun4.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.f11547a == 1) {
                                i39 = dimensionDependency3.m;
                            }
                            i37 = z ? i37 - i39 : i37 + i39;
                            if (z) {
                                dependencyNode4.d(i37);
                            } else {
                                dependencyNode3.d(i37);
                            }
                            widgetRun4.g = true;
                            if (i38 < i15 && i38 < i2) {
                                i37 = z ? i37 - (-dependencyNode3.f11530f) : i37 + (-dependencyNode3.f11530f);
                            }
                        }
                    }
                    return;
                }
                if (i35 == 0) {
                    int i40 = (i13 - i5) / (i6 + 1);
                    if (i4 > 0) {
                        i40 = i8;
                    }
                    int i41 = i7;
                    for (int i42 = i8; i42 < size; i42++) {
                        WidgetRun widgetRun5 = (WidgetRun) arrayList.get(z ? size - (i42 + 1) : i42);
                        ConstraintWidget constraintWidget5 = widgetRun5.f11548b;
                        DependencyNode dependencyNode5 = widgetRun5.f11553i;
                        DependencyNode dependencyNode6 = widgetRun5.f11552h;
                        if (constraintWidget5.k0 == 8) {
                            dependencyNode6.d(i41);
                            dependencyNode5.d(i41);
                        } else {
                            int i43 = z ? i41 - i40 : i41 + i40;
                            if (i42 > 0 && i42 >= i14) {
                                i43 = z ? i43 - dependencyNode6.f11530f : i43 + dependencyNode6.f11530f;
                            }
                            if (z) {
                                dependencyNode5.d(i43);
                            } else {
                                dependencyNode6.d(i43);
                            }
                            DimensionDependency dimensionDependency4 = widgetRun5.f11550e;
                            int iMin = dimensionDependency4.g;
                            if (widgetRun5.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.f11547a == 1) {
                                iMin = Math.min(iMin, dimensionDependency4.m);
                            }
                            i41 = z ? i43 - iMin : i43 + iMin;
                            if (z) {
                                dependencyNode6.d(i41);
                            } else {
                                dependencyNode5.d(i41);
                            }
                            if (i42 < i15 && i42 < i2) {
                                i41 = z ? i41 - (-dependencyNode5.f11530f) : i41 + (-dependencyNode5.f11530f);
                            }
                        }
                    }
                    return;
                }
                if (i35 == 2) {
                    int i44 = this.f11551f;
                    ConstraintWidget constraintWidget6 = this.f11548b;
                    float f10 = i44 == 0 ? constraintWidget6.h0 : constraintWidget6.i0;
                    if (z) {
                        f10 = 1.0f - f10;
                    }
                    int i45 = (int) (((i13 - i5) * f10) + f4);
                    if (i45 < 0 || i4 > 0) {
                        i45 = i8;
                    }
                    int i46 = z ? i7 - i45 : i7 + i45;
                    for (int i47 = i8; i47 < size; i47++) {
                        WidgetRun widgetRun6 = (WidgetRun) arrayList.get(z ? size - (i47 + 1) : i47);
                        ConstraintWidget constraintWidget7 = widgetRun6.f11548b;
                        DependencyNode dependencyNode7 = widgetRun6.f11553i;
                        DependencyNode dependencyNode8 = widgetRun6.f11552h;
                        if (constraintWidget7.k0 == 8) {
                            dependencyNode8.d(i46);
                            dependencyNode7.d(i46);
                        } else {
                            if (i47 > 0 && i47 >= i14) {
                                i46 = z ? i46 - dependencyNode8.f11530f : i46 + dependencyNode8.f11530f;
                            }
                            if (z) {
                                dependencyNode7.d(i46);
                            } else {
                                dependencyNode8.d(i46);
                            }
                            DimensionDependency dimensionDependency5 = widgetRun6.f11550e;
                            int i48 = dimensionDependency5.g;
                            if (widgetRun6.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.f11547a == 1) {
                                i48 = dimensionDependency5.m;
                            }
                            i46 = z ? i46 - i48 : i46 + i48;
                            if (z) {
                                dependencyNode8.d(i46);
                            } else {
                                dependencyNode7.d(i46);
                            }
                            if (i47 < i15 && i47 < i2) {
                                i46 = z ? i46 - (-dependencyNode7.f11530f) : i46 + (-dependencyNode7.f11530f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ArrayList arrayList = this.f11519k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(0)).f11548b;
        ConstraintWidget constraintWidget2 = ((WidgetRun) arrayList.get(size - 1)).f11548b;
        int i2 = this.f11551f;
        DependencyNode dependencyNode = this.f11553i;
        DependencyNode dependencyNode2 = this.f11552h;
        if (i2 == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.L;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.N;
            DependencyNode dependencyNodeI = WidgetRun.i(constraintAnchor, 0);
            int iE = constraintAnchor.e();
            ConstraintWidget constraintWidgetM = m();
            if (constraintWidgetM != null) {
                iE = constraintWidgetM.L.e();
            }
            if (dependencyNodeI != null) {
                WidgetRun.b(dependencyNode2, dependencyNodeI, iE);
            }
            DependencyNode dependencyNodeI2 = WidgetRun.i(constraintAnchor2, 0);
            int iE2 = constraintAnchor2.e();
            ConstraintWidget constraintWidgetN = n();
            if (constraintWidgetN != null) {
                iE2 = constraintWidgetN.N.e();
            }
            if (dependencyNodeI2 != null) {
                WidgetRun.b(dependencyNode, dependencyNodeI2, -iE2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.M;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.O;
            DependencyNode dependencyNodeI3 = WidgetRun.i(constraintAnchor3, 1);
            int iE3 = constraintAnchor3.e();
            ConstraintWidget constraintWidgetM2 = m();
            if (constraintWidgetM2 != null) {
                iE3 = constraintWidgetM2.M.e();
            }
            if (dependencyNodeI3 != null) {
                WidgetRun.b(dependencyNode2, dependencyNodeI3, iE3);
            }
            DependencyNode dependencyNodeI4 = WidgetRun.i(constraintAnchor4, 1);
            int iE4 = constraintAnchor4.e();
            ConstraintWidget constraintWidgetN2 = n();
            if (constraintWidgetN2 != null) {
                iE4 = constraintWidgetN2.O.e();
            }
            if (dependencyNodeI4 != null) {
                WidgetRun.b(dependencyNode, dependencyNodeI4, -iE4);
            }
        }
        dependencyNode2.f11526a = this;
        dependencyNode.f11526a = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f11519k;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((WidgetRun) arrayList.get(i2)).e();
            i2++;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f11549c = null;
        Iterator it = this.f11519k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final long j() {
        ArrayList arrayList = this.f11519k;
        int size = arrayList.size();
        long j2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            WidgetRun widgetRun = (WidgetRun) arrayList.get(i2);
            j2 = ((long) widgetRun.f11553i.f11530f) + widgetRun.j() + j2 + ((long) widgetRun.f11552h.f11530f);
        }
        return j2;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        ArrayList arrayList = this.f11519k;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!((WidgetRun) arrayList.get(i2)).k()) {
                return false;
            }
        }
        return true;
    }

    public final ConstraintWidget m() {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f11519k;
            if (i2 >= arrayList.size()) {
                return null;
            }
            ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(i2)).f11548b;
            if (constraintWidget.k0 != 8) {
                return constraintWidget;
            }
            i2++;
        }
    }

    public final ConstraintWidget n() {
        ArrayList arrayList = this.f11519k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(size)).f11548b;
            if (constraintWidget.k0 != 8) {
                return constraintWidget;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f11551f == 0 ? "horizontal : " : "vertical : ");
        for (WidgetRun widgetRun : this.f11519k) {
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }
}
