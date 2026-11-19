package defpackage;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ev implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DrmSessionEventListener.EventDispatcher f68954c;
    public final /* synthetic */ DrmSessionEventListener d;

    public /* synthetic */ ev(DrmSessionEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener drmSessionEventListener, int i2) {
        this.f68953b = i2;
        this.f68954c = eventDispatcher;
        this.d = drmSessionEventListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68953b;
        DrmSessionEventListener drmSessionEventListener = this.d;
        DrmSessionEventListener.EventDispatcher eventDispatcher = this.f68954c;
        switch (i2) {
            case 0:
                drmSessionEventListener.v0(eventDispatcher.f15079a, eventDispatcher.f15080b);
                break;
            case 1:
                drmSessionEventListener.Z(eventDispatcher.f15079a, eventDispatcher.f15080b);
                break;
            default:
                drmSessionEventListener.l0(eventDispatcher.f15079a, eventDispatcher.f15080b);
                break;
        }
    }
}
