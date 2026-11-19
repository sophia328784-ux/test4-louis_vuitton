package androidx.camera.core;

import android.graphics.Matrix;
import android.media.Image;
import androidx.camera.core.impl.TagBundle;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class AndroidImageProxy implements ImageProxy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Image f1858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlaneProxy[] f1859c;
    public final ImageInfo d;

    public static final class PlaneProxy implements ImageProxy.PlaneProxy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Image.Plane f1860a;

        public PlaneProxy(Image.Plane plane) {
            this.f1860a = plane;
        }

        @Override // androidx.camera.core.ImageProxy.PlaneProxy
        public final ByteBuffer L() {
            return this.f1860a.getBuffer();
        }

        @Override // androidx.camera.core.ImageProxy.PlaneProxy
        public final int M() {
            return this.f1860a.getRowStride();
        }

        @Override // androidx.camera.core.ImageProxy.PlaneProxy
        public final int N() {
            return this.f1860a.getPixelStride();
        }
    }

    public AndroidImageProxy(Image image) {
        this.f1858b = image;
        Image.Plane[] planes = image.getPlanes();
        if (planes != null) {
            this.f1859c = new PlaneProxy[planes.length];
            for (int i2 = 0; i2 < planes.length; i2++) {
                this.f1859c[i2] = new PlaneProxy(planes[i2]);
            }
        } else {
            this.f1859c = new PlaneProxy[0];
        }
        this.d = new AutoValue_ImmutableImageInfo(TagBundle.f2361b, image.getTimestamp(), 0, new Matrix(), 0);
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageProxy.PlaneProxy[] L0() {
        return this.f1859c;
    }

    @Override // androidx.camera.core.ImageProxy
    public final Image O() {
        return this.f1858b;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f1858b.close();
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getFormat() {
        return this.f1858b.getFormat();
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getHeight() {
        return this.f1858b.getHeight();
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getWidth() {
        return this.f1858b.getWidth();
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageInfo p1() {
        return this.d;
    }
}
