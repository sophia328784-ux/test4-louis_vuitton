package androidx.camera.video;

import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.futures.Futures;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2872c;

    public /* synthetic */ h(Object obj, int i2) {
        this.f2871b = i2;
        this.f2872c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f2871b;
        Object obj = this.f2872c;
        switch (i2) {
            case 0:
                Recorder.SetupVideoTask setupVideoTask = Recorder.SetupVideoTask.this;
                if (!setupVideoTask.d) {
                    Logger.c(3, "Recorder");
                    SurfaceRequest surfaceRequest = setupVideoTask.f2812a;
                    Timebase timebase = setupVideoTask.f2813b;
                    Recorder recorder = Recorder.this;
                    Set set = Recorder.m0;
                    Objects.toString(recorder.H);
                    Logger.c(3, "Recorder");
                    VideoEncoderSession videoEncoderSession = recorder.e0;
                    videoEncoderSession.a();
                    Futures.h(videoEncoderSession.f2850j).addListener(new g(setupVideoTask, surfaceRequest, timebase), recorder.f2781e);
                }
                break;
            default:
                ((VideoEncoderSession) obj).f2851k.b(null);
                break;
        }
    }
}
