package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class HelperReferences extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        Barrier barrier = (Barrier) this.f11548b;
        int i2 = barrier.y0;
        DependencyNode dependencyNode = this.f11552h;
        Iterator it = dependencyNode.l.iterator();
        int i3 = 0;
        int i4 = -1;
        while (it.hasNext()) {
            int i5 = ((DependencyNode) it.next()).g;
            if (i4 == -1 || i5 < i4) {
                i4 = i5;
            }
            if (i3 < i5) {
                i3 = i5;
            }
        }
        if (i2 == 0 || i2 == 2) {
            dependencyNode.d(i4 + barrier.A0);
        } else {
            dependencyNode.d(i3 + barrier.A0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget = this.f11548b;
        if (constraintWidget instanceof Barrier) {
            DependencyNode dependencyNode = this.f11552h;
            dependencyNode.f11527b = true;
            ArrayList arrayList = dependencyNode.l;
            Barrier barrier = (Barrier) constraintWidget;
            int i2 = barrier.y0;
            boolean z = barrier.z0;
            int i3 = 0;
            if (i2 == 0) {
                dependencyNode.f11529e = DependencyNode.Type.LEFT;
                while (i3 < barrier.x0) {
                    ConstraintWidget constraintWidget2 = barrier.w0[i3];
                    if (z || constraintWidget2.k0 != 8) {
                        DependencyNode dependencyNode2 = constraintWidget2.d.f11552h;
                        dependencyNode2.f11534k.add(dependencyNode);
                        arrayList.add(dependencyNode2);
                    }
                    i3++;
                }
                m(this.f11548b.d.f11552h);
                m(this.f11548b.d.f11553i);
                return;
            }
            if (i2 == 1) {
                dependencyNode.f11529e = DependencyNode.Type.RIGHT;
                while (i3 < barrier.x0) {
                    ConstraintWidget constraintWidget3 = barrier.w0[i3];
                    if (z || constraintWidget3.k0 != 8) {
                        DependencyNode dependencyNode3 = constraintWidget3.d.f11553i;
                        dependencyNode3.f11534k.add(dependencyNode);
                        arrayList.add(dependencyNode3);
                    }
                    i3++;
                }
                m(this.f11548b.d.f11552h);
                m(this.f11548b.d.f11553i);
                return;
            }
            if (i2 == 2) {
                dependencyNode.f11529e = DependencyNode.Type.TOP;
                while (i3 < barrier.x0) {
                    ConstraintWidget constraintWidget4 = barrier.w0[i3];
                    if (z || constraintWidget4.k0 != 8) {
                        DependencyNode dependencyNode4 = constraintWidget4.f11490e.f11552h;
                        dependencyNode4.f11534k.add(dependencyNode);
                        arrayList.add(dependencyNode4);
                    }
                    i3++;
                }
                m(this.f11548b.f11490e.f11552h);
                m(this.f11548b.f11490e.f11553i);
                return;
            }
            if (i2 != 3) {
                return;
            }
            dependencyNode.f11529e = DependencyNode.Type.BOTTOM;
            while (i3 < barrier.x0) {
                ConstraintWidget constraintWidget5 = barrier.w0[i3];
                if (z || constraintWidget5.k0 != 8) {
                    DependencyNode dependencyNode5 = constraintWidget5.f11490e.f11553i;
                    dependencyNode5.f11534k.add(dependencyNode);
                    arrayList.add(dependencyNode5);
                }
                i3++;
            }
            m(this.f11548b.f11490e.f11552h);
            m(this.f11548b.f11490e.f11553i);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        ConstraintWidget constraintWidget = this.f11548b;
        if (constraintWidget instanceof Barrier) {
            int i2 = ((Barrier) constraintWidget).y0;
            DependencyNode dependencyNode = this.f11552h;
            if (i2 == 0 || i2 == 1) {
                constraintWidget.c0 = dependencyNode.g;
            } else {
                constraintWidget.d0 = dependencyNode.g;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
        this.f11549c = null;
        this.f11552h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final boolean k() {
        return false;
    }

    public final void m(DependencyNode dependencyNode) {
        DependencyNode dependencyNode2 = this.f11552h;
        dependencyNode2.f11534k.add(dependencyNode);
        dependencyNode.l.add(dependencyNode2);
    }
}
