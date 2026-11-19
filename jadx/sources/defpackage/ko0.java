package defpackage;

import androidx.media3.exoplayer.video.VideoSink;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ko0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoSink.Listener f71693c;

    public /* synthetic */ ko0(VideoSink.Listener listener, int i2) {
        this.f71692b = i2;
        this.f71693c = listener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71692b;
        VideoSink.Listener listener = this.f71693c;
        switch (i2) {
            case 0:
                listener.d();
                break;
            default:
                listener.c();
                break;
        }
    }
}
