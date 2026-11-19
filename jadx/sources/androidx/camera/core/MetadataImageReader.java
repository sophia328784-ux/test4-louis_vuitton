package androidx.camera.core;

import android.media.ImageReader;
import android.util.LongSparseArray;
import android.view.Surface;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.core.util.Preconditions;
import defpackage.aa0;
import defpackage.fw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class MetadataImageReader implements ImageReaderProxy, ForwardingImageProxy.OnImageCloseListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f1937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraCaptureCallback f1938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1939c;
    public final fw d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1940e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageReaderProxy f1941f;
    public ImageReaderProxy.OnImageAvailableListener g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Executor f1942h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LongSparseArray f1943i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LongSparseArray f1944j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1945k;
    public final ArrayList l;
    public final ArrayList m;

    public MetadataImageReader(int i2, int i3, int i4, int i5) {
        AndroidImageReaderProxy androidImageReaderProxy = new AndroidImageReaderProxy(ImageReader.newInstance(i2, i3, i4, i5));
        this.f1937a = new Object();
        this.f1938b = new CameraCaptureCallback() { // from class: androidx.camera.core.MetadataImageReader.1
            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public final void b(int i6, CameraCaptureResult cameraCaptureResult) {
                MetadataImageReader metadataImageReader = MetadataImageReader.this;
                synchronized (metadataImageReader.f1937a) {
                    try {
                        if (metadataImageReader.f1940e) {
                            return;
                        }
                        metadataImageReader.f1943i.put(cameraCaptureResult.d(), new CameraCaptureResultImageInfo(cameraCaptureResult));
                        metadataImageReader.k();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.f1939c = 0;
        this.d = new fw(this, 26);
        this.f1940e = false;
        this.f1943i = new LongSparseArray();
        this.f1944j = new LongSparseArray();
        this.m = new ArrayList();
        this.f1941f = androidImageReaderProxy;
        this.f1945k = 0;
        this.l = new ArrayList(d());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy a() {
        synchronized (this.f1937a) {
            try {
                if (this.l.isEmpty()) {
                    return null;
                }
                if (this.f1945k >= this.l.size()) {
                    throw new IllegalStateException("Maximum image number reached.");
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.l.size() - 1; i2++) {
                    if (!this.m.contains(this.l.get(i2))) {
                        arrayList.add((ImageProxy) this.l.get(i2));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ImageProxy) it.next()).close();
                }
                int size = this.l.size();
                ArrayList arrayList2 = this.l;
                this.f1945k = size;
                ImageProxy imageProxy = (ImageProxy) arrayList2.get(size - 1);
                this.m.add(imageProxy);
                return imageProxy;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int b() {
        int iB;
        synchronized (this.f1937a) {
            iB = this.f1941f.b();
        }
        return iB;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void c() {
        synchronized (this.f1937a) {
            this.f1941f.c();
            this.g = null;
            this.f1942h = null;
            this.f1939c = 0;
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void close() {
        synchronized (this.f1937a) {
            try {
                if (this.f1940e) {
                    return;
                }
                Iterator it = new ArrayList(this.l).iterator();
                while (it.hasNext()) {
                    ((ImageProxy) it.next()).close();
                }
                this.l.clear();
                ((AndroidImageReaderProxy) this.f1941f).close();
                this.f1940e = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int d() {
        int iD;
        synchronized (this.f1937a) {
            iD = this.f1941f.d();
        }
        return iD;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void e(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        synchronized (this.f1937a) {
            onImageAvailableListener.getClass();
            this.g = onImageAvailableListener;
            executor.getClass();
            this.f1942h = executor;
            ((AndroidImageReaderProxy) this.f1941f).e(this.d, executor);
        }
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void f(ForwardingImageProxy forwardingImageProxy) {
        synchronized (this.f1937a) {
            h(forwardingImageProxy);
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy g() {
        synchronized (this.f1937a) {
            try {
                if (this.l.isEmpty()) {
                    return null;
                }
                if (this.f1945k >= this.l.size()) {
                    throw new IllegalStateException("Maximum image number reached.");
                }
                ArrayList arrayList = this.l;
                int i2 = this.f1945k;
                this.f1945k = i2 + 1;
                ImageProxy imageProxy = (ImageProxy) arrayList.get(i2);
                this.m.add(imageProxy);
                return imageProxy;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getHeight() {
        int height;
        synchronized (this.f1937a) {
            height = this.f1941f.getHeight();
        }
        return height;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final Surface getSurface() {
        Surface surface;
        synchronized (this.f1937a) {
            surface = this.f1941f.getSurface();
        }
        return surface;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getWidth() {
        int width;
        synchronized (this.f1937a) {
            width = this.f1941f.getWidth();
        }
        return width;
    }

    public final void h(ForwardingImageProxy forwardingImageProxy) {
        synchronized (this.f1937a) {
            try {
                int iIndexOf = this.l.indexOf(forwardingImageProxy);
                if (iIndexOf >= 0) {
                    this.l.remove(iIndexOf);
                    int i2 = this.f1945k;
                    if (iIndexOf <= i2) {
                        this.f1945k = i2 - 1;
                    }
                }
                this.m.remove(forwardingImageProxy);
                if (this.f1939c > 0) {
                    j(this.f1941f);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(SettableImageProxy settableImageProxy) {
        ImageReaderProxy.OnImageAvailableListener onImageAvailableListener;
        Executor executor;
        synchronized (this.f1937a) {
            try {
                if (this.l.size() < d()) {
                    settableImageProxy.c(this);
                    this.l.add(settableImageProxy);
                    onImageAvailableListener = this.g;
                    executor = this.f1942h;
                } else {
                    Logger.c(3, "TAG");
                    settableImageProxy.close();
                    onImageAvailableListener = null;
                    executor = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (onImageAvailableListener != null) {
            if (executor != null) {
                executor.execute(new aa0(this, onImageAvailableListener, 12));
            } else {
                onImageAvailableListener.d(this);
            }
        }
    }

    public final void j(ImageReaderProxy imageReaderProxy) {
        ImageProxy imageProxyG;
        synchronized (this.f1937a) {
            try {
                if (this.f1940e) {
                    return;
                }
                int size = this.f1944j.size() + this.l.size();
                if (size >= imageReaderProxy.d()) {
                    Logger.c(3, "MetadataImageReader");
                    return;
                }
                do {
                    try {
                        imageProxyG = imageReaderProxy.g();
                        if (imageProxyG != null) {
                            this.f1939c--;
                            size++;
                            this.f1944j.put(imageProxyG.p1().d(), imageProxyG);
                            k();
                        }
                    } catch (IllegalStateException unused) {
                        Logger.c(3, "MetadataImageReader");
                        imageProxyG = null;
                    }
                    if (imageProxyG == null || this.f1939c <= 0) {
                        break;
                    }
                } while (size < imageReaderProxy.d());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k() {
        synchronized (this.f1937a) {
            try {
                for (int size = this.f1943i.size() - 1; size >= 0; size--) {
                    ImageInfo imageInfo = (ImageInfo) this.f1943i.valueAt(size);
                    long jD = imageInfo.d();
                    ImageProxy imageProxy = (ImageProxy) this.f1944j.get(jD);
                    if (imageProxy != null) {
                        this.f1944j.remove(jD);
                        this.f1943i.removeAt(size);
                        i(new SettableImageProxy(imageProxy, null, imageInfo));
                    }
                }
                l();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l() {
        synchronized (this.f1937a) {
            try {
                if (this.f1944j.size() != 0 && this.f1943i.size() != 0) {
                    long jKeyAt = this.f1944j.keyAt(0);
                    Long lValueOf = Long.valueOf(jKeyAt);
                    long jKeyAt2 = this.f1943i.keyAt(0);
                    Preconditions.a(!Long.valueOf(jKeyAt2).equals(lValueOf));
                    if (jKeyAt2 > jKeyAt) {
                        for (int size = this.f1944j.size() - 1; size >= 0; size--) {
                            if (this.f1944j.keyAt(size) < jKeyAt2) {
                                ((ImageProxy) this.f1944j.valueAt(size)).close();
                                this.f1944j.removeAt(size);
                            }
                        }
                    } else {
                        for (int size2 = this.f1943i.size() - 1; size2 >= 0; size2--) {
                            if (this.f1943i.keyAt(size2) < jKeyAt) {
                                this.f1943i.removeAt(size2);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
