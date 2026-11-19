package androidx.camera.core.impl;

import android.util.Size;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public abstract class OutputSurface {
    public static OutputSurface a(Surface surface, Size size, int i2) {
        return new AutoValue_OutputSurface(surface, size, i2);
    }

    public abstract int b();

    public abstract Size c();

    public abstract Surface d();
}
