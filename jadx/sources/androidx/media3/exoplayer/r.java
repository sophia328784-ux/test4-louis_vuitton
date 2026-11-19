package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15433c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f15434e;

    public /* synthetic */ r(Object obj, Object obj2, Object obj3, int i2) {
        this.f15432b = i2;
        this.f15433c = obj;
        this.d = obj2;
        this.f15434e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f15432b;
        Object obj = this.f15434e;
        Object obj2 = this.d;
        Object obj3 = this.f15433c;
        switch (i2) {
            case 0:
                ((MediaPeriodQueue) obj3).f14729c.J(((ImmutableList.Builder) obj2).j(), (MediaSource.MediaPeriodId) obj);
                break;
            case 1:
                Pair pair = (Pair) obj2;
                ((MediaSourceList.ForwardingEventListener) obj3).f14746c.f14741h.T(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, (KeyRequestInfo) obj);
                break;
            default:
                Pair pair2 = (Pair) obj2;
                ((MediaSourceList.ForwardingEventListener) obj3).f14746c.f14741h.a0(((Integer) pair2.first).intValue(), (MediaSource.MediaPeriodId) pair2.second, (Exception) obj);
                break;
        }
    }
}
