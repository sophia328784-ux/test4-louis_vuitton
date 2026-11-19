package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11547a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConstraintWidget f11548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RunGroup f11549c;
    public ConstraintWidget.DimensionBehaviour d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DimensionDependency f11550e = new DimensionDependency(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11551f = 0;
    public boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DependencyNode f11552h = new DependencyNode(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DependencyNode f11553i = new DependencyNode(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public RunType f11554j = RunType.NONE;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11555a;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f11555a = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11555a[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11555a[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11555a[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11555a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RunType {
        private static final /* synthetic */ RunType[] $VALUES;
        public static final RunType CENTER;
        public static final RunType END;
        public static final RunType NONE;
        public static final RunType START;

        static {
            RunType runType = new RunType("NONE", 0);
            NONE = runType;
            RunType runType2 = new RunType("START", 1);
            START = runType2;
            RunType runType3 = new RunType("END", 2);
            END = runType3;
            RunType runType4 = new RunType("CENTER", 3);
            CENTER = runType4;
            $VALUES = new RunType[]{runType, runType2, runType3, runType4};
        }

        public static RunType valueOf(String str) {
            return (RunType) Enum.valueOf(RunType.class, str);
        }

        public static RunType[] values() {
            return (RunType[]) $VALUES.clone();
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.f11548b = constraintWidget;
    }

    public static void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i2) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.f11530f = i2;
        dependencyNode2.f11534k.add(dependencyNode);
    }

    public static DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.d;
        int i2 = AnonymousClass1.f11555a[constraintAnchor2.f11483e.ordinal()];
        if (i2 == 1) {
            return constraintWidget.d.f11552h;
        }
        if (i2 == 2) {
            return constraintWidget.d.f11553i;
        }
        if (i2 == 3) {
            return constraintWidget.f11490e.f11552h;
        }
        if (i2 == 4) {
            return constraintWidget.f11490e.f11540k;
        }
        if (i2 != 5) {
            return null;
        }
        return constraintWidget.f11490e.f11553i;
    }

    public static DependencyNode i(ConstraintAnchor constraintAnchor, int i2) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f11484f;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.d;
        WidgetRun widgetRun = i2 == 0 ? constraintWidget.d : constraintWidget.f11490e;
        int i3 = AnonymousClass1.f11555a[constraintAnchor2.f11483e.ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.f11553i;
        }
        return widgetRun.f11552h;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void a(Dependency dependency) {
    }

    public final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i2, DimensionDependency dimensionDependency) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.l.add(this.f11550e);
        dependencyNode.f11531h = i2;
        dependencyNode.f11532i = dimensionDependency;
        dependencyNode2.f11534k.add(dependencyNode);
        dimensionDependency.f11534k.add(dependencyNode);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i2, int i3) {
        ConstraintWidget constraintWidget = this.f11548b;
        if (i3 == 0) {
            int i4 = constraintWidget.x;
            int iMax = Math.max(constraintWidget.w, i2);
            if (i4 > 0) {
                iMax = Math.min(i4, i2);
            }
            if (iMax != i2) {
                return iMax;
            }
        } else {
            int i5 = constraintWidget.A;
            int iMax2 = Math.max(constraintWidget.z, i2);
            if (i5 > 0) {
                iMax2 = Math.min(i5, i2);
            }
            if (iMax2 != i2) {
                return iMax2;
            }
        }
        return i2;
    }

    public long j() {
        DimensionDependency dimensionDependency = this.f11550e;
        if (dimensionDependency.f11533j) {
            return dimensionDependency.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code duplicated, block: B:29:0x0056 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:35:0x0066  */
    /* JADX WARN: Code duplicated, block: B:36:0x006b  */
    public final void l(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i2) {
        DimensionDependency dimensionDependency;
        float f2;
        int i3;
        int i4;
        DependencyNode dependencyNodeH = h(constraintAnchor);
        DependencyNode dependencyNodeH2 = h(constraintAnchor2);
        if (dependencyNodeH.f11533j && dependencyNodeH2.f11533j) {
            int iE = constraintAnchor.e() + dependencyNodeH.g;
            int iE2 = dependencyNodeH2.g - constraintAnchor2.e();
            int i5 = iE2 - iE;
            DimensionDependency dimensionDependency2 = this.f11550e;
            if (!dimensionDependency2.f11533j) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    int i6 = this.f11547a;
                    if (i6 == 0) {
                        dimensionDependency2.d(g(i5, i2));
                    } else if (i6 == 1) {
                        dimensionDependency2.d(Math.min(g(dimensionDependency2.m, i2), i5));
                    } else if (i6 == 2) {
                        ConstraintWidget constraintWidget = this.f11548b;
                        ConstraintWidget constraintWidget2 = constraintWidget.X;
                        if (constraintWidget2 != null) {
                            DimensionDependency dimensionDependency3 = (i2 == 0 ? constraintWidget2.d : constraintWidget2.f11490e).f11550e;
                            if (dimensionDependency3.f11533j) {
                                dimensionDependency2.d(g((int) ((dimensionDependency3.g * (i2 == 0 ? constraintWidget.y : constraintWidget.B)) + 0.5f), i2));
                            }
                        }
                    } else if (i6 == 3) {
                        ConstraintWidget constraintWidget3 = this.f11548b;
                        WidgetRun widgetRun = constraintWidget3.d;
                        if (widgetRun.d == dimensionBehaviour2 && widgetRun.f11547a == 3) {
                            VerticalWidgetRun verticalWidgetRun = constraintWidget3.f11490e;
                            if (verticalWidgetRun.d != dimensionBehaviour2 || verticalWidgetRun.f11547a != 3) {
                                if (i2 == 0) {
                                    widgetRun = constraintWidget3.f11490e;
                                }
                                dimensionDependency = widgetRun.f11550e;
                                if (dimensionDependency.f11533j) {
                                    f2 = constraintWidget3.a0;
                                    i3 = dimensionDependency.g;
                                    if (i2 == 1) {
                                        i4 = (int) ((i3 / f2) + 0.5f);
                                    } else {
                                        i4 = (int) ((f2 * i3) + 0.5f);
                                    }
                                    dimensionDependency2.d(i4);
                                }
                            }
                        } else {
                            if (i2 == 0) {
                                widgetRun = constraintWidget3.f11490e;
                            }
                            dimensionDependency = widgetRun.f11550e;
                            if (dimensionDependency.f11533j) {
                                f2 = constraintWidget3.a0;
                                i3 = dimensionDependency.g;
                                if (i2 == 1) {
                                    i4 = (int) ((i3 / f2) + 0.5f);
                                } else {
                                    i4 = (int) ((f2 * i3) + 0.5f);
                                }
                                dimensionDependency2.d(i4);
                            }
                        }
                    }
                }
            }
            if (dimensionDependency2.f11533j) {
                int i7 = dimensionDependency2.g;
                DependencyNode dependencyNode = this.f11553i;
                DependencyNode dependencyNode2 = this.f11552h;
                if (i7 == i5) {
                    dependencyNode2.d(iE);
                    dependencyNode.d(iE2);
                    return;
                }
                ConstraintWidget constraintWidget4 = this.f11548b;
                float f3 = i2 == 0 ? constraintWidget4.h0 : constraintWidget4.i0;
                if (dependencyNodeH == dependencyNodeH2) {
                    iE = dependencyNodeH.g;
                    iE2 = dependencyNodeH2.g;
                    f3 = 0.5f;
                }
                dependencyNode2.d((int) ((((iE2 - iE) - i7) * f3) + iE + 0.5f));
                dependencyNode.d(dependencyNode2.g + dimensionDependency2.g);
            }
        }
    }
}
