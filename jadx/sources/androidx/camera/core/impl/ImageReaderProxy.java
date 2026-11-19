package androidx.camera.core.impl;

import android.view.Surface;
import androidx.camera.core.ImageProxy;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public interface ImageReaderProxy {

    public interface OnImageAvailableListener {
        void d(ImageReaderProxy imageReaderProxy);
    }

    ImageProxy a();

    int b();

    void c();

    void close();

    int d();

    void e(OnImageAvailableListener onImageAvailableListener, Executor executor);

    ImageProxy g();

    int getHeight();

    Surface getSurface();

    int getWidth();
}
