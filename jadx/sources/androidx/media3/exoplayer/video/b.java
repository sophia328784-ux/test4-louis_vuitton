package androidx.media3.exoplayer.video;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DefaultVideoSink.FrameRendererImpl f15995c;

    public /* synthetic */ b(DefaultVideoSink.FrameRendererImpl frameRendererImpl, int i2) {
        this.f15994b = i2;
        this.f15995c = frameRendererImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15994b;
        DefaultVideoSink.FrameRendererImpl frameRendererImpl = this.f15995c;
        switch (i2) {
            case 0:
                frameRendererImpl.f15879b.f15875h.c();
                break;
            default:
                frameRendererImpl.f15879b.f15875h.d();
                break;
        }
    }
}
