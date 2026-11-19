package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class RunGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WidgetRun f11538a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f11539b;

    public static long a(DependencyNode dependencyNode, long j2) {
        WidgetRun widgetRun = dependencyNode.d;
        ArrayList arrayList = dependencyNode.f11534k;
        if (widgetRun instanceof HelperReferences) {
            return j2;
        }
        int size = arrayList.size();
        long jMin = j2;
        for (int i2 = 0; i2 < size; i2++) {
            Dependency dependency = (Dependency) arrayList.get(i2);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.d != widgetRun) {
                    jMin = Math.min(jMin, a(dependencyNode2, ((long) dependencyNode2.f11530f) + j2));
                }
            }
        }
        DependencyNode dependencyNode3 = widgetRun.f11553i;
        DependencyNode dependencyNode4 = widgetRun.f11552h;
        if (dependencyNode != dependencyNode3) {
            return jMin;
        }
        long j3 = j2 - widgetRun.j();
        return Math.min(Math.min(jMin, a(dependencyNode4, j3)), j3 - ((long) dependencyNode4.f11530f));
    }

    public static long b(DependencyNode dependencyNode, long j2) {
        WidgetRun widgetRun = dependencyNode.d;
        ArrayList arrayList = dependencyNode.f11534k;
        if (widgetRun instanceof HelperReferences) {
            return j2;
        }
        int size = arrayList.size();
        long jMax = j2;
        for (int i2 = 0; i2 < size; i2++) {
            Dependency dependency = (Dependency) arrayList.get(i2);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.d != widgetRun) {
                    jMax = Math.max(jMax, b(dependencyNode2, ((long) dependencyNode2.f11530f) + j2));
                }
            }
        }
        DependencyNode dependencyNode3 = widgetRun.f11552h;
        DependencyNode dependencyNode4 = widgetRun.f11553i;
        if (dependencyNode != dependencyNode3) {
            return jMax;
        }
        long j3 = widgetRun.j() + j2;
        return Math.max(Math.max(jMax, b(dependencyNode4, j3)), j3 - ((long) dependencyNode4.f11530f));
    }
}
