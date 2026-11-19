package androidx.camera.video;

import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Timebase;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Recorder.SetupVideoTask f2869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SurfaceRequest f2870c;
    public final /* synthetic */ Timebase d;

    public /* synthetic */ g(Recorder.SetupVideoTask setupVideoTask, SurfaceRequest surfaceRequest, Timebase timebase) {
        this.f2869b = setupVideoTask;
        this.f2870c = surfaceRequest;
        this.d = timebase;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0031  */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        if (r12.f2847f == r1) goto L35;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.video.g.run():void");
    }
}
