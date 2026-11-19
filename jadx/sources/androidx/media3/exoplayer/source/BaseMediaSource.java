package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.Timeline;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseMediaSource implements MediaSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f15437a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f15438b = new HashSet(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MediaSourceEventListener.EventDispatcher f15439c = new MediaSourceEventListener.EventDispatcher();
    public final DrmSessionEventListener.EventDispatcher d = new DrmSessionEventListener.EventDispatcher();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Looper f15440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Timeline f15441f;
    public PlayerId g;

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void a(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        handler.getClass();
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15439c;
        eventDispatcher.getClass();
        eventDispatcher.f15522c.add(new MediaSourceEventListener.EventDispatcher.ListenerAndHandler(handler, mediaSourceEventListener));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void b(MediaSourceEventListener mediaSourceEventListener) {
        CopyOnWriteArrayList<MediaSourceEventListener.EventDispatcher.ListenerAndHandler> copyOnWriteArrayList = this.f15439c.f15522c;
        for (MediaSourceEventListener.EventDispatcher.ListenerAndHandler listenerAndHandler : copyOnWriteArrayList) {
            if (listenerAndHandler.f15524b == mediaSourceEventListener) {
                copyOnWriteArrayList.remove(listenerAndHandler);
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void e(Handler handler, DrmSessionEventListener drmSessionEventListener) {
        handler.getClass();
        this.d.a(handler, drmSessionEventListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void f(DrmSessionEventListener drmSessionEventListener) {
        this.d.h(drmSessionEventListener);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void h(MediaSource.MediaSourceCaller mediaSourceCaller, TransferListener transferListener, PlayerId playerId) {
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f15440e;
        Preconditions.g(looper == null || looper == looperMyLooper);
        this.g = playerId;
        Timeline timeline = this.f15441f;
        this.f15437a.add(mediaSourceCaller);
        if (this.f15440e == null) {
            this.f15440e = looperMyLooper;
            this.f15438b.add(mediaSourceCaller);
            u(transferListener);
        } else if (timeline != null) {
            j(mediaSourceCaller);
            mediaSourceCaller.a(this, timeline);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void j(MediaSource.MediaSourceCaller mediaSourceCaller) {
        this.f15440e.getClass();
        HashSet hashSet = this.f15438b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.add(mediaSourceCaller);
        if (zIsEmpty) {
            t();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void l(MediaSource.MediaSourceCaller mediaSourceCaller) {
        ArrayList arrayList = this.f15437a;
        arrayList.remove(mediaSourceCaller);
        if (!arrayList.isEmpty()) {
            m(mediaSourceCaller);
            return;
        }
        this.f15440e = null;
        this.f15441f = null;
        this.g = null;
        this.f15438b.clear();
        w();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void m(MediaSource.MediaSourceCaller mediaSourceCaller) {
        HashSet hashSet = this.f15438b;
        boolean zIsEmpty = hashSet.isEmpty();
        hashSet.remove(mediaSourceCaller);
        if (zIsEmpty || !hashSet.isEmpty()) {
            return;
        }
        s();
    }

    public final MediaSourceEventListener.EventDispatcher r(MediaSource.MediaPeriodId mediaPeriodId) {
        return new MediaSourceEventListener.EventDispatcher(this.f15439c.f15522c, 0, mediaPeriodId);
    }

    public void s() {
    }

    public void t() {
    }

    public abstract void u(TransferListener transferListener);

    public final void v(Timeline timeline) {
        this.f15441f = timeline;
        Iterator it = this.f15437a.iterator();
        while (it.hasNext()) {
            ((MediaSource.MediaSourceCaller) it.next()).a(this, timeline);
        }
    }

    public abstract void w();
}
