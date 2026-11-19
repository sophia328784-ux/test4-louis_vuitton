package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f11536k = new int[2];

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11537a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f11537a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11537a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11537a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.f11552h.f11529e = DependencyNode.Type.LEFT;
        this.f11553i.f11529e = DependencyNode.Type.RIGHT;
        this.f11551f = 0;
    }

    public static void m(int[] iArr, int i2, int i3, int i4, int i5, float f2, int i6) {
        int i7 = i3 - i2;
        int i8 = i5 - i4;
        if (i6 != -1) {
            if (i6 == 0) {
                iArr[0] = (int) ((i8 * f2) + 0.5f);
                iArr[1] = i8;
                return;
            } else {
                if (i6 != 1) {
                    return;
                }
                iArr[0] = i7;
                iArr[1] = (int) ((i7 * f2) + 0.5f);
                return;
            }
        }
        int i9 = (int) ((i8 * f2) + 0.5f);
        int i10 = (int) ((i7 / f2) + 0.5f);
        if (i9 <= i7) {
            iArr[0] = i9;
            iArr[1] = i8;
        } else if (i10 <= i8) {
            iArr[0] = i7;
            iArr[1] = i10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0262  */
    /* JADX WARN: Code duplicated, block: B:117:0x0271  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        int iG;
        int i2;
        int iG2;
        float f2;
        float f3;
        float f4;
        int i3;
        if (AnonymousClass1.f11537a[this.f11554j.ordinal()] == 3) {
            ConstraintWidget constraintWidget = this.f11548b;
            l(constraintWidget.L, constraintWidget.N, 0);
            return;
        }
        DimensionDependency dimensionDependency = this.f11550e;
        boolean z = dimensionDependency.f11533j;
        DependencyNode dependencyNode = this.f11552h;
        DependencyNode dependencyNode2 = this.f11553i;
        if (!z && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f11548b;
            int i4 = constraintWidget2.t;
            if (i4 == 2) {
                ConstraintWidget constraintWidget3 = constraintWidget2.X;
                if (constraintWidget3 != null) {
                    DimensionDependency dimensionDependency2 = constraintWidget3.d.f11550e;
                    if (dimensionDependency2.f11533j) {
                        dimensionDependency.d((int) ((dimensionDependency2.g * constraintWidget2.y) + 0.5f));
                    }
                }
            } else if (i4 == 3) {
                int i5 = constraintWidget2.u;
                if (i5 == 0 || i5 == 3) {
                    VerticalWidgetRun verticalWidgetRun = constraintWidget2.f11490e;
                    DependencyNode dependencyNode3 = verticalWidgetRun.f11552h;
                    DependencyNode dependencyNode4 = verticalWidgetRun.f11553i;
                    boolean z2 = constraintWidget2.L.f11484f != null;
                    boolean z3 = constraintWidget2.M.f11484f != null;
                    boolean z4 = constraintWidget2.N.f11484f != null;
                    boolean z5 = constraintWidget2.O.f11484f != null;
                    int i6 = constraintWidget2.b0;
                    if (z2 && z3 && z4 && z5) {
                        float f5 = constraintWidget2.a0;
                        boolean z6 = dependencyNode3.f11533j;
                        ArrayList arrayList = dependencyNode3.l;
                        int[] iArr = f11536k;
                        if (z6 && dependencyNode4.f11533j) {
                            if (dependencyNode.f11528c && dependencyNode2.f11528c) {
                                m(iArr, ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f11530f, ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f11530f, dependencyNode3.g + dependencyNode3.f11530f, dependencyNode4.g - dependencyNode4.f11530f, f5, i6);
                                dimensionDependency.d(iArr[0]);
                                this.f11548b.f11490e.f11550e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        if (dependencyNode.f11533j && dependencyNode2.f11533j) {
                            if (!dependencyNode3.f11528c || !dependencyNode4.f11528c) {
                                return;
                            }
                            m(iArr, dependencyNode.g + dependencyNode.f11530f, dependencyNode2.g - dependencyNode2.f11530f, ((DependencyNode) arrayList.get(0)).g + dependencyNode3.f11530f, ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f11530f, f5, i6);
                            dimensionDependency.d(iArr[0]);
                            this.f11548b.f11490e.f11550e.d(iArr[1]);
                        }
                        if (!dependencyNode.f11528c || !dependencyNode2.f11528c || !dependencyNode3.f11528c || !dependencyNode4.f11528c) {
                            return;
                        }
                        m(iArr, ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f11530f, ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f11530f, ((DependencyNode) arrayList.get(0)).g + dependencyNode3.f11530f, ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f11530f, f5, i6);
                        dimensionDependency.d(iArr[0]);
                        this.f11548b.f11490e.f11550e.d(iArr[1]);
                    } else if (z2 && z4) {
                        if (!dependencyNode.f11528c || !dependencyNode2.f11528c) {
                            return;
                        }
                        float f6 = constraintWidget2.a0;
                        int i7 = ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f11530f;
                        int i8 = ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f11530f;
                        if (i6 == -1 || i6 == 0) {
                            int iG3 = g(i8 - i7, 0);
                            int i9 = (int) ((iG3 * f6) + 0.5f);
                            int iG4 = g(i9, 1);
                            if (i9 != iG4) {
                                iG3 = (int) ((iG4 / f6) + 0.5f);
                            }
                            dimensionDependency.d(iG3);
                            this.f11548b.f11490e.f11550e.d(iG4);
                        } else if (i6 == 1) {
                            int iG5 = g(i8 - i7, 0);
                            int i10 = (int) ((iG5 / f6) + 0.5f);
                            int iG6 = g(i10, 1);
                            if (i10 != iG6) {
                                iG5 = (int) ((iG6 * f6) + 0.5f);
                            }
                            dimensionDependency.d(iG5);
                            this.f11548b.f11490e.f11550e.d(iG6);
                        }
                    } else if (z3 && z5) {
                        if (!dependencyNode3.f11528c || !dependencyNode4.f11528c) {
                            return;
                        }
                        float f7 = constraintWidget2.a0;
                        int i11 = ((DependencyNode) dependencyNode3.l.get(0)).g + dependencyNode3.f11530f;
                        int i12 = ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f11530f;
                        if (i6 == -1) {
                            iG = g(i12 - i11, 1);
                            i2 = (int) ((iG / f7) + 0.5f);
                            iG2 = g(i2, 0);
                            if (i2 != iG2) {
                                iG = (int) ((iG2 * f7) + 0.5f);
                            }
                            dimensionDependency.d(iG2);
                            this.f11548b.f11490e.f11550e.d(iG);
                        } else if (i6 == 0) {
                            int iG7 = g(i12 - i11, 1);
                            int i13 = (int) ((iG7 * f7) + 0.5f);
                            int iG8 = g(i13, 0);
                            if (i13 != iG8) {
                                iG7 = (int) ((iG8 / f7) + 0.5f);
                            }
                            dimensionDependency.d(iG8);
                            this.f11548b.f11490e.f11550e.d(iG7);
                        } else if (i6 == 1) {
                            iG = g(i12 - i11, 1);
                            i2 = (int) ((iG / f7) + 0.5f);
                            iG2 = g(i2, 0);
                            if (i2 != iG2) {
                                iG = (int) ((iG2 * f7) + 0.5f);
                            }
                            dimensionDependency.d(iG2);
                            this.f11548b.f11490e.f11550e.d(iG);
                        }
                    }
                } else {
                    int i14 = constraintWidget2.b0;
                    if (i14 != -1) {
                        if (i14 == 0) {
                            f4 = constraintWidget2.f11490e.f11550e.g / constraintWidget2.a0;
                            i3 = (int) (f4 + 0.5f);
                        } else if (i14 != 1) {
                            i3 = 0;
                        } else {
                            f2 = constraintWidget2.f11490e.f11550e.g;
                            f3 = constraintWidget2.a0;
                        }
                        dimensionDependency.d(i3);
                    } else {
                        f2 = constraintWidget2.f11490e.f11550e.g;
                        f3 = constraintWidget2.a0;
                    }
                    f4 = f2 * f3;
                    i3 = (int) (f4 + 0.5f);
                    dimensionDependency.d(i3);
                }
            }
        }
        boolean z7 = dependencyNode.f11528c;
        ArrayList arrayList2 = dependencyNode.l;
        if (z7) {
            boolean z8 = dependencyNode2.f11528c;
            ArrayList arrayList3 = dependencyNode2.l;
            if (z8) {
                if (dependencyNode.f11533j && dependencyNode2.f11533j && dimensionDependency.f11533j) {
                    return;
                }
                if (!dimensionDependency.f11533j && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget4 = this.f11548b;
                    if (constraintWidget4.t == 0 && !constraintWidget4.C()) {
                        DependencyNode dependencyNode5 = (DependencyNode) arrayList2.get(0);
                        DependencyNode dependencyNode6 = (DependencyNode) arrayList3.get(0);
                        int i15 = dependencyNode5.g + dependencyNode.f11530f;
                        int i16 = dependencyNode6.g + dependencyNode2.f11530f;
                        dependencyNode.d(i15);
                        dependencyNode2.d(i16);
                        dimensionDependency.d(i16 - i15);
                        return;
                    }
                }
                if (!dimensionDependency.f11533j && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f11547a == 1 && arrayList2.size() > 0 && arrayList3.size() > 0) {
                    int iMin = Math.min((((DependencyNode) arrayList3.get(0)).g + dependencyNode2.f11530f) - (((DependencyNode) arrayList2.get(0)).g + dependencyNode.f11530f), dimensionDependency.m);
                    ConstraintWidget constraintWidget5 = this.f11548b;
                    int i17 = constraintWidget5.x;
                    int iMax = Math.max(constraintWidget5.w, iMin);
                    if (i17 > 0) {
                        iMax = Math.min(i17, iMax);
                    }
                    dimensionDependency.d(iMax);
                }
                if (dimensionDependency.f11533j) {
                    DependencyNode dependencyNode7 = (DependencyNode) arrayList2.get(0);
                    DependencyNode dependencyNode8 = (DependencyNode) arrayList3.get(0);
                    int i18 = dependencyNode7.g;
                    int i19 = dependencyNode.f11530f + i18;
                    int i20 = dependencyNode8.g;
                    int i21 = dependencyNode2.f11530f + i20;
                    float f8 = this.f11548b.h0;
                    if (dependencyNode7 == dependencyNode8) {
                        f8 = 0.5f;
                    } else {
                        i18 = i19;
                        i20 = i21;
                    }
                    dependencyNode.d((int) ((((i20 - i18) - dimensionDependency.g) * f8) + i18 + 0.5f));
                    dependencyNode2.d(dependencyNode.g + dimensionDependency.g);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget constraintWidget5 = this.f11548b;
        boolean z = constraintWidget5.f11487a;
        DimensionDependency dimensionDependency = this.f11550e;
        if (z) {
            dimensionDependency.d(constraintWidget5.v());
        }
        boolean z2 = dimensionDependency.f11533j;
        ArrayList arrayList = dimensionDependency.f11534k;
        ArrayList arrayList2 = dimensionDependency.l;
        DependencyNode dependencyNode = this.f11553i;
        DependencyNode dependencyNode2 = this.f11552h;
        if (z2) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = this.d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour3 == dimensionBehaviour4 && (constraintWidget2 = (constraintWidget = this.f11548b).X) != null && ((dimensionBehaviour = constraintWidget2.W[0]) == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour == dimensionBehaviour4)) {
                WidgetRun.b(dependencyNode2, constraintWidget2.d.f11552h, constraintWidget.L.e());
                WidgetRun.b(dependencyNode, constraintWidget2.d.f11553i, -this.f11548b.N.e());
                return;
            }
        } else {
            ConstraintWidget constraintWidget6 = this.f11548b;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = constraintWidget6.W[0];
            this.d = dimensionBehaviour5;
            if (dimensionBehaviour5 != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (dimensionBehaviour5 == dimensionBehaviour6 && (constraintWidget4 = constraintWidget6.X) != null && ((dimensionBehaviour2 = constraintWidget4.W[0]) == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == dimensionBehaviour6)) {
                    int iV = (constraintWidget4.v() - this.f11548b.L.e()) - this.f11548b.N.e();
                    WidgetRun.b(dependencyNode2, constraintWidget4.d.f11552h, this.f11548b.L.e());
                    WidgetRun.b(dependencyNode, constraintWidget4.d.f11553i, -this.f11548b.N.e());
                    dimensionDependency.d(iV);
                    return;
                }
                if (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED) {
                    dimensionDependency.d(constraintWidget6.v());
                }
            }
        }
        if (dimensionDependency.f11533j) {
            ConstraintWidget constraintWidget7 = this.f11548b;
            if (constraintWidget7.f11487a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.T;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
                if (constraintAnchor2 != null && constraintAnchorArr[1].f11484f != null) {
                    boolean zC = constraintWidget7.C();
                    ConstraintWidget constraintWidget8 = this.f11548b;
                    if (zC) {
                        dependencyNode2.f11530f = constraintWidget8.T[0].e();
                        dependencyNode.f11530f = -this.f11548b.T[1].e();
                        return;
                    }
                    DependencyNode dependencyNodeH = WidgetRun.h(constraintWidget8.T[0]);
                    if (dependencyNodeH != null) {
                        WidgetRun.b(dependencyNode2, dependencyNodeH, this.f11548b.T[0].e());
                    }
                    DependencyNode dependencyNodeH2 = WidgetRun.h(this.f11548b.T[1]);
                    if (dependencyNodeH2 != null) {
                        WidgetRun.b(dependencyNode, dependencyNodeH2, -this.f11548b.T[1].e());
                    }
                    dependencyNode2.f11527b = true;
                    dependencyNode.f11527b = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = WidgetRun.h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        WidgetRun.b(dependencyNode2, dependencyNodeH3, this.f11548b.T[0].e());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.f11484f != null) {
                    DependencyNode dependencyNodeH4 = WidgetRun.h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        WidgetRun.b(dependencyNode, dependencyNodeH4, -this.f11548b.T[1].e());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget7 instanceof Helper) || constraintWidget7.X == null || constraintWidget7.n(ConstraintAnchor.Type.CENTER).f11484f != null) {
                    return;
                }
                ConstraintWidget constraintWidget9 = this.f11548b;
                WidgetRun.b(dependencyNode2, constraintWidget9.X.d.f11552h, constraintWidget9.w());
                WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                return;
            }
        }
        if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget10 = this.f11548b;
            int i2 = constraintWidget10.t;
            if (i2 == 2) {
                ConstraintWidget constraintWidget11 = constraintWidget10.X;
                if (constraintWidget11 != null) {
                    DimensionDependency dimensionDependency2 = constraintWidget11.f11490e.f11550e;
                    arrayList2.add(dimensionDependency2);
                    dimensionDependency2.f11534k.add(dimensionDependency);
                    dimensionDependency.f11527b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            } else if (i2 == 3) {
                if (constraintWidget10.u == 3) {
                    dependencyNode2.f11526a = this;
                    dependencyNode.f11526a = this;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget10.f11490e;
                    verticalWidgetRun.f11552h.f11526a = this;
                    verticalWidgetRun.f11553i.f11526a = this;
                    dimensionDependency.f11526a = this;
                    if (constraintWidget10.D()) {
                        arrayList2.add(this.f11548b.f11490e.f11550e);
                        this.f11548b.f11490e.f11550e.f11534k.add(dimensionDependency);
                        VerticalWidgetRun verticalWidgetRun2 = this.f11548b.f11490e;
                        verticalWidgetRun2.f11550e.f11526a = this;
                        arrayList2.add(verticalWidgetRun2.f11552h);
                        arrayList2.add(this.f11548b.f11490e.f11553i);
                        this.f11548b.f11490e.f11552h.f11534k.add(dimensionDependency);
                        this.f11548b.f11490e.f11553i.f11534k.add(dimensionDependency);
                    } else {
                        boolean zC2 = this.f11548b.C();
                        ConstraintWidget constraintWidget12 = this.f11548b;
                        if (zC2) {
                            constraintWidget12.f11490e.f11550e.l.add(dimensionDependency);
                            arrayList.add(this.f11548b.f11490e.f11550e);
                        } else {
                            constraintWidget12.f11490e.f11550e.l.add(dimensionDependency);
                        }
                    }
                } else {
                    DimensionDependency dimensionDependency3 = constraintWidget10.f11490e.f11550e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.f11534k.add(dimensionDependency);
                    this.f11548b.f11490e.f11552h.f11534k.add(dimensionDependency);
                    this.f11548b.f11490e.f11553i.f11534k.add(dimensionDependency);
                    dimensionDependency.f11527b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                    dependencyNode2.l.add(dimensionDependency);
                    dependencyNode.l.add(dimensionDependency);
                }
            }
        }
        ConstraintWidget constraintWidget13 = this.f11548b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget13.T;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.f11484f;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].f11484f != null) {
            boolean zC3 = constraintWidget13.C();
            ConstraintWidget constraintWidget14 = this.f11548b;
            if (zC3) {
                dependencyNode2.f11530f = constraintWidget14.T[0].e();
                dependencyNode.f11530f = -this.f11548b.T[1].e();
                return;
            }
            DependencyNode dependencyNodeH5 = WidgetRun.h(constraintWidget14.T[0]);
            DependencyNode dependencyNodeH6 = WidgetRun.h(this.f11548b.T[1]);
            if (dependencyNodeH5 != null) {
                dependencyNodeH5.b(this);
            }
            if (dependencyNodeH6 != null) {
                dependencyNodeH6.b(this);
            }
            this.f11554j = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode dependencyNodeH7 = WidgetRun.h(constraintAnchor4);
            if (dependencyNodeH7 != null) {
                WidgetRun.b(dependencyNode2, dependencyNodeH7, this.f11548b.T[0].e());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.f11484f != null) {
            DependencyNode dependencyNodeH8 = WidgetRun.h(constraintAnchor6);
            if (dependencyNodeH8 != null) {
                WidgetRun.b(dependencyNode, dependencyNodeH8, -this.f11548b.T[1].e());
                c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                return;
            }
            return;
        }
        if ((constraintWidget13 instanceof Helper) || (constraintWidget3 = constraintWidget13.X) == null) {
            return;
        }
        WidgetRun.b(dependencyNode2, constraintWidget3.d.f11552h, constraintWidget13.w());
        c(dependencyNode, dependencyNode2, 1, dimensionDependency);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.f11552h;
        if (dependencyNode.f11533j) {
            this.f11548b.c0 = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f11549c = null;
        this.f11552h.c();
        this.f11553i.c();
        this.f11550e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        return this.d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f11548b.t == 0;
    }

    public final void n() {
        this.g = false;
        DependencyNode dependencyNode = this.f11552h;
        dependencyNode.c();
        dependencyNode.f11533j = false;
        DependencyNode dependencyNode2 = this.f11553i;
        dependencyNode2.c();
        dependencyNode2.f11533j = false;
        this.f11550e.f11533j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f11548b.m0;
    }
}
