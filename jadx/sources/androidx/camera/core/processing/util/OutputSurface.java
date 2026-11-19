package androidx.camera.core.processing.util;

import android.opengl.EGLSurface;

/* JADX INFO: loaded from: classes.dex */
public abstract class OutputSurface {
    public static OutputSurface d(EGLSurface eGLSurface, int i2, int i3) {
        return new AutoValue_OutputSurface(eGLSurface, i2, i3);
    }

    public abstract EGLSurface a();

    public abstract int b();

    public abstract int c();
}
