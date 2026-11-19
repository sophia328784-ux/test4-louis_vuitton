package androidx.camera.core.imagecapture;

import android.util.Size;

/* JADX INFO: loaded from: classes.dex */
public abstract class PostviewSettings {
    public static PostviewSettings a(Size size, int i2) {
        return new AutoValue_PostviewSettings(size, i2);
    }

    public abstract int b();

    public abstract Size c();
}
