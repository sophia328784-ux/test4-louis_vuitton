package androidx.camera.core.impl;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Throwable f2374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractCameraPresenceSource.ObserverWrapper f2375c;
    public final /* synthetic */ List d;

    public /* synthetic */ a(Throwable th, AbstractCameraPresenceSource.ObserverWrapper observerWrapper, List list) {
        this.f2374b = th;
        this.f2375c = observerWrapper;
        this.d = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th = this.f2374b;
        AbstractCameraPresenceSource.ObserverWrapper observerWrapper = this.f2375c;
        if (th != null) {
            observerWrapper.f2154b.onError(th);
        } else {
            observerWrapper.f2154b.a(this.d);
        }
    }
}
