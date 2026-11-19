package androidx.camera.core;

import android.media.Image;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class ForwardingImageProxy implements ImageProxy {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageProxy f1921c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1920b = new Object();
    public final HashSet d = new HashSet();

    public interface OnImageCloseListener {
        void f(ForwardingImageProxy forwardingImageProxy);
    }

    public ForwardingImageProxy(ImageProxy imageProxy) {
        this.f1921c = imageProxy;
    }

    @Override // androidx.camera.core.ImageProxy
    public final ImageProxy.PlaneProxy[] L0() {
        return this.f1921c.L0();
    }

    @Override // androidx.camera.core.ImageProxy
    public final Image O() {
        return this.f1921c.O();
    }

    public final void c(OnImageCloseListener onImageCloseListener) {
        synchronized (this.f1920b) {
            this.d.add(onImageCloseListener);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        HashSet hashSet;
        this.f1921c.close();
        synchronized (this.f1920b) {
            hashSet = new HashSet(this.d);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((OnImageCloseListener) it.next()).f(this);
        }
    }

    @Override // androidx.camera.core.ImageProxy
    public final int getFormat() {
        return this.f1921c.getFormat();
    }

    @Override // androidx.camera.core.ImageProxy
    public int getHeight() {
        return this.f1921c.getHeight();
    }

    @Override // androidx.camera.core.ImageProxy
    public int getWidth() {
        return this.f1921c.getWidth();
    }

    @Override // androidx.camera.core.ImageProxy
    public ImageInfo p1() {
        return this.f1921c.p1();
    }
}
