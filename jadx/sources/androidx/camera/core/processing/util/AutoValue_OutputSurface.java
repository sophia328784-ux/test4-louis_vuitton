package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;
import defpackage.a;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutputSurface extends OutputSurface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EGLSurface f2614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2616c;

    public AutoValue_OutputSurface(EGLSurface eGLSurface, int i2, int i3) {
        if (eGLSurface == null) {
            r81.d("Null eglSurface");
            throw null;
        }
        this.f2614a = eGLSurface;
        this.f2615b = i2;
        this.f2616c = i3;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public final EGLSurface a() {
        return this.f2614a;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public final int b() {
        return this.f2616c;
    }

    @Override // androidx.camera.core.processing.util.OutputSurface
    public final int c() {
        return this.f2615b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutputSurface)) {
            return false;
        }
        OutputSurface outputSurface = (OutputSurface) obj;
        return this.f2614a.equals(outputSurface.a()) && this.f2615b == outputSurface.c() && this.f2616c == outputSurface.b();
    }

    public final int hashCode() {
        return this.f2616c ^ ((((this.f2614a.hashCode() ^ 1000003) * 1000003) ^ this.f2615b) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OutputSurface{eglSurface=");
        sb.append(this.f2614a);
        sb.append(", width=");
        sb.append(this.f2615b);
        sb.append(", height=");
        return a.i(this.f2616c, "}", sb);
    }
}
