package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.AnalyticsCollector;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MaskingMediaPeriod;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.ShuffleOrder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class MediaSourceList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlayerId f14736a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaSourceListInfoRefreshListener f14739e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AnalyticsCollector f14741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HandlerWrapper f14742i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14744k;
    public TransferListener l;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ShuffleOrder f14743j = new ShuffleOrder.DefaultShuffleOrder(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IdentityHashMap f14738c = new IdentityHashMap();
    public final HashMap d = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14737b = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f14740f = new HashMap();
    public final HashSet g = new HashSet();

    public final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSourceHolder f14745b;

        public ForwardingEventListener(MediaSourceHolder mediaSourceHolder) {
            this.f14745b = mediaSourceHolder;
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void T(int i2, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new r(this, pairB, keyRequestInfo, 1));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void V(int i2, MediaSource.MediaPeriodId mediaPeriodId, final int i3) {
            final Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new Runnable() { // from class: androidx.media3.exoplayer.w
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsCollector analyticsCollector = MediaSourceList.this.f14741h;
                        Pair pair = pairB;
                        analyticsCollector.V(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, i3);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void W(int i2, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            final Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new Runnable() { // from class: androidx.media3.exoplayer.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsCollector analyticsCollector = MediaSourceList.this.f14741h;
                        Pair pair = pairB;
                        analyticsCollector.W(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void Z(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new u(this, pairB, 2));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void a0(int i2, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new r(this, pairB, exc, 2));
            }
        }

        public final Pair b(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodIdA;
            MediaSourceHolder mediaSourceHolder = this.f14745b;
            MediaSource.MediaPeriodId mediaPeriodId2 = null;
            if (mediaPeriodId != null) {
                int i3 = 0;
                while (true) {
                    if (i3 >= mediaSourceHolder.f14752c.size()) {
                        mediaPeriodIdA = null;
                        break;
                    }
                    if (((MediaSource.MediaPeriodId) mediaSourceHolder.f14752c.get(i3)).d == mediaPeriodId.d) {
                        Object obj = mediaPeriodId.f15516a;
                        Object obj2 = mediaSourceHolder.f14751b;
                        int i4 = AbstractConcatenatedTimeline.f14559h;
                        mediaPeriodIdA = mediaPeriodId.a(Pair.create(obj2, obj));
                        break;
                    }
                    i3++;
                }
                if (mediaPeriodIdA == null) {
                    return null;
                }
                mediaPeriodId2 = mediaPeriodIdA;
            }
            return Pair.create(Integer.valueOf(i2 + mediaSourceHolder.d), mediaPeriodId2);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void b0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new v(this, pairB, loadEventInfo, mediaLoadData, 0));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void e(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new t(this, pairB, mediaLoadData, 0));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void j0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new v(this, pairB, loadEventInfo, mediaLoadData, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void k0(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new t(this, pairB, mediaLoadData, 1));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void l0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new u(this, pairB, 0));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void v0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new u(this, pairB, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void z(int i2, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final int i3) {
            final Pair pairB = b(i2, mediaPeriodId);
            if (pairB != null) {
                MediaSourceList.this.f14742i.k(new Runnable() { // from class: androidx.media3.exoplayer.x
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsCollector analyticsCollector = MediaSourceList.this.f14741h;
                        Pair pair = pairB;
                        analyticsCollector.z(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, i3);
                    }
                });
            }
        }
    }

    public static final class MediaSourceAndListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSource f14747a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSource.MediaSourceCaller f14748b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ForwardingEventListener f14749c;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, ForwardingEventListener forwardingEventListener) {
            this.f14747a = mediaSource;
            this.f14748b = mediaSourceCaller;
            this.f14749c = forwardingEventListener;
        }
    }

    public static final class MediaSourceHolder implements MediaSourceInfoHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MaskingMediaSource f14750a;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14753e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f14752c = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f14751b = new Object();

        public MediaSourceHolder(MediaSource mediaSource, boolean z) {
            this.f14750a = new MaskingMediaSource(mediaSource, z);
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Timeline a() {
            return this.f14750a.o;
        }

        @Override // androidx.media3.exoplayer.MediaSourceInfoHolder
        public final Object getUid() {
            return this.f14751b;
        }
    }

    public interface MediaSourceListInfoRefreshListener {
        void c();
    }

    public MediaSourceList(MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, PlayerId playerId) {
        this.f14736a = playerId;
        this.f14739e = mediaSourceListInfoRefreshListener;
        this.f14741h = analyticsCollector;
        this.f14742i = handlerWrapper;
    }

    public final Timeline a(int i2, ArrayList arrayList, ShuffleOrder shuffleOrder) {
        if (!arrayList.isEmpty()) {
            this.f14743j = shuffleOrder;
            for (int i3 = i2; i3 < arrayList.size() + i2; i3++) {
                MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.get(i3 - i2);
                ArrayList arrayList2 = this.f14737b;
                if (i3 > 0) {
                    MediaSourceHolder mediaSourceHolder2 = (MediaSourceHolder) arrayList2.get(i3 - 1);
                    mediaSourceHolder.d = mediaSourceHolder2.f14750a.o.f15491e.o() + mediaSourceHolder2.d;
                    mediaSourceHolder.f14753e = false;
                    mediaSourceHolder.f14752c.clear();
                } else {
                    mediaSourceHolder.d = 0;
                    mediaSourceHolder.f14753e = false;
                    mediaSourceHolder.f14752c.clear();
                }
                int iO = mediaSourceHolder.f14750a.o.f15491e.o();
                for (int i4 = i3; i4 < arrayList2.size(); i4++) {
                    ((MediaSourceHolder) arrayList2.get(i4)).d += iO;
                }
                arrayList2.add(i3, mediaSourceHolder);
                this.d.put(mediaSourceHolder.f14751b, mediaSourceHolder);
                if (this.f14744k) {
                    e(mediaSourceHolder);
                    if (this.f14738c.isEmpty()) {
                        this.g.add(mediaSourceHolder);
                    } else {
                        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.f14740f.get(mediaSourceHolder);
                        if (mediaSourceAndListener != null) {
                            mediaSourceAndListener.f14747a.m(mediaSourceAndListener.f14748b);
                        }
                    }
                }
            }
        }
        return b();
    }

    public final Timeline b() {
        ArrayList arrayList = this.f14737b;
        if (arrayList.isEmpty()) {
            return Timeline.f13952a;
        }
        int iO = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.get(i2);
            mediaSourceHolder.d = iO;
            iO += mediaSourceHolder.f14750a.o.f15491e.o();
        }
        return new PlaylistTimeline(arrayList, this.f14743j);
    }

    public final void c() {
        Iterator it = this.g.iterator();
        while (it.hasNext()) {
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) it.next();
            if (mediaSourceHolder.f14752c.isEmpty()) {
                MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.f14740f.get(mediaSourceHolder);
                if (mediaSourceAndListener != null) {
                    mediaSourceAndListener.f14747a.m(mediaSourceAndListener.f14748b);
                }
                it.remove();
            }
        }
    }

    public final void d(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.f14753e && mediaSourceHolder.f14752c.isEmpty()) {
            MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) this.f14740f.remove(mediaSourceHolder);
            mediaSourceAndListener.getClass();
            ForwardingEventListener forwardingEventListener = mediaSourceAndListener.f14749c;
            MediaSource mediaSource = mediaSourceAndListener.f14747a;
            mediaSource.l(mediaSourceAndListener.f14748b);
            mediaSource.b(forwardingEventListener);
            mediaSource.f(forwardingEventListener);
            this.g.remove(mediaSourceHolder);
        }
    }

    public final void e(MediaSourceHolder mediaSourceHolder) {
        MaskingMediaSource maskingMediaSource = mediaSourceHolder.f14750a;
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: androidx.media3.exoplayer.s
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            public final void a(BaseMediaSource baseMediaSource, Timeline timeline) {
                this.f15435a.f14739e.c();
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(mediaSourceHolder);
        this.f14740f.put(mediaSourceHolder, new MediaSourceAndListener(maskingMediaSource, mediaSourceCaller, forwardingEventListener));
        String str = Util.f14242a;
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null) {
            looperMyLooper = Looper.getMainLooper();
        }
        maskingMediaSource.a(new Handler(looperMyLooper, null), forwardingEventListener);
        Looper looperMyLooper2 = Looper.myLooper();
        if (looperMyLooper2 == null) {
            looperMyLooper2 = Looper.getMainLooper();
        }
        maskingMediaSource.d.a(new Handler(looperMyLooper2, null), forwardingEventListener);
        maskingMediaSource.h(mediaSourceCaller, this.l, this.f14736a);
    }

    public final void f(MediaPeriod mediaPeriod) {
        IdentityHashMap identityHashMap = this.f14738c;
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) identityHashMap.remove(mediaPeriod);
        mediaSourceHolder.getClass();
        mediaSourceHolder.f14750a.g(mediaPeriod);
        mediaSourceHolder.f14752c.remove(((MaskingMediaPeriod) mediaPeriod).f15501b);
        if (!identityHashMap.isEmpty()) {
            c();
        }
        d(mediaSourceHolder);
    }

    public final void g(int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            ArrayList arrayList = this.f14737b;
            MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) arrayList.remove(i4);
            this.d.remove(mediaSourceHolder.f14751b);
            int i5 = -mediaSourceHolder.f14750a.o.f15491e.o();
            for (int i6 = i4; i6 < arrayList.size(); i6++) {
                ((MediaSourceHolder) arrayList.get(i6)).d += i5;
            }
            mediaSourceHolder.f14753e = true;
            if (this.f14744k) {
                d(mediaSourceHolder);
            }
        }
    }
}
