package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DependencyNode implements Dependency {
    public final WidgetRun d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11530f;
    public int g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WidgetRun f11526a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f11527b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11528c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Type f11529e = Type.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11531h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DimensionDependency f11532i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11533j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f11534k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BASELINE;
        public static final Type BOTTOM;
        public static final Type HORIZONTAL_DIMENSION;
        public static final Type LEFT;
        public static final Type RIGHT;
        public static final Type TOP;
        public static final Type UNKNOWN;
        public static final Type VERTICAL_DIMENSION;

        static {
            Type type = new Type("UNKNOWN", 0);
            UNKNOWN = type;
            Type type2 = new Type("HORIZONTAL_DIMENSION", 1);
            HORIZONTAL_DIMENSION = type2;
            Type type3 = new Type("VERTICAL_DIMENSION", 2);
            VERTICAL_DIMENSION = type3;
            Type type4 = new Type("LEFT", 3);
            LEFT = type4;
            Type type5 = new Type("RIGHT", 4);
            RIGHT = type5;
            Type type6 = new Type("TOP", 5);
            TOP = type6;
            Type type7 = new Type("BOTTOM", 6);
            BOTTOM = type7;
            Type type8 = new Type("BASELINE", 7);
            BASELINE = type8;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.d = widgetRun;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        ArrayList<DependencyNode> arrayList = this.l;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).f11533j) {
                return;
            }
        }
        this.f11528c = true;
        WidgetRun widgetRun = this.f11526a;
        if (widgetRun != null) {
            widgetRun.a(this);
        }
        if (this.f11527b) {
            this.d.a(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i2 = 0;
        for (DependencyNode dependencyNode2 : arrayList) {
            if (!(dependencyNode2 instanceof DimensionDependency)) {
                i2++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i2 == 1 && dependencyNode.f11533j) {
            DimensionDependency dimensionDependency = this.f11532i;
            if (dimensionDependency != null) {
                if (!dimensionDependency.f11533j) {
                    return;
                } else {
                    this.f11530f = this.f11531h * dimensionDependency.g;
                }
            }
            d(dependencyNode.g + this.f11530f);
        }
        WidgetRun widgetRun2 = this.f11526a;
        if (widgetRun2 != null) {
            widgetRun2.a(this);
        }
    }

    public final void b(WidgetRun widgetRun) {
        this.f11534k.add(widgetRun);
        if (this.f11533j) {
            widgetRun.a(widgetRun);
        }
    }

    public final void c() {
        this.l.clear();
        this.f11534k.clear();
        this.f11533j = false;
        this.g = 0;
        this.f11528c = false;
        this.f11527b = false;
    }

    public void d(int i2) {
        if (this.f11533j) {
            return;
        }
        this.f11533j = true;
        this.g = i2;
        for (Dependency dependency : this.f11534k) {
            dependency.a(dependency);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.f11548b.m0);
        sb.append(":");
        sb.append(this.f11529e);
        sb.append("(");
        sb.append(this.f11533j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.f11534k.size());
        sb.append(">");
        return sb.toString();
    }
}
