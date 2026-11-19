package androidx.camera.core;

import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

/* JADX INFO: loaded from: classes.dex */
public interface ImageInfo {
    default int a() {
        return 0;
    }

    void b(ExifData.Builder builder);

    TagBundle c();

    long d();
}
