package androidx.camera.core.impl;

import android.util.Size;
import defpackage.r81;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SurfaceSizeDefinition extends SurfaceSizeDefinition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Size f2215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f2216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Size f2217c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Size f2218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f2219f;
    public final Map g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f2220h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map f2221i;

    public AutoValue_SurfaceSizeDefinition(Size size, Map map, Size size2, Map map2, Size size3, Map map3, Map map4, Map map5, Map map6) {
        if (size == null) {
            r81.d("Null analysisSize");
            throw null;
        }
        this.f2215a = size;
        if (map == null) {
            r81.d("Null s720pSizeMap");
            throw null;
        }
        this.f2216b = map;
        if (size2 == null) {
            r81.d("Null previewSize");
            throw null;
        }
        this.f2217c = size2;
        if (map2 == null) {
            r81.d("Null s1440pSizeMap");
            throw null;
        }
        this.d = map2;
        if (size3 == null) {
            r81.d("Null recordSize");
            throw null;
        }
        this.f2218e = size3;
        if (map3 == null) {
            r81.d("Null maximumSizeMap");
            throw null;
        }
        this.f2219f = map3;
        if (map4 == null) {
            r81.d("Null maximum4x3SizeMap");
            throw null;
        }
        this.g = map4;
        if (map5 == null) {
            r81.d("Null maximum16x9SizeMap");
            throw null;
        }
        this.f2220h = map5;
        if (map6 != null) {
            this.f2221i = map6;
        } else {
            r81.d("Null ultraMaximumSizeMap");
            throw null;
        }
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Size b() {
        return this.f2215a;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map c() {
        return this.f2220h;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SurfaceSizeDefinition) {
            AutoValue_SurfaceSizeDefinition autoValue_SurfaceSizeDefinition = (AutoValue_SurfaceSizeDefinition) ((SurfaceSizeDefinition) obj);
            if (this.f2215a.equals(autoValue_SurfaceSizeDefinition.f2215a) && this.f2216b.equals(autoValue_SurfaceSizeDefinition.f2216b) && this.f2217c.equals(autoValue_SurfaceSizeDefinition.f2217c) && this.d.equals(autoValue_SurfaceSizeDefinition.d) && this.f2218e.equals(autoValue_SurfaceSizeDefinition.f2218e) && this.f2219f.equals(autoValue_SurfaceSizeDefinition.f2219f) && this.g.equals(autoValue_SurfaceSizeDefinition.g) && this.f2220h.equals(autoValue_SurfaceSizeDefinition.f2220h) && this.f2221i.equals(autoValue_SurfaceSizeDefinition.f2221i)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map f() {
        return this.f2219f;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Size g() {
        return this.f2218e;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map h() {
        return this.d;
    }

    public final int hashCode() {
        return this.f2221i.hashCode() ^ ((((((((((((((((this.f2215a.hashCode() ^ 1000003) * 1000003) ^ this.f2216b.hashCode()) * 1000003) ^ this.f2217c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f2218e.hashCode()) * 1000003) ^ this.f2219f.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003) ^ this.f2220h.hashCode()) * 1000003);
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map i() {
        return this.f2216b;
    }

    @Override // androidx.camera.core.impl.SurfaceSizeDefinition
    public final Map j() {
        return this.f2221i;
    }

    public final String toString() {
        return "SurfaceSizeDefinition{analysisSize=" + this.f2215a + ", s720pSizeMap=" + this.f2216b + ", previewSize=" + this.f2217c + ", s1440pSizeMap=" + this.d + ", recordSize=" + this.f2218e + ", maximumSizeMap=" + this.f2219f + ", maximum4x3SizeMap=" + this.g + ", maximum16x9SizeMap=" + this.f2220h + ", ultraMaximumSizeMap=" + this.f2221i + "}";
    }
}
