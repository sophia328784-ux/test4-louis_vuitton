package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.media.Image;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;
import androidx.camera.core.processing.Packet;
import androidx.core.util.Preconditions;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class RgbaImageProxy implements ImageProxy {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2122c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ImageProxy.PlaneProxy[] f2123e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageInfo f2124f;

    /* JADX WARN: Illegal instructions before constructor call */
    public RgbaImageProxy(Bitmap bitmap, Rect rect, int i2, Matrix matrix, long j2) {
        Preconditions.b(bitmap.getConfig() == Bitmap.Config.ARGB_8888, "Only accept Bitmap with ARGB_8888 format for now.");
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bitmap.getAllocationByteCount());
        ImageProcessingUtil.d(bitmap, byteBufferAllocateDirect, bitmap.getRowBytes());
        byteBufferAllocateDirect.rewind();
        this(byteBufferAllocateDirect, 4, bitmap.getWidth(), bitmap.getHeight(), rect, i2, matrix, j2);
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageProxy.PlaneProxy[] L0() {
        ImageProxy.PlaneProxy[] planeProxyArr;
        synchronized (this.f2121b) {
            h();
            ImageProxy.PlaneProxy[] planeProxyArr2 = this.f2123e;
            Objects.requireNonNull(planeProxyArr2);
            planeProxyArr = planeProxyArr2;
        }
        return planeProxyArr;
    }

    @Override // androidx.camera.core.ImageProxy
    public final Image O() {
        synchronized (this.f2121b) {
            h();
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f2121b) {
            h();
            this.f2123e = null;
        }
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getFormat() {
        synchronized (this.f2121b) {
            h();
        }
        return 1;
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getHeight() {
        int i2;
        synchronized (this.f2121b) {
            h();
            i2 = this.d;
        }
        return i2;
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getWidth() {
        int i2;
        synchronized (this.f2121b) {
            h();
            i2 = this.f2122c;
        }
        return i2;
    }

    public final void h() {
        synchronized (this.f2121b) {
            Preconditions.f("The image is closed.", this.f2123e != null);
        }
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageInfo p1() {
        ImageInfo imageInfo;
        synchronized (this.f2121b) {
            h();
            imageInfo = this.f2124f;
        }
        return imageInfo;
    }

    public RgbaImageProxy(final ByteBuffer byteBuffer, final int i2, int i3, int i4, Rect rect, int i5, Matrix matrix, final long j2) {
        this.f2121b = new Object();
        this.f2122c = i3;
        this.d = i4;
        this.f2124f = new ImageInfo() { // from class: androidx.camera.core.imagecapture.RgbaImageProxy.2
            @Override // androidx.camera.core.ImageInfo
            public final void b(ExifData.Builder builder) {
                throw new UnsupportedOperationException("Custom ImageProxy does not contain Exif data.");
            }

            @Override // androidx.camera.core.ImageInfo
            public final TagBundle c() {
                throw new UnsupportedOperationException("Custom ImageProxy does not contain TagBundle");
            }

            @Override // androidx.camera.core.ImageInfo
            public final long d() {
                return j2;
            }
        };
        byteBuffer.rewind();
        final int i6 = i3 * i2;
        this.f2123e = new ImageProxy.PlaneProxy[]{new ImageProxy.PlaneProxy() { // from class: androidx.camera.core.imagecapture.RgbaImageProxy.1
            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            public final ByteBuffer L() {
                return byteBuffer;
            }

            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            public final int M() {
                return i6;
            }

            @Override // androidx.camera.core.ImageProxy.PlaneProxy
            public final int N() {
                return i2;
            }
        }};
    }

    public RgbaImageProxy(Packet<Bitmap> packet) {
        this((Bitmap) packet.c(), packet.b(), packet.f(), packet.g(), packet.a().d());
    }
}
