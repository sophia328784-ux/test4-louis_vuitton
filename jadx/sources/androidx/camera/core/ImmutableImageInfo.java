package androidx.camera.core;

import android.graphics.Matrix;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes.dex */
public abstract class ImmutableImageInfo implements ImageInfo {
    public static ImageInfo e(TagBundle tagBundle, long j2, int i2, Matrix matrix, int i3) {
        return new AutoValue_ImmutableImageInfo(tagBundle, j2, i2, matrix, i3);
    }

    @Override // androidx.camera.core.ImageInfo
    public abstract int a();

    @Override // androidx.camera.core.ImageInfo
    public final void b(ExifData.Builder builder) {
        builder.f(f());
    }

    public abstract int f();

    public abstract Matrix g();
}
