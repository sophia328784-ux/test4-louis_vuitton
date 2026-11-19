package androidx.camera.core.imagecapture;

import android.util.ArrayMap;
import android.util.Pair;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.camera.core.streamsharing.VirtualCameraCaptureResult;
import defpackage.p3;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class NoMetadataImageReader implements ImageReaderProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImageReaderProxy f2094a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ProcessingRequest f2095b;

    public NoMetadataImageReader(ImageReaderProxy imageReaderProxy) {
        this.f2094a = imageReaderProxy;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy a() {
        return f(this.f2094a.a());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int b() {
        return this.f2094a.b();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void c() {
        this.f2094a.c();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void close() {
        this.f2094a.close();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int d() {
        return this.f2094a.d();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final void e(ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, Executor executor) {
        this.f2094a.e(new p3(this, onImageAvailableListener, 18), executor);
    }

    public final SettableImageProxy f(ImageProxy imageProxy) {
        TagBundle tagBundle;
        if (imageProxy == null) {
            return null;
        }
        if (this.f2095b == null) {
            tagBundle = TagBundle.f2361b;
        } else {
            ProcessingRequest processingRequest = this.f2095b;
            Pair pair = new Pair(processingRequest.f2112j, processingRequest.f2113k.get(0));
            TagBundle tagBundle2 = TagBundle.f2361b;
            ArrayMap arrayMap = new ArrayMap();
            arrayMap.put((String) pair.first, pair.second);
            tagBundle = new TagBundle(arrayMap);
        }
        this.f2095b = null;
        return new SettableImageProxy(imageProxy, new Size(imageProxy.getWidth(), imageProxy.getHeight()), new CameraCaptureResultImageInfo(new VirtualCameraCaptureResult(tagBundle, imageProxy.p1().d())));
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final ImageProxy g() {
        return f(this.f2094a.g());
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getHeight() {
        return this.f2094a.getHeight();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final Surface getSurface() {
        return this.f2094a.getSurface();
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy
    public final int getWidth() {
        return this.f2094a.getWidth();
    }
}
