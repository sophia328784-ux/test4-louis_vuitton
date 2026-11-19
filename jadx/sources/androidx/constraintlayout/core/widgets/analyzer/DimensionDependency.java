package androidx.constraintlayout.core.widgets.analyzer;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class DimensionDependency extends DependencyNode {
    public int m;

    public DimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof HorizontalWidgetRun) {
            this.f11529e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f11529e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.DependencyNode
    public final void d(int i2) {
        if (this.f11533j) {
            return;
        }
        this.f11533j = true;
        this.g = i2;
        for (Dependency dependency : this.f11534k) {
            dependency.a(dependency);
        }
    }
}
