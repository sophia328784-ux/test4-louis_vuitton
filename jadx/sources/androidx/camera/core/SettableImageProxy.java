package androidx.camera.core;

import android.util.Size;

/* JADX INFO: loaded from: classes.dex */
public final class SettableImageProxy extends ForwardingImageProxy {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImageInfo f1970f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1971h;

    public SettableImageProxy(ImageProxy imageProxy, Size size, ImageInfo imageInfo) {
        super(imageProxy);
        this.f1969e = new Object();
        if (size == null) {
            this.g = this.f1921c.getWidth();
            this.f1971h = this.f1921c.getHeight();
        } else {
            this.g = size.getWidth();
            this.f1971h = size.getHeight();
        }
        this.f1970f = imageInfo;
    }

    @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
    public final int getHeight() {
        return this.f1971h;
    }

    @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
    public final int getWidth() {
        return this.g;
    }

    @Override // androidx.camera.core.ForwardingImageProxy, androidx.camera.core.ImageProxy
    public final ImageInfo p1() {
        return this.f1970f;
    }
}
