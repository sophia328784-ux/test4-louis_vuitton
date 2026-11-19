package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f15865c;
    public final /* synthetic */ Pair d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f15866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f15867f;

    public /* synthetic */ v(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        this.f15864b = i2;
        this.f15865c = forwardingEventListener;
        this.d = pair;
        this.f15866e = loadEventInfo;
        this.f15867f = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15864b;
        MediaLoadData mediaLoadData = this.f15867f;
        LoadEventInfo loadEventInfo = this.f15866e;
        Pair pair = this.d;
        MediaSourceList.ForwardingEventListener forwardingEventListener = this.f15865c;
        switch (i2) {
            case 0:
                forwardingEventListener.f14746c.f14741h.b0(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
                break;
            default:
                forwardingEventListener.f14746c.f14741h.j0(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
                break;
        }
    }
}
