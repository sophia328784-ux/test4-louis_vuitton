package androidx.camera.core;

import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class SingleCloseImageProxy extends ForwardingImageProxy {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f1972e;

    public SingleCloseImageProxy(ImageProxy imageProxy) {
        super(imageProxy);
        this.f1972e = new AtomicBoolean(false);
    }

    @Override // androidx.camera.core.ForwardingImageProxy, java.lang.AutoCloseable
    public final void close() throws Exception {
        if (this.f1972e.getAndSet(true)) {
            return;
        }
        super.close();
    }
}
