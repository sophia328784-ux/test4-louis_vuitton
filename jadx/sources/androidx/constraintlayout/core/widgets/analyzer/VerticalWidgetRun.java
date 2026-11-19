package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DependencyNode f11540k;
    public BaselineDimensionDependency l;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11541a;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            f11541a = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11541a[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11541a[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.f11540k = dependencyNode;
        this.l = null;
        this.f11552h.f11529e = DependencyNode.Type.TOP;
        this.f11553i.f11529e = DependencyNode.Type.BOTTOM;
        dependencyNode.f11529e = DependencyNode.Type.BASELINE;
        this.f11551f = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        float f2;
        float f3;
        float f4;
        int i2;
        if (AnonymousClass1.f11541a[this.f11554j.ordinal()] == 3) {
            ConstraintWidget constraintWidget = this.f11548b;
            l(constraintWidget.M, constraintWidget.O, 1);
            return;
        }
        DimensionDependency dimensionDependency = this.f11550e;
        if (dimensionDependency.f11528c && !dimensionDependency.f11533j && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.f11548b;
            int i3 = constraintWidget2.u;
            if (i3 == 2) {
                ConstraintWidget constraintWidget3 = constraintWidget2.X;
                if (constraintWidget3 != null) {
                    DimensionDependency dimensionDependency2 = constraintWidget3.f11490e.f11550e;
                    if (dimensionDependency2.f11533j) {
                        dimensionDependency.d((int) ((dimensionDependency2.g * constraintWidget2.B) + 0.5f));
                    }
                }
            } else if (i3 == 3) {
                DimensionDependency dimensionDependency3 = constraintWidget2.d.f11550e;
                if (dimensionDependency3.f11533j) {
                    int i4 = constraintWidget2.b0;
                    if (i4 != -1) {
                        if (i4 == 0) {
                            f4 = dimensionDependency3.g * constraintWidget2.a0;
                            i2 = (int) (f4 + 0.5f);
                        } else if (i4 != 1) {
                            i2 = 0;
                        } else {
                            f2 = dimensionDependency3.g;
                            f3 = constraintWidget2.a0;
                        }
                        dimensionDependency.d(i2);
                    } else {
                        f2 = dimensionDependency3.g;
                        f3 = constraintWidget2.a0;
                    }
                    f4 = f2 / f3;
                    i2 = (int) (f4 + 0.5f);
                    dimensionDependency.d(i2);
                }
            }
        }
        DependencyNode dependencyNode = this.f11552h;
        boolean z = dependencyNode.f11528c;
        ArrayList arrayList = dependencyNode.l;
        if (z) {
            DependencyNode dependencyNode2 = this.f11553i;
            boolean z2 = dependencyNode2.f11528c;
            ArrayList arrayList2 = dependencyNode2.l;
            if (z2) {
                if (dependencyNode.f11533j && dependencyNode2.f11533j && dimensionDependency.f11533j) {
                    return;
                }
                if (!dimensionDependency.f11533j && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget4 = this.f11548b;
                    if (constraintWidget4.t == 0 && !constraintWidget4.D()) {
                        DependencyNode dependencyNode3 = (DependencyNode) arrayList.get(0);
                        DependencyNode dependencyNode4 = (DependencyNode) arrayList2.get(0);
                        int i5 = dependencyNode3.g + dependencyNode.f11530f;
                        int i6 = dependencyNode4.g + dependencyNode2.f11530f;
                        dependencyNode.d(i5);
                        dependencyNode2.d(i6);
                        dimensionDependency.d(i6 - i5);
                        return;
                    }
                }
                if (!dimensionDependency.f11533j && this.d == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.f11547a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    DependencyNode dependencyNode5 = (DependencyNode) arrayList.get(0);
                    int i7 = (((DependencyNode) arrayList2.get(0)).g + dependencyNode2.f11530f) - (dependencyNode5.g + dependencyNode.f11530f);
                    int i8 = dimensionDependency.m;
                    if (i7 < i8) {
                        dimensionDependency.d(i7);
                    } else {
                        dimensionDependency.d(i8);
                    }
                }
                if (dimensionDependency.f11533j && arrayList.size() > 0 && arrayList2.size() > 0) {
                    DependencyNode dependencyNode6 = (DependencyNode) arrayList.get(0);
                    DependencyNode dependencyNode7 = (DependencyNode) arrayList2.get(0);
                    int i9 = dependencyNode6.g;
                    int i10 = dependencyNode.f11530f + i9;
                    int i11 = dependencyNode7.g;
                    int i12 = dependencyNode2.f11530f + i11;
                    float f5 = this.f11548b.i0;
                    if (dependencyNode6 == dependencyNode7) {
                        f5 = 0.5f;
                    } else {
                        i9 = i10;
                        i11 = i12;
                    }
                    dependencyNode.d((int) ((((i11 - i9) - dimensionDependency.g) * f5) + i9 + 0.5f));
                    dependencyNode2.d(dependencyNode.g + dimensionDependency.g);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5 = this.f11548b;
        boolean z = constraintWidget5.f11487a;
        DimensionDependency dimensionDependency = this.f11550e;
        if (z) {
            dimensionDependency.d(constraintWidget5.p());
        }
        boolean z2 = dimensionDependency.f11533j;
        ArrayList arrayList = dimensionDependency.f11534k;
        ArrayList arrayList2 = dimensionDependency.l;
        DependencyNode dependencyNode = this.f11553i;
        DependencyNode dependencyNode2 = this.f11552h;
        if (!z2) {
            ConstraintWidget constraintWidget6 = this.f11548b;
            this.d = constraintWidget6.W[1];
            if (constraintWidget6.G) {
                this.l = new BaselineDimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.d;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidget4 = this.f11548b.X) != null && constraintWidget4.W[1] == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int iP = (constraintWidget4.p() - this.f11548b.M.e()) - this.f11548b.O.e();
                    WidgetRun.b(dependencyNode2, constraintWidget4.f11490e.f11552h, this.f11548b.M.e());
                    WidgetRun.b(dependencyNode, constraintWidget4.f11490e.f11553i, -this.f11548b.O.e());
                    dimensionDependency.d(iP);
                    return;
                }
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED) {
                    dimensionDependency.d(this.f11548b.p());
                }
            }
        } else if (this.d == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (constraintWidget2 = (constraintWidget = this.f11548b).X) != null && constraintWidget2.W[1] == ConstraintWidget.DimensionBehaviour.FIXED) {
            WidgetRun.b(dependencyNode2, constraintWidget2.f11490e.f11552h, constraintWidget.M.e());
            WidgetRun.b(dependencyNode, constraintWidget2.f11490e.f11553i, -this.f11548b.O.e());
            return;
        }
        boolean z3 = dimensionDependency.f11533j;
        DependencyNode dependencyNode3 = this.f11540k;
        if (z3) {
            ConstraintWidget constraintWidget7 = this.f11548b;
            if (constraintWidget7.f11487a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.T;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
                if (constraintAnchor2 != null && constraintAnchorArr[3].f11484f != null) {
                    boolean zD = constraintWidget7.D();
                    ConstraintWidget constraintWidget8 = this.f11548b;
                    if (zD) {
                        dependencyNode2.f11530f = constraintWidget8.T[2].e();
                        dependencyNode.f11530f = -this.f11548b.T[3].e();
                    } else {
                        DependencyNode dependencyNodeH = WidgetRun.h(constraintWidget8.T[2]);
                        if (dependencyNodeH != null) {
                            WidgetRun.b(dependencyNode2, dependencyNodeH, this.f11548b.T[2].e());
                        }
                        DependencyNode dependencyNodeH2 = WidgetRun.h(this.f11548b.T[3]);
                        if (dependencyNodeH2 != null) {
                            WidgetRun.b(dependencyNode, dependencyNodeH2, -this.f11548b.T[3].e());
                        }
                        dependencyNode2.f11527b = true;
                        dependencyNode.f11527b = true;
                    }
                    ConstraintWidget constraintWidget9 = this.f11548b;
                    if (constraintWidget9.G) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget9.e0);
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode dependencyNodeH3 = WidgetRun.h(constraintAnchor);
                    if (dependencyNodeH3 != null) {
                        WidgetRun.b(dependencyNode2, dependencyNodeH3, this.f11548b.T[2].e());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        ConstraintWidget constraintWidget10 = this.f11548b;
                        if (constraintWidget10.G) {
                            WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget10.e0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.f11484f != null) {
                    DependencyNode dependencyNodeH4 = WidgetRun.h(constraintAnchor3);
                    if (dependencyNodeH4 != null) {
                        WidgetRun.b(dependencyNode, dependencyNodeH4, -this.f11548b.T[3].e());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                    }
                    ConstraintWidget constraintWidget11 = this.f11548b;
                    if (constraintWidget11.G) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget11.e0);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.f11484f != null) {
                    DependencyNode dependencyNodeH5 = WidgetRun.h(constraintAnchor4);
                    if (dependencyNodeH5 != null) {
                        WidgetRun.b(dependencyNode3, dependencyNodeH5, 0);
                        WidgetRun.b(dependencyNode2, dependencyNode3, -this.f11548b.e0);
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if ((constraintWidget7 instanceof Helper) || constraintWidget7.X == null || constraintWidget7.n(ConstraintAnchor.Type.CENTER).f11484f != null) {
                    return;
                }
                ConstraintWidget constraintWidget12 = this.f11548b;
                WidgetRun.b(dependencyNode2, constraintWidget12.X.f11490e.f11552h, constraintWidget12.x());
                WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                ConstraintWidget constraintWidget13 = this.f11548b;
                if (constraintWidget13.G) {
                    WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget13.e0);
                    return;
                }
                return;
            }
        }
        if (z3 || this.d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            dimensionDependency.b(this);
        } else {
            ConstraintWidget constraintWidget14 = this.f11548b;
            int i2 = constraintWidget14.u;
            if (i2 == 2) {
                ConstraintWidget constraintWidget15 = constraintWidget14.X;
                if (constraintWidget15 != null) {
                    DimensionDependency dimensionDependency2 = constraintWidget15.f11490e.f11550e;
                    arrayList2.add(dimensionDependency2);
                    dimensionDependency2.f11534k.add(dimensionDependency);
                    dimensionDependency.f11527b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            } else if (i2 == 3 && !constraintWidget14.D()) {
                ConstraintWidget constraintWidget16 = this.f11548b;
                if (constraintWidget16.t != 3) {
                    DimensionDependency dimensionDependency3 = constraintWidget16.d.f11550e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.f11534k.add(dimensionDependency);
                    dimensionDependency.f11527b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            }
        }
        ConstraintWidget constraintWidget17 = this.f11548b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget17.T;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.f11484f;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].f11484f != null) {
            boolean zD2 = constraintWidget17.D();
            ConstraintWidget constraintWidget18 = this.f11548b;
            if (zD2) {
                dependencyNode2.f11530f = constraintWidget18.T[2].e();
                dependencyNode.f11530f = -this.f11548b.T[3].e();
            } else {
                DependencyNode dependencyNodeH6 = WidgetRun.h(constraintWidget18.T[2]);
                DependencyNode dependencyNodeH7 = WidgetRun.h(this.f11548b.T[3]);
                if (dependencyNodeH6 != null) {
                    dependencyNodeH6.b(this);
                }
                if (dependencyNodeH7 != null) {
                    dependencyNodeH7.b(this);
                }
                this.f11554j = WidgetRun.RunType.CENTER;
            }
            if (this.f11548b.G) {
                c(dependencyNode3, dependencyNode2, 1, this.l);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode dependencyNodeH8 = WidgetRun.h(constraintAnchor5);
            if (dependencyNodeH8 != null) {
                WidgetRun.b(dependencyNode2, dependencyNodeH8, this.f11548b.T[2].e());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                if (this.f11548b.G) {
                    c(dependencyNode3, dependencyNode2, 1, this.l);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3) {
                    ConstraintWidget constraintWidget19 = this.f11548b;
                    if (constraintWidget19.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget19.d;
                        if (horizontalWidgetRun.d == dimensionBehaviour3) {
                            horizontalWidgetRun.f11550e.f11534k.add(dimensionDependency);
                            arrayList2.add(this.f11548b.d.f11550e);
                            dimensionDependency.f11526a = this;
                        }
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.f11484f != null) {
                DependencyNode dependencyNodeH9 = WidgetRun.h(constraintAnchor7);
                if (dependencyNodeH9 != null) {
                    WidgetRun.b(dependencyNode, dependencyNodeH9, -this.f11548b.T[3].e());
                    c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                    if (this.f11548b.G) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.f11484f != null) {
                    DependencyNode dependencyNodeH10 = WidgetRun.h(constraintAnchor8);
                    if (dependencyNodeH10 != null) {
                        WidgetRun.b(dependencyNode3, dependencyNodeH10, 0);
                        c(dependencyNode2, dependencyNode3, -1, this.l);
                        c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    }
                } else if (!(constraintWidget17 instanceof Helper) && (constraintWidget3 = constraintWidget17.X) != null) {
                    WidgetRun.b(dependencyNode2, constraintWidget3.f11490e.f11552h, constraintWidget17.x());
                    c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    if (this.f11548b.G) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.d;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5) {
                        ConstraintWidget constraintWidget20 = this.f11548b;
                        if (constraintWidget20.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidget20.d;
                            if (horizontalWidgetRun2.d == dimensionBehaviour5) {
                                horizontalWidgetRun2.f11550e.f11534k.add(dimensionDependency);
                                arrayList2.add(this.f11548b.d.f11550e);
                                dimensionDependency.f11526a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            dimensionDependency.f11528c = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.f11552h;
        if (dependencyNode.f11533j) {
            this.f11548b.d0 = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f11549c = null;
        this.f11552h.c();
        this.f11553i.c();
        this.f11540k.c();
        this.f11550e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        return this.d != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.f11548b.u == 0;
    }

    public final void m() {
        this.g = false;
        DependencyNode dependencyNode = this.f11552h;
        dependencyNode.c();
        dependencyNode.f11533j = false;
        DependencyNode dependencyNode2 = this.f11553i;
        dependencyNode2.c();
        dependencyNode2.f11533j = false;
        DependencyNode dependencyNode3 = this.f11540k;
        dependencyNode3.c();
        dependencyNode3.f11533j = false;
        this.f11550e.f11533j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f11548b.m0;
    }
}
