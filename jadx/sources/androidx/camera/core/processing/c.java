package androidx.camera.core.processing;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceEdge.SettableSurface f2577c;

    public /* synthetic */ c(SurfaceEdge.SettableSurface settableSurface, int i2) {
        this.f2576b = i2;
        this.f2577c = settableSurface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f2576b;
        SurfaceEdge.SettableSurface settableSurface = this.f2577c;
        switch (i2) {
            case 0:
                settableSurface.a();
                break;
            case 1:
                settableSurface.b();
                break;
            default:
                SurfaceOutputImpl surfaceOutputImpl = settableSurface.r;
                if (surfaceOutputImpl != null) {
                    surfaceOutputImpl.h();
                }
                if (settableSurface.q == null) {
                    settableSurface.p.c();
                }
                settableSurface.q = null;
                break;
        }
    }
}
