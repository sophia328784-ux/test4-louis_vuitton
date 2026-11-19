package defpackage;

import androidx.camera.camera2.internal.VideoUsageControl;
import androidx.camera.core.Logger;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r51 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoUsageControl f79254c;

    public /* synthetic */ r51(VideoUsageControl videoUsageControl, int i2) {
        this.f79253b = i2;
        this.f79254c = videoUsageControl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f79253b) {
            case 0:
                if (this.f79254c.f1656b.decrementAndGet() >= 0) {
                    Logger.c(3, "VideoUsageControl");
                } else {
                    Logger.c(5, "VideoUsageControl");
                }
                break;
            default:
                this.f79254c.f1656b.incrementAndGet();
                Logger.c(3, "VideoUsageControl");
                break;
        }
    }
}
