package androidx.camera.core;

import android.view.Surface;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.impl.ImageReaderProxy;
import defpackage.p3;
import defpackage.xt0;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class SafeCloseImageReaderProxy implements ImageReaderProxy {
    public final ImageReaderProxy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Surface f1960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TakePictureManagerImpl f1961f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1957a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1958b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1959c = false;
    public final xt0 g = new ForwardingImageProxy.OnImageCloseListener() { // from class: xt0
        @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
        public final void f(ForwardingImageProxy forwardingImageProxy) {
            TakePictureManagerImpl takePictureManagerImpl;
            SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.f81195a;
            synchronized (safeCloseImageReaderProxy.f1957a) {
                try {
                    int i2 = safeCloseImageReaderProxy.f1958b - 1;
                    safeCloseImageReaderProxy.f1958b = i2;
                    if (safeCloseImageReaderProxy.f1959c && i2 == 0) {
                        safeCloseImageReaderProxy.close();
                    }
                    takePictureManagerImpl = safeCloseImageReaderProxy.f1961f;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (takePictureManagerImpl != null) {
                takePictureManagerImpl.f(forwardingImageProxy);
            }
        }
    };

    /* JADX WARN: Type inference failed for: r0v2, types: [xt0] */
    public SafeCloseImageReaderProxy(ImageReaderProxy imageReaderProxy) {
        this.d = imageReaderProxy;
        this.f1960e = imageReaderProxy.getSurface();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy a() {
        SingleCloseImageProxy singleCloseImageProxy;
        synchronized (this.f1957a) {
            ImageProxy imageProxyA = this.d.a();
            if (imageProxyA != null) {
                this.f1958b++;
                singleCloseImageProxy = new SingleCloseImageProxy(imageProxyA);
                singleCloseImageProxy.c(this.g);
            } else {
                singleCloseImageProxy = null;
            }
        }
        return singleCloseImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int b() {
        int iB;
        synchronized (this.f1957a) {
            iB = this.d.b();
        }
        return iB;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void c() {
        synchronized (this.f1957a) {
            this.d.c();
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void close() {
        synchronized (this.f1957a) {
            try {
                Surface surface = this.f1960e;
                if (surface != null) {
                    surface.release();
                }
                this.d.close();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int d() {
        int iD;
        synchronized (this.f1957a) {
            iD = this.d.d();
        }
        return iD;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void e(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        synchronized (this.f1957a) {
            this.d.e(new p3(this, onImageAvailableListener, 23), executor);
        }
    }

    public final void f() {
        synchronized (this.f1957a) {
            try {
                this.f1959c = true;
                this.d.c();
                if (this.f1958b == 0) {
                    close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy g() {
        SingleCloseImageProxy singleCloseImageProxy;
        synchronized (this.f1957a) {
            ImageProxy imageProxyG = this.d.g();
            if (imageProxyG != null) {
                this.f1958b++;
                singleCloseImageProxy = new SingleCloseImageProxy(imageProxyG);
                singleCloseImageProxy.c(this.g);
            } else {
                singleCloseImageProxy = null;
            }
        }
        return singleCloseImageProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getHeight() {
        int height;
        synchronized (this.f1957a) {
            height = this.d.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final Surface getSurface() {
        Surface surface;
        synchronized (this.f1957a) {
            surface = this.d.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getWidth() {
        int width;
        synchronized (this.f1957a) {
            width = this.d.getWidth();
        }
        return width;
    }
}
