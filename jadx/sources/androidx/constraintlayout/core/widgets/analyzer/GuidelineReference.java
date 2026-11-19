package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Guideline;

/* JADX INFO: loaded from: classes.dex */
class GuidelineReference extends WidgetRun {
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        DependencyNode dependencyNode = this.f11552h;
        if (dependencyNode.f11528c && !dependencyNode.f11533j) {
            dependencyNode.d((int) ((((DependencyNode) dependencyNode.l.get(0)).g * ((Guideline) this.f11548b).w0) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget = this.f11548b;
        Guideline guideline = (Guideline) constraintWidget;
        int i2 = guideline.x0;
        int i3 = guideline.y0;
        int i4 = guideline.A0;
        DependencyNode dependencyNode = this.f11552h;
        if (i4 == 1) {
            if (i2 != -1) {
                dependencyNode.l.add(constraintWidget.X.d.f11552h);
                this.f11548b.X.d.f11552h.f11534k.add(dependencyNode);
                dependencyNode.f11530f = i2;
            } else if (i3 != -1) {
                dependencyNode.l.add(constraintWidget.X.d.f11553i);
                this.f11548b.X.d.f11553i.f11534k.add(dependencyNode);
                dependencyNode.f11530f = -i3;
            } else {
                dependencyNode.f11527b = true;
                dependencyNode.l.add(constraintWidget.X.d.f11553i);
                this.f11548b.X.d.f11553i.f11534k.add(dependencyNode);
            }
            m(this.f11548b.d.f11552h);
            m(this.f11548b.d.f11553i);
            return;
        }
        if (i2 != -1) {
            dependencyNode.l.add(constraintWidget.X.f11490e.f11552h);
            this.f11548b.X.f11490e.f11552h.f11534k.add(dependencyNode);
            dependencyNode.f11530f = i2;
        } else if (i3 != -1) {
            dependencyNode.l.add(constraintWidget.X.f11490e.f11553i);
            this.f11548b.X.f11490e.f11553i.f11534k.add(dependencyNode);
            dependencyNode.f11530f = -i3;
        } else {
            dependencyNode.f11527b = true;
            dependencyNode.l.add(constraintWidget.X.f11490e.f11553i);
            this.f11548b.X.f11490e.f11553i.f11534k.add(dependencyNode);
        }
        m(this.f11548b.f11490e.f11552h);
        m(this.f11548b.f11490e.f11553i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void e() {
        ConstraintWidget constraintWidget = this.f11548b;
        int i2 = ((Guideline) constraintWidget).A0;
        DependencyNode dependencyNode = this.f11552h;
        if (i2 == 1) {
            constraintWidget.c0 = dependencyNode.g;
        } else {
            constraintWidget.d0 = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public final void f() {
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
