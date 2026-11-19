package androidx.media3.exoplayer.source;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProgressiveMediaPeriod f15645c;

    public /* synthetic */ c(ProgressiveMediaPeriod progressiveMediaPeriod, int i2) {
        this.f15644b = i2;
        this.f15645c = progressiveMediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15644b;
        ProgressiveMediaPeriod progressiveMediaPeriod = this.f15645c;
        switch (i2) {
            case 0:
                progressiveMediaPeriod.O = true;
                break;
            case 1:
                Map map = ProgressiveMediaPeriod.W;
                progressiveMediaPeriod.B();
                break;
            default:
                if (!progressiveMediaPeriod.V) {
                    MediaPeriod.Callback callback = progressiveMediaPeriod.v;
                    callback.getClass();
                    callback.l(progressiveMediaPeriod);
                }
                break;
        }
    }
}
