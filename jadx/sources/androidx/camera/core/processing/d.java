package androidx.camera.core.processing;

import android.view.Surface;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements AsyncFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SurfaceEdge f2597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceEdge.SettableSurface f2598c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SurfaceOutput.CameraInputInfo f2599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ SurfaceOutput.CameraInputInfo f2600f;

    public /* synthetic */ d(SurfaceEdge surfaceEdge, SurfaceEdge.SettableSurface settableSurface, int i2, SurfaceOutput.CameraInputInfo cameraInputInfo, SurfaceOutput.CameraInputInfo cameraInputInfo2) {
        this.f2597b = surfaceEdge;
        this.f2598c = settableSurface;
        this.d = i2;
        this.f2599e = cameraInputInfo;
        this.f2600f = cameraInputInfo2;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        SurfaceEdge.SettableSurface settableSurface = this.f2598c;
        Surface surface = (Surface) obj;
        SurfaceEdge surfaceEdge = this.f2597b;
        surfaceEdge.getClass();
        surface.getClass();
        try {
            settableSurface.d();
            SurfaceOutputImpl surfaceOutputImpl = new SurfaceOutputImpl(surface, this.d, surfaceEdge.g.f(), this.f2599e, this.f2600f);
            surfaceOutputImpl.l.addListener(new c(settableSurface, 1), CameraXExecutors.a());
            Preconditions.f("Consumer can only be linked once.", settableSurface.r == null);
            settableSurface.r = surfaceOutputImpl;
            return Futures.g(surfaceOutputImpl);
        } catch (DeferrableSurface.SurfaceClosedException e2) {
            return Futures.e(e2);
        }
    }
}
