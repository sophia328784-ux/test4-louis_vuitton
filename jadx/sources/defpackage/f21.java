package defpackage;

import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.processing.SurfaceEdge;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f21 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceEdge f69019c;

    public /* synthetic */ f21(SurfaceEdge surfaceEdge, int i2) {
        this.f69018b = i2;
        this.f69019c = surfaceEdge;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69018b;
        SurfaceEdge surfaceEdge = this.f69019c;
        switch (i2) {
            case 0:
                CameraXExecutors.c().execute(new f21(surfaceEdge, 1));
                break;
            default:
                if (!surfaceEdge.n) {
                    surfaceEdge.f();
                }
                break;
        }
    }
}
