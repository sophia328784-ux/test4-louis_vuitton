package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.Timeline;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import androidx.media3.exoplayer.source.BaseMediaSource;
import com.google.common.base.Preconditions;
import defpackage.p3;
import defpackage.pc;
import defpackage.tc0;
import defpackage.uc0;
import defpackage.y81;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class CompositeMediaSource<T> extends BaseMediaSource {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f15465h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f15466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TransferListener f15467j;

    public final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f15468b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MediaSourceEventListener.EventDispatcher f15469c;
        public DrmSessionEventListener.EventDispatcher d;

        public ForwardingEventListener(T t) {
            this.f15469c = CompositeMediaSource.this.r(null);
            this.d = new DrmSessionEventListener.EventDispatcher(CompositeMediaSource.this.d.f15081c, 0, null);
            this.f15468b = t;
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void T(int i2, MediaSource.MediaPeriodId mediaPeriodId, KeyRequestInfo keyRequestInfo) {
            if (b(i2, mediaPeriodId)) {
                this.d.b(keyRequestInfo);
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void V(int i2, MediaSource.MediaPeriodId mediaPeriodId, int i3) {
            if (b(i2, mediaPeriodId)) {
                this.d.e(i3);
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void W(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                eventDispatcher.getClass();
                eventDispatcher.a(new uc0(eventDispatcher, loadEventInfo, mediaLoadDataF, iOException, z));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void Z(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            if (b(i2, mediaPeriodId)) {
                this.d.c();
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void a0(int i2, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            if (b(i2, mediaPeriodId)) {
                this.d.f(exc);
            }
        }

        public final boolean b(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodIdX;
            Object obj = this.f15468b;
            CompositeMediaSource compositeMediaSource = CompositeMediaSource.this;
            if (mediaPeriodId != null) {
                mediaPeriodIdX = compositeMediaSource.x(obj, mediaPeriodId);
                if (mediaPeriodIdX == null) {
                    return false;
                }
            } else {
                mediaPeriodIdX = null;
            }
            int iZ = compositeMediaSource.z(i2, obj);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
            if (eventDispatcher.f15520a != iZ || !Objects.equals(eventDispatcher.f15521b, mediaPeriodIdX)) {
                this.f15469c = new MediaSourceEventListener.EventDispatcher(compositeMediaSource.f15439c.f15522c, iZ, mediaPeriodIdX);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.d;
            if (eventDispatcher2.f15079a == iZ && Objects.equals(eventDispatcher2.f15080b, mediaPeriodIdX)) {
                return true;
            }
            this.d = new DrmSessionEventListener.EventDispatcher(compositeMediaSource.d.f15081c, iZ, mediaPeriodIdX);
            return true;
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void b0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                eventDispatcher.getClass();
                eventDispatcher.a(new tc0(eventDispatcher, loadEventInfo, mediaLoadDataF, 1));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void e(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                MediaSource.MediaPeriodId mediaPeriodId2 = eventDispatcher.f15521b;
                mediaPeriodId2.getClass();
                eventDispatcher.a(new y81(eventDispatcher, mediaPeriodId2, mediaLoadDataF, 12));
            }
        }

        public final MediaLoadData f(MediaLoadData mediaLoadData, MediaSource.MediaPeriodId mediaPeriodId) {
            long j2 = mediaLoadData.f15514f;
            CompositeMediaSource compositeMediaSource = CompositeMediaSource.this;
            Object obj = this.f15468b;
            long jY = compositeMediaSource.y(j2, obj);
            long j3 = mediaLoadData.g;
            long jY2 = compositeMediaSource.y(j3, obj);
            return (jY == j2 && jY2 == j3) ? mediaLoadData : new MediaLoadData(mediaLoadData.f15510a, mediaLoadData.f15511b, mediaLoadData.f15512c, mediaLoadData.d, mediaLoadData.f15513e, jY, jY2);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void j0(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                eventDispatcher.getClass();
                eventDispatcher.a(new tc0(eventDispatcher, loadEventInfo, mediaLoadDataF, 0));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void k0(int i2, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                eventDispatcher.getClass();
                eventDispatcher.a(new p3(eventDispatcher, mediaLoadDataF, 17));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void l0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            if (b(i2, mediaPeriodId)) {
                this.d.d();
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public final void v0(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
            if (b(i2, mediaPeriodId)) {
                this.d.g();
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void z(int i2, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i3) {
            if (b(i2, mediaPeriodId)) {
                MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15469c;
                MediaLoadData mediaLoadDataF = f(mediaLoadData, mediaPeriodId);
                eventDispatcher.getClass();
                eventDispatcher.a(new pc(eventDispatcher, loadEventInfo, mediaLoadDataF, i3));
            }
        }
    }

    public static final class MediaSourceAndListener<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSource f15471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSource.MediaSourceCaller f15472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ForwardingEventListener f15473c;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, CompositeMediaSource<T>.ForwardingEventListener forwardingEventListener) {
            this.f15471a = mediaSource;
            this.f15472b = mediaSourceCaller;
            this.f15473c = forwardingEventListener;
        }
    }

    public abstract void A(Object obj, BaseMediaSource baseMediaSource, Timeline timeline);

    public final void B(final Object obj, MediaSource mediaSource) {
        HashMap map = this.f15465h;
        Preconditions.g(!map.containsKey(obj));
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: so
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            public final void a(BaseMediaSource baseMediaSource, Timeline timeline) {
                this.f79840a.A(obj, baseMediaSource, timeline);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(obj);
        map.put(obj, new MediaSourceAndListener(mediaSource, mediaSourceCaller, forwardingEventListener));
        Handler handler = this.f15466i;
        handler.getClass();
        mediaSource.a(handler, forwardingEventListener);
        Handler handler2 = this.f15466i;
        handler2.getClass();
        mediaSource.e(handler2, forwardingEventListener);
        TransferListener transferListener = this.f15467j;
        PlayerId playerId = this.g;
        playerId.getClass();
        mediaSource.h(mediaSourceCaller, transferListener, playerId);
        if (this.f15438b.isEmpty()) {
            mediaSource.m(mediaSourceCaller);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void n() {
        Iterator it = this.f15465h.values().iterator();
        while (it.hasNext()) {
            ((MediaSourceAndListener) it.next()).f15471a.n();
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void s() {
        for (MediaSourceAndListener mediaSourceAndListener : this.f15465h.values()) {
            mediaSourceAndListener.f15471a.m(mediaSourceAndListener.f15472b);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void t() {
        for (MediaSourceAndListener mediaSourceAndListener : this.f15465h.values()) {
            mediaSourceAndListener.f15471a.j(mediaSourceAndListener.f15472b);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public void w() {
        HashMap map = this.f15465h;
        for (MediaSourceAndListener mediaSourceAndListener : map.values()) {
            MediaSource mediaSource = mediaSourceAndListener.f15471a;
            ForwardingEventListener forwardingEventListener = mediaSourceAndListener.f15473c;
            mediaSource.l(mediaSourceAndListener.f15472b);
            mediaSource.b(forwardingEventListener);
            mediaSource.f(forwardingEventListener);
        }
        map.clear();
    }

    public abstract MediaSource.MediaPeriodId x(Object obj, MediaSource.MediaPeriodId mediaPeriodId);

    public long y(long j2, Object obj) {
        return j2;
    }

    public int z(int i2, Object obj) {
        return i2;
    }
}
