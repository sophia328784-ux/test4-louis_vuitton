package defpackage;

import androidx.camera.core.SurfaceRequest;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class at implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest f20621c;

    public /* synthetic */ at(SurfaceRequest surfaceRequest, int i2) {
        this.f20620b = i2;
        this.f20621c = surfaceRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f20620b;
        SurfaceRequest surfaceRequest = this.f20621c;
        switch (i2) {
            case 0:
                surfaceRequest.c();
                break;
            default:
                surfaceRequest.f1978h.cancel(true);
                break;
        }
    }
}
