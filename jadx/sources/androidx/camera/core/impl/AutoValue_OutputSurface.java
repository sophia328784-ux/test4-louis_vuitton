package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutputSurface extends OutputSurface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Surface f2190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f2191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2192c;

    public AutoValue_OutputSurface(Surface surface, Size size, int i2) {
        if (surface == null) {
            r81.d("Null surface");
            throw null;
        }
        this.f2190a = surface;
        if (size == null) {
            r81.d("Null size");
            throw null;
        }
        this.f2191b = size;
        this.f2192c = i2;
    }

    @Override // androidx.camera.core.impl.OutputSurface
    public final int b() {
        return this.f2192c;
    }

    @Override // androidx.camera.core.impl.OutputSurface
    public final Size c() {
        return this.f2191b;
    }

    @Override // androidx.camera.core.impl.OutputSurface
    public final Surface d() {
        return this.f2190a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutputSurface)) {
            return false;
        }
        OutputSurface outputSurface = (OutputSurface) obj;
        return this.f2190a.equals(outputSurface.d()) && this.f2191b.equals(outputSurface.c()) && this.f2192c == outputSurface.b();
    }

    public final int hashCode() {
        return this.f2192c ^ ((((this.f2190a.hashCode() ^ 1000003) * 1000003) ^ this.f2191b.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OutputSurface{surface=");
        sb.append(this.f2190a);
        sb.append(", size=");
        sb.append(this.f2191b);
        sb.append(", imageFormat=");
        return defpackage.a.i(this.f2192c, "}", sb);
    }
}
