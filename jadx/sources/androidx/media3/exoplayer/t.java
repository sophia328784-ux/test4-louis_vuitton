package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f15662c;
    public final /* synthetic */ Pair d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f15663e;

    public /* synthetic */ t(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, MediaLoadData mediaLoadData, int i2) {
        this.f15661b = i2;
        this.f15662c = forwardingEventListener;
        this.d = pair;
        this.f15663e = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15661b;
        MediaLoadData mediaLoadData = this.f15663e;
        Pair pair = this.d;
        MediaSourceList.ForwardingEventListener forwardingEventListener = this.f15662c;
        switch (i2) {
            case 0:
                AnalyticsCollector analyticsCollector = forwardingEventListener.f14746c.f14741h;
                int iIntValue = ((Integer) pair.first).intValue();
                MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) pair.second;
                mediaPeriodId.getClass();
                analyticsCollector.e(iIntValue, mediaPeriodId, mediaLoadData);
                break;
            default:
                forwardingEventListener.f14746c.f14741h.k0(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, mediaLoadData);
                break;
        }
    }
}
