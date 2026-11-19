package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_AttachedSurfaceInfo extends AttachedSurfaceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SurfaceConfig f2161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Size f2163c;
    public final DynamicRange d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f2164e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Config f2165f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Range f2166h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f2167i;

    public AutoValue_AttachedSurfaceInfo(SurfaceConfig surfaceConfig, int i2, Size size, DynamicRange dynamicRange, List list, Config config, int i3, Range range, boolean z) {
        if (surfaceConfig == null) {
            r81.d("Null surfaceConfig");
            throw null;
        }
        this.f2161a = surfaceConfig;
        this.f2162b = i2;
        if (size == null) {
            r81.d("Null size");
            throw null;
        }
        this.f2163c = size;
        if (dynamicRange == null) {
            r81.d("Null dynamicRange");
            throw null;
        }
        this.d = dynamicRange;
        if (list == null) {
            r81.d("Null captureTypes");
            throw null;
        }
        this.f2164e = list;
        this.f2165f = config;
        this.g = i3;
        if (range == null) {
            r81.d("Null targetFrameRate");
            throw null;
        }
        this.f2166h = range;
        this.f2167i = z;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final List b() {
        return this.f2164e;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final DynamicRange c() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final int d() {
        return this.f2162b;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final Config e() {
        return this.f2165f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AttachedSurfaceInfo) {
            AutoValue_AttachedSurfaceInfo autoValue_AttachedSurfaceInfo = (AutoValue_AttachedSurfaceInfo) ((AttachedSurfaceInfo) obj);
            if (this.f2161a.equals(autoValue_AttachedSurfaceInfo.f2161a) && this.f2162b == autoValue_AttachedSurfaceInfo.f2162b && this.f2163c.equals(autoValue_AttachedSurfaceInfo.f2163c) && this.d.equals(autoValue_AttachedSurfaceInfo.d) && this.f2164e.equals(autoValue_AttachedSurfaceInfo.f2164e)) {
                Config config = autoValue_AttachedSurfaceInfo.f2165f;
                Config config2 = this.f2165f;
                if (config2 != null ? config2.equals(config) : config == null) {
                    if (this.g == autoValue_AttachedSurfaceInfo.g && this.f2166h.equals(autoValue_AttachedSurfaceInfo.f2166h) && this.f2167i == autoValue_AttachedSurfaceInfo.f2167i) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final int f() {
        return this.g;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final Size g() {
        return this.f2163c;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final SurfaceConfig h() {
        return this.f2161a;
    }

    public final int hashCode() {
        int iHashCode = (((((((((this.f2161a.hashCode() ^ 1000003) * 1000003) ^ this.f2162b) * 1000003) ^ this.f2163c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f2164e.hashCode()) * 1000003;
        Config config = this.f2165f;
        return (this.f2167i ? 1231 : 1237) ^ ((((((iHashCode ^ (config == null ? 0 : config.hashCode())) * 1000003) ^ this.g) * 1000003) ^ this.f2166h.hashCode()) * 1000003);
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final Range i() {
        return this.f2166h;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public final boolean j() {
        return this.f2167i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AttachedSurfaceInfo{surfaceConfig=");
        sb.append(this.f2161a);
        sb.append(", imageFormat=");
        sb.append(this.f2162b);
        sb.append(", size=");
        sb.append(this.f2163c);
        sb.append(", dynamicRange=");
        sb.append(this.d);
        sb.append(", captureTypes=");
        sb.append(this.f2164e);
        sb.append(", implementationOptions=");
        sb.append(this.f2165f);
        sb.append(", sessionType=");
        sb.append(this.g);
        sb.append(", targetFrameRate=");
        sb.append(this.f2166h);
        sb.append(", strictFrameRateRequired=");
        return defpackage.a.p(sb, this.f2167i, "}");
    }
}
