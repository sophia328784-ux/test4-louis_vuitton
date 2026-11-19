package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import defpackage.tr;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class DependencyGraph {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintWidgetContainer f11520a;
    public final ConstraintWidgetContainer d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public BasicMeasure.Measurer f11524f;
    public final BasicMeasure.Measure g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f11525h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11521b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11522c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f11523e = new ArrayList();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        new ArrayList();
        this.f11524f = null;
        this.g = new BasicMeasure.Measure();
        this.f11525h = new ArrayList();
        this.f11520a = constraintWidgetContainer;
        this.d = constraintWidgetContainer;
    }

    public final void a(DependencyNode dependencyNode, int i2, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.d;
        RunGroup runGroup2 = widgetRun.f11549c;
        DependencyNode dependencyNode2 = widgetRun.f11553i;
        DependencyNode dependencyNode3 = widgetRun.f11552h;
        if (runGroup2 == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.f11520a;
            if (widgetRun == constraintWidgetContainer.d || widgetRun == constraintWidgetContainer.f11490e) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup();
                runGroup.f11538a = null;
                runGroup.f11539b = new ArrayList();
                runGroup.f11538a = widgetRun;
                arrayList.add(runGroup);
            }
            widgetRun.f11549c = runGroup;
            runGroup.f11539b.add(widgetRun);
            for (Dependency dependency : dependencyNode3.f11534k) {
                if (dependency instanceof DependencyNode) {
                    a((DependencyNode) dependency, i2, arrayList, runGroup);
                }
            }
            for (Dependency dependency2 : dependencyNode2.f11534k) {
                if (dependency2 instanceof DependencyNode) {
                    a((DependencyNode) dependency2, i2, arrayList, runGroup);
                }
            }
            if (i2 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).f11540k.f11534k) {
                    if (dependency3 instanceof DependencyNode) {
                        a((DependencyNode) dependency3, i2, arrayList, runGroup);
                    }
                }
            }
            Iterator it = dependencyNode3.l.iterator();
            while (it.hasNext()) {
                a((DependencyNode) it.next(), i2, arrayList, runGroup);
            }
            Iterator it2 = dependencyNode2.l.iterator();
            while (it2.hasNext()) {
                a((DependencyNode) it2.next(), i2, arrayList, runGroup);
            }
            if (i2 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator it3 = ((VerticalWidgetRun) widgetRun).f11540k.l.iterator();
                while (it3.hasNext()) {
                    a((DependencyNode) it3.next(), i2, arrayList, runGroup);
                }
            }
        }
    }

    public final void b(ConstraintWidgetContainer constraintWidgetContainer) {
        char c2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        Iterator it = constraintWidgetContainer.w0.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.T;
            ConstraintAnchor constraintAnchor = constraintWidget.O;
            ConstraintAnchor constraintAnchor2 = constraintWidget.M;
            ConstraintAnchor constraintAnchor3 = constraintWidget.N;
            ConstraintAnchor constraintAnchor4 = constraintWidget.L;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = dimensionBehaviourArr[1];
            if (constraintWidget.k0 == 8) {
                constraintWidget.f11487a = true;
            } else {
                float f2 = constraintWidget.y;
                if (f2 < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.t = 2;
                }
                float f3 = constraintWidget.B;
                if (f3 < 1.0f) {
                    c2 = 0;
                    if (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.u = 2;
                    }
                } else {
                    c2 = 0;
                }
                if (constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour5 == dimensionBehaviour7 && (dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.t = 3;
                    } else if (dimensionBehaviour6 == dimensionBehaviour7 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.u = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour7 && dimensionBehaviour6 == dimensionBehaviour7) {
                        if (constraintWidget.t == 0) {
                            constraintWidget.t = 3;
                        }
                        if (constraintWidget.u == 0) {
                            constraintWidget.u = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour5 == dimensionBehaviour8 && constraintWidget.t == 1 && (constraintAnchor4.f11484f == null || constraintAnchor3.f11484f == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                if (dimensionBehaviour6 == dimensionBehaviour8 && constraintWidget.u == 1 && (constraintAnchor2.f11484f == null || constraintAnchor.f11484f == null)) {
                    dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget.d;
                horizontalWidgetRun.d = dimensionBehaviour5;
                int i2 = constraintWidget.t;
                horizontalWidgetRun.f11547a = i2;
                VerticalWidgetRun verticalWidgetRun = constraintWidget.f11490e;
                verticalWidgetRun.d = dimensionBehaviour6;
                int i3 = constraintWidget.u;
                verticalWidgetRun.f11547a = i3;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                Iterator it2 = it;
                if ((dimensionBehaviour5 == dimensionBehaviour9 || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && (dimensionBehaviour6 == dimensionBehaviour9 || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour6 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = dimensionBehaviour6;
                    int iV = constraintWidget.v();
                    if (dimensionBehaviour5 == dimensionBehaviour9) {
                        iV = (constraintWidgetContainer.v() - constraintAnchor4.g) - constraintAnchor3.g;
                        dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.FIXED;
                    }
                    int iP = constraintWidget.p();
                    if (dimensionBehaviour10 == dimensionBehaviour9) {
                        iP = (constraintWidgetContainer.p() - constraintAnchor2.g) - constraintAnchor.g;
                        dimensionBehaviour10 = ConstraintWidget.DimensionBehaviour.FIXED;
                    }
                    h(constraintWidget, dimensionBehaviour5, iV, dimensionBehaviour10, iP);
                    constraintWidget.d.f11550e.d(constraintWidget.v());
                    constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                    constraintWidget.f11487a = true;
                } else {
                    if (dimensionBehaviour5 != dimensionBehaviour8 || (dimensionBehaviour6 != (dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && dimensionBehaviour6 != ConstraintWidget.DimensionBehaviour.FIXED)) {
                        dimensionBehaviour = dimensionBehaviour6;
                    } else if (i2 == 3) {
                        if (dimensionBehaviour6 == dimensionBehaviour4) {
                            h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                        }
                        int iP2 = constraintWidget.p();
                        int i4 = (int) ((iP2 * constraintWidget.a0) + 0.5f);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = ConstraintWidget.DimensionBehaviour.FIXED;
                        h(constraintWidget, dimensionBehaviour11, i4, dimensionBehaviour11, iP2);
                        constraintWidget.d.f11550e.d(constraintWidget.v());
                        constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                        constraintWidget.f11487a = true;
                    } else if (i2 == 1) {
                        h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour6, 0);
                        constraintWidget.d.f11550e.m = constraintWidget.v();
                    } else {
                        dimensionBehaviour = dimensionBehaviour6;
                        if (i2 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = constraintWidgetContainer.W[c2];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour12 == dimensionBehaviour13 || dimensionBehaviour12 == dimensionBehaviour9) {
                                h(constraintWidget, dimensionBehaviour13, (int) ((f2 * constraintWidgetContainer.v()) + 0.5f), dimensionBehaviour, constraintWidget.p());
                                constraintWidget.d.f11550e.d(constraintWidget.v());
                                constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                                constraintWidget.f11487a = true;
                            }
                        } else if (constraintAnchorArr[c2].f11484f == null || constraintAnchorArr[1].f11484f == null) {
                            h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour, 0);
                            constraintWidget.d.f11550e.d(constraintWidget.v());
                            constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                            constraintWidget.f11487a = true;
                        }
                    }
                    if (dimensionBehaviour != dimensionBehaviour8 || (dimensionBehaviour5 != (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) && dimensionBehaviour5 != ConstraintWidget.DimensionBehaviour.FIXED)) {
                        dimensionBehaviour2 = dimensionBehaviour;
                    } else if (i3 == 3) {
                        if (dimensionBehaviour5 == dimensionBehaviour3) {
                            h(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                        }
                        int iV2 = constraintWidget.v();
                        float f4 = constraintWidget.a0;
                        if (constraintWidget.b0 == -1) {
                            f4 = 1.0f / f4;
                        }
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.FIXED;
                        h(constraintWidget, dimensionBehaviour14, iV2, dimensionBehaviour14, (int) ((iV2 * f4) + 0.5f));
                        constraintWidget.d.f11550e.d(constraintWidget.v());
                        constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                        constraintWidget.f11487a = true;
                    } else if (i3 == 1) {
                        h(constraintWidget, dimensionBehaviour5, 0, dimensionBehaviour3, 0);
                        constraintWidget.f11490e.f11550e.m = constraintWidget.p();
                    } else {
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = dimensionBehaviour5;
                        if (i3 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = constraintWidgetContainer.W[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = dimensionBehaviour;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour16 == dimensionBehaviour18 || dimensionBehaviour16 == dimensionBehaviour9) {
                                h(constraintWidget, dimensionBehaviour15, constraintWidget.v(), dimensionBehaviour18, (int) ((f3 * constraintWidgetContainer.p()) + 0.5f));
                                constraintWidget.d.f11550e.d(constraintWidget.v());
                                constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                                constraintWidget.f11487a = true;
                            } else {
                                dimensionBehaviour2 = dimensionBehaviour17;
                                dimensionBehaviour5 = dimensionBehaviour15;
                            }
                        } else {
                            dimensionBehaviour5 = dimensionBehaviour15;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviour;
                            if (constraintAnchorArr[2].f11484f == null || constraintAnchorArr[3].f11484f == null) {
                                h(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour19, 0);
                                constraintWidget.d.f11550e.d(constraintWidget.v());
                                constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                                constraintWidget.f11487a = true;
                            } else {
                                dimensionBehaviour2 = dimensionBehaviour19;
                            }
                        }
                    }
                    if (dimensionBehaviour5 == dimensionBehaviour8 && dimensionBehaviour2 == dimensionBehaviour8) {
                        if (i2 == 1 || i3 == 1) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            h(constraintWidget, dimensionBehaviour20, 0, dimensionBehaviour20, 0);
                            constraintWidget.d.f11550e.m = constraintWidget.v();
                            constraintWidget.f11490e.f11550e.m = constraintWidget.p();
                        } else if (i3 == 2 && i2 == 2) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.W;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour21 = dimensionBehaviourArr2[c2];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour22 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour21 == dimensionBehaviour22 && dimensionBehaviourArr2[1] == dimensionBehaviour22) {
                                h(constraintWidget, dimensionBehaviour22, (int) ((f2 * constraintWidgetContainer.v()) + 0.5f), dimensionBehaviour22, (int) ((f3 * constraintWidgetContainer.p()) + 0.5f));
                                constraintWidget.d.f11550e.d(constraintWidget.v());
                                constraintWidget.f11490e.f11550e.d(constraintWidget.p());
                                constraintWidget.f11487a = true;
                            }
                        }
                    }
                }
                it = it2;
            }
        }
    }

    public final void c() {
        ArrayList<WidgetRun> arrayList = this.f11523e;
        arrayList.clear();
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        constraintWidgetContainer.d.f();
        constraintWidgetContainer.f11490e.f();
        arrayList.add(constraintWidgetContainer.d);
        arrayList.add(constraintWidgetContainer.f11490e);
        HashSet hashSet = null;
        for (ConstraintWidget constraintWidget : constraintWidgetContainer.w0) {
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                GuidelineReference guidelineReference = new GuidelineReference(guideline);
                guideline.d.f();
                guideline.f11490e.f();
                guidelineReference.f11551f = guideline.A0;
                arrayList.add(guidelineReference);
            } else {
                if (constraintWidget.C()) {
                    if (constraintWidget.f11488b == null) {
                        constraintWidget.f11488b = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f11488b);
                } else {
                    arrayList.add(constraintWidget.d);
                }
                if (constraintWidget.D()) {
                    if (constraintWidget.f11489c == null) {
                        constraintWidget.f11489c = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.f11489c);
                } else {
                    arrayList.add(constraintWidget.f11490e);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
        for (WidgetRun widgetRun : arrayList) {
            if (widgetRun.f11548b != constraintWidgetContainer) {
                widgetRun.d();
            }
        }
        ArrayList arrayList2 = this.f11525h;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = this.f11520a;
        g(constraintWidgetContainer2.d, 0, arrayList2);
        g(constraintWidgetContainer2.f11490e, 1, arrayList2);
        this.f11521b = false;
    }

    public final int d(ConstraintWidgetContainer constraintWidgetContainer, int i2) {
        ArrayList arrayList;
        int i3;
        long j2;
        float f2;
        long j3;
        ArrayList arrayList2 = this.f11525h;
        int size = arrayList2.size();
        long j4 = 0;
        int i4 = 0;
        long jMax = 0;
        while (i4 < size) {
            WidgetRun widgetRun = ((RunGroup) arrayList2.get(i4)).f11538a;
            if (!(widgetRun instanceof ChainRun) ? !(i2 != 0 ? (widgetRun instanceof VerticalWidgetRun) : (widgetRun instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun).f11551f != i2) {
                DependencyNode dependencyNode = (i2 == 0 ? constraintWidgetContainer.d : constraintWidgetContainer.f11490e).f11552h;
                DependencyNode dependencyNode2 = (i2 == 0 ? constraintWidgetContainer.d : constraintWidgetContainer.f11490e).f11553i;
                DependencyNode dependencyNode3 = widgetRun.f11552h;
                DependencyNode dependencyNode4 = widgetRun.f11553i;
                boolean zContains = dependencyNode3.l.contains(dependencyNode);
                boolean zContains2 = dependencyNode4.l.contains(dependencyNode2);
                long j5 = widgetRun.j();
                if (zContains && zContains2) {
                    long jB = RunGroup.b(dependencyNode3, j4);
                    arrayList = arrayList2;
                    long jA = RunGroup.a(dependencyNode4, j4);
                    long j6 = jB - j5;
                    int i5 = dependencyNode4.f11530f;
                    i3 = i4;
                    if (j6 >= (-i5)) {
                        j6 += (long) i5;
                    }
                    long j7 = dependencyNode3.f11530f;
                    long j8 = ((-jA) - j5) - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    ConstraintWidget constraintWidget = widgetRun.f11548b;
                    if (i2 == 0) {
                        f2 = constraintWidget.h0;
                    } else if (i2 == 1) {
                        f2 = constraintWidget.i0;
                    } else {
                        constraintWidget.getClass();
                        f2 = -1.0f;
                    }
                    if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        j3 = (long) ((j6 / (1.0f - f2)) + (j8 / f2));
                    } else {
                        j3 = 0;
                    }
                    float f3 = j3;
                    j2 = (((long) dependencyNode3.f11530f) + ((((long) ((f3 * f2) + 0.5f)) + j5) + ((long) tr.a(1.0f, f2, f3, 0.5f)))) - ((long) dependencyNode4.f11530f);
                } else {
                    arrayList = arrayList2;
                    i3 = i4;
                    if (zContains) {
                        j2 = Math.max(RunGroup.b(dependencyNode3, dependencyNode3.f11530f), ((long) dependencyNode3.f11530f) + j5);
                    } else if (zContains2) {
                        j2 = Math.max(-RunGroup.a(dependencyNode4, dependencyNode4.f11530f), ((long) (-dependencyNode4.f11530f)) + j5);
                    } else {
                        j2 = (widgetRun.j() + ((long) dependencyNode3.f11530f)) - ((long) dependencyNode4.f11530f);
                    }
                }
            } else {
                arrayList = arrayList2;
                j2 = j4;
                i3 = i4;
            }
            jMax = Math.max(jMax, j2);
            i4 = i3 + 1;
            arrayList2 = arrayList;
            j4 = 0;
        }
        return (int) jMax;
    }

    public final boolean e(boolean z) {
        boolean z2;
        boolean z3 = this.f11521b;
        boolean z4 = false;
        ConstraintWidgetContainer constraintWidgetContainer = this.f11520a;
        if (z3 || this.f11522c) {
            for (ConstraintWidget constraintWidget : constraintWidgetContainer.w0) {
                constraintWidget.m();
                constraintWidget.f11487a = false;
                constraintWidget.d.n();
                constraintWidget.f11490e.m();
            }
            constraintWidgetContainer.m();
            constraintWidgetContainer.f11487a = false;
            constraintWidgetContainer.d.n();
            constraintWidgetContainer.f11490e.m();
            this.f11522c = false;
        }
        b(this.d);
        constraintWidgetContainer.c0 = 0;
        constraintWidgetContainer.d0 = 0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidgetContainer.o(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidgetContainer.o(1);
        if (this.f11521b) {
            c();
        }
        int iW = constraintWidgetContainer.w();
        int iX = constraintWidgetContainer.x();
        constraintWidgetContainer.d.f11552h.d(iW);
        constraintWidgetContainer.f11490e.f11552h.d(iX);
        i();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        ArrayList<WidgetRun> arrayList = this.f11523e;
        if (dimensionBehaviourO == dimensionBehaviour || dimensionBehaviourO2 == dimensionBehaviour) {
            if (z) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (!((WidgetRun) it.next()).k()) {
                        z = false;
                        break;
                    }
                }
            }
            if (z && dimensionBehaviourO == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.S(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.W(d(constraintWidgetContainer, 0));
                constraintWidgetContainer.d.f11550e.d(constraintWidgetContainer.v());
            }
            if (z && dimensionBehaviourO2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.U(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.R(d(constraintWidgetContainer, 1));
                constraintWidgetContainer.f11490e.f11550e.d(constraintWidgetContainer.p());
            }
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidgetContainer.W[0];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        if (dimensionBehaviour2 == dimensionBehaviour3 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
            int iV = constraintWidgetContainer.v() + iW;
            constraintWidgetContainer.d.f11553i.d(iV);
            constraintWidgetContainer.d.f11550e.d(iV - iW);
            i();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidgetContainer.W[1];
            if (dimensionBehaviour4 == dimensionBehaviour3 || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iP = constraintWidgetContainer.p() + iX;
                constraintWidgetContainer.f11490e.f11553i.d(iP);
                constraintWidgetContainer.f11490e.f11550e.d(iP - iX);
            }
            i();
            z2 = true;
        } else {
            z2 = false;
        }
        for (WidgetRun widgetRun : arrayList) {
            if (widgetRun.f11548b != constraintWidgetContainer || widgetRun.g) {
                widgetRun.e();
            }
        }
        for (WidgetRun widgetRun2 : arrayList) {
            if (z2 || widgetRun2.f11548b != constraintWidgetContainer) {
                if (!widgetRun2.f11552h.f11533j || ((!widgetRun2.f11553i.f11533j && !(widgetRun2 instanceof GuidelineReference)) || (!widgetRun2.f11550e.f11533j && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof GuidelineReference)))) {
                    constraintWidgetContainer.S(dimensionBehaviourO);
                    constraintWidgetContainer.U(dimensionBehaviourO2);
                    return z4;
                }
            }
        }
        z4 = true;
        constraintWidgetContainer.S(dimensionBehaviourO);
        constraintWidgetContainer.U(dimensionBehaviourO2);
        return z4;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a5  */
    public final boolean f(int i2, boolean z) {
        boolean z2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidgetContainer constraintWidgetContainer = this.f11520a;
        boolean z3 = false;
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO = constraintWidgetContainer.o(0);
        ConstraintWidget.DimensionBehaviour dimensionBehaviourO2 = constraintWidgetContainer.o(1);
        int iW = constraintWidgetContainer.w();
        int iX = constraintWidgetContainer.x();
        ArrayList<WidgetRun> arrayList = this.f11523e;
        if (z && (dimensionBehaviourO == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviourO2 == dimensionBehaviour)) {
            for (WidgetRun widgetRun : arrayList) {
                if (widgetRun.f11551f == i2 && !widgetRun.k()) {
                    z = false;
                    break;
                }
            }
            if (i2 == 0) {
                if (z && dimensionBehaviourO == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidgetContainer.S(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidgetContainer.W(d(constraintWidgetContainer, 0));
                    constraintWidgetContainer.d.f11550e.d(constraintWidgetContainer.v());
                }
            } else if (z && dimensionBehaviourO2 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) {
                constraintWidgetContainer.U(ConstraintWidget.DimensionBehaviour.FIXED);
                constraintWidgetContainer.R(d(constraintWidgetContainer, 1));
                constraintWidgetContainer.f11490e.f11550e.d(constraintWidgetContainer.p());
            }
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.W;
        if (i2 == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
            if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iV = constraintWidgetContainer.v() + iW;
                constraintWidgetContainer.d.f11553i.d(iV);
                constraintWidgetContainer.d.f11550e.d(iV - iW);
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[1];
            if (dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.FIXED || dimensionBehaviour3 == ConstraintWidget.DimensionBehaviour.MATCH_PARENT) {
                int iP = constraintWidgetContainer.p() + iX;
                constraintWidgetContainer.f11490e.f11553i.d(iP);
                constraintWidgetContainer.f11490e.f11550e.d(iP - iX);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        i();
        for (WidgetRun widgetRun2 : arrayList) {
            if (widgetRun2.f11551f == i2 && (widgetRun2.f11548b != constraintWidgetContainer || widgetRun2.g)) {
                widgetRun2.e();
            }
        }
        for (WidgetRun widgetRun3 : arrayList) {
            if (widgetRun3.f11551f == i2 && (z2 || widgetRun3.f11548b != constraintWidgetContainer)) {
                if (!widgetRun3.f11552h.f11533j || !widgetRun3.f11553i.f11533j || (!(widgetRun3 instanceof ChainRun) && !widgetRun3.f11550e.f11533j)) {
                    constraintWidgetContainer.S(dimensionBehaviourO);
                    constraintWidgetContainer.U(dimensionBehaviourO2);
                    return z3;
                }
            }
        }
        z3 = true;
        constraintWidgetContainer.S(dimensionBehaviourO);
        constraintWidgetContainer.U(dimensionBehaviourO2);
        return z3;
    }

    public final void g(WidgetRun widgetRun, int i2, ArrayList arrayList) {
        DependencyNode dependencyNode = widgetRun.f11552h;
        DependencyNode dependencyNode2 = widgetRun.f11553i;
        for (Dependency dependency : dependencyNode.f11534k) {
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i2, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).f11552h, i2, arrayList, null);
            }
        }
        for (Dependency dependency2 : dependencyNode2.f11534k) {
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i2, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).f11553i, i2, arrayList, null);
            }
        }
        if (i2 == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).f11540k.f11534k) {
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i2, arrayList, null);
                }
            }
        }
    }

    public final void h(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i2, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i3) {
        BasicMeasure.Measure measure = this.g;
        measure.f11511a = dimensionBehaviour;
        measure.f11512b = dimensionBehaviour2;
        measure.f11513c = i2;
        measure.d = i3;
        this.f11524f.b(constraintWidget, measure);
        constraintWidget.W(measure.f11514e);
        constraintWidget.R(measure.f11515f);
        constraintWidget.G = measure.f11516h;
        constraintWidget.N(measure.g);
    }

    public final void i() {
        DependencyGraph dependencyGraph;
        BaselineDimensionDependency baselineDimensionDependency;
        for (ConstraintWidget constraintWidget : this.f11520a.w0) {
            if (!constraintWidget.f11487a) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.W;
                boolean z = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i2 = constraintWidget.t;
                int i3 = constraintWidget.u;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                boolean z2 = dimensionBehaviour == dimensionBehaviour3 || (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1);
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i3 == 1)) {
                    z = true;
                }
                DimensionDependency dimensionDependency = constraintWidget.d.f11550e;
                boolean z3 = dimensionDependency.f11533j;
                DimensionDependency dimensionDependency2 = constraintWidget.f11490e.f11550e;
                boolean z4 = dimensionDependency2.f11533j;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    dependencyGraph = this;
                    dependencyGraph.h(constraintWidget, dimensionBehaviour4, dimensionDependency.g, dimensionBehaviour4, dimensionDependency2.g);
                    constraintWidget.f11487a = true;
                } else if (z3 && z) {
                    dependencyGraph = this;
                    dependencyGraph.h(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency.g, dimensionBehaviour3, dimensionDependency2.g);
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget.f11490e;
                    if (dimensionBehaviour2 == dimensionBehaviour5) {
                        verticalWidgetRun.f11550e.m = constraintWidget.p();
                    } else {
                        verticalWidgetRun.f11550e.d(constraintWidget.p());
                        constraintWidget.f11487a = true;
                    }
                } else {
                    dependencyGraph = this;
                    if (z4 && z2) {
                        dependencyGraph.h(constraintWidget, dimensionBehaviour3, dimensionDependency.g, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency2.g);
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget.d;
                        if (dimensionBehaviour == dimensionBehaviour6) {
                            horizontalWidgetRun.f11550e.m = constraintWidget.v();
                        } else {
                            horizontalWidgetRun.f11550e.d(constraintWidget.v());
                            constraintWidget.f11487a = true;
                        }
                    }
                }
                if (constraintWidget.f11487a && (baselineDimensionDependency = constraintWidget.f11490e.l) != null) {
                    baselineDimensionDependency.d(constraintWidget.e0);
                }
                this = dependencyGraph;
            }
        }
    }
}
