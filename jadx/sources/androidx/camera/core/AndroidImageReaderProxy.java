package androidx.camera.core;

import android.media.Image;
import android.media.ImageReader;
import android.view.Surface;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.MainThreadAsyncHandler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class AndroidImageReaderProxy implements ImageReaderProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageReader f1861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1862b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1863c = true;

    public AndroidImageReaderProxy(ImageReader imageReader) {
        this.f1861a = imageReader;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy a() {
        Image imageAcquireLatestImage;
        synchronized (this.f1862b) {
            try {
                imageAcquireLatestImage = this.f1861a.acquireLatestImage();
            } catch (RuntimeException e2) {
                if (!"ImageReaderContext is not initialized".equals(e2.getMessage())) {
                    throw e2;
                }
                imageAcquireLatestImage = null;
            }
            if (imageAcquireLatestImage == null) {
                return null;
            }
            return new AndroidImageProxy(imageAcquireLatestImage);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int b() {
        int imageFormat;
        synchronized (this.f1862b) {
            imageFormat = this.f1861a.getImageFormat();
        }
        return imageFormat;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void c() {
        synchronized (this.f1862b) {
            this.f1863c = true;
            this.f1861a.setOnImageAvailableListener(null, null);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void close() {
        synchronized (this.f1862b) {
            this.f1861a.close();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int d() {
        int maxImages;
        synchronized (this.f1862b) {
            maxImages = this.f1861a.getMaxImages();
        }
        return maxImages;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void e(final ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, final Executor executor) {
        synchronized (this.f1862b) {
            this.f1863c = false;
            this.f1861a.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.camera.core.a
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader) {
                    AndroidImageReaderProxy androidImageReaderProxy = this.f2011b;
                    Executor executor2 = executor;
                    ImageReaderProxy.OnImageAvailableListener onImageAvailableListener2 = onImageAvailableListener;
                    synchronized (androidImageReaderProxy.f1862b) {
                        try {
                            if (!androidImageReaderProxy.f1863c) {
                                executor2.execute(new c(androidImageReaderProxy, onImageAvailableListener2, 3));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }, MainThreadAsyncHandler.a());
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy g() {
        Image imageAcquireNextImage;
        synchronized (this.f1862b) {
            try {
                imageAcquireNextImage = this.f1861a.acquireNextImage();
            } catch (RuntimeException e2) {
                if (!"ImageReaderContext is not initialized".equals(e2.getMessage())) {
                    throw e2;
                }
                imageAcquireNextImage = null;
            }
            if (imageAcquireNextImage == null) {
                return null;
            }
            return new AndroidImageProxy(imageAcquireNextImage);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getHeight() {
        int height;
        synchronized (this.f1862b) {
            height = this.f1861a.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final Surface getSurface() {
        Surface surface;
        synchronized (this.f1862b) {
            surface = this.f1861a.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getWidth() {
        int width;
        synchronized (this.f1862b) {
            width = this.f1861a.getWidth();
        }
        return width;
    }
}
