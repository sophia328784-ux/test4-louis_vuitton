package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.media.ImageWriter;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ZslDisablerQuirk;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.internal.utils.ZslRingBuffer;
import defpackage.a61;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class ZslControlImpl implements ZslControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CameraCharacteristicsCompat f1666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f1667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ZslRingBuffer f1668c;
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1669e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1670f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SafeCloseImageReaderProxy f1671h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImmediateSurface f1672i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ImageWriterHolder f1673j;

    public static class ImageWriterHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ImageWriter f1675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicBoolean f1676b = new AtomicBoolean(true);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Executor f1677c;

        public ImageWriterHolder(Executor executor) {
            this.f1677c = executor;
        }
    }

    public ZslControlImpl(CameraCharacteristicsCompat cameraCharacteristicsCompat, Executor executor) {
        boolean z;
        this.f1670f = false;
        this.g = false;
        this.f1666a = cameraCharacteristicsCompat;
        this.f1667b = executor;
        int[] iArr = (int[]) cameraCharacteristicsCompat.a(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr == null) {
            z = false;
            break;
        }
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            } else {
                if (iArr[i2] == 4) {
                    z = true;
                    break;
                }
                i2++;
            }
        }
        this.f1670f = z;
        this.g = DeviceQuirks.f1731a.b(ZslDisablerQuirk.class) != null;
        this.f1668c = new ZslRingBuffer(3, new a61(11));
    }

    public final void a() {
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = this.f1671h;
        if (safeCloseImageReaderProxy != null) {
            safeCloseImageReaderProxy.c();
            this.f1671h = null;
        }
        ImageWriterHolder imageWriterHolder = this.f1673j;
        if (imageWriterHolder != null) {
            imageWriterHolder.f1676b.set(false);
            this.f1673j = null;
        }
        while (true) {
            ZslRingBuffer zslRingBuffer = this.f1668c;
            if (zslRingBuffer.c()) {
                break;
            } else {
                ((ImageProxy) zslRingBuffer.a()).close();
            }
        }
        ImmediateSurface immediateSurface = this.f1672i;
        if (immediateSurface != null) {
            immediateSurface.a();
            this.f1672i = null;
        }
    }
}
