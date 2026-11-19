package androidx.media3.exoplayer.video;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15993c;

    public /* synthetic */ a(Object obj, int i2) {
        this.f15992b = i2;
        this.f15993c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15992b;
        Object obj = this.f15993c;
        switch (i2) {
            case 0:
                ((DefaultVideoSink) obj).f15875h.a();
                break;
            default:
                VideoFrameReleaseHelper.VSyncSamplerV33 vSyncSamplerV33 = (VideoFrameReleaseHelper.VSyncSamplerV33) obj;
                vSyncSamplerV33.f15975b.postVsyncCallback(vSyncSamplerV33);
                break;
        }
    }
}
