package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.SeekMap;
import defpackage.ln0;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class ProgressiveMediaSource extends BaseMediaSource implements ProgressiveMediaPeriod.Listener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DataSource.Factory f15566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProgressiveMediaExtractor.Factory f15567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DrmSessionManager f15568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15569k;
    public final int l;
    public final Format m;
    public boolean n = true;
    public long o = -9223372036854775807L;
    public boolean p;
    public boolean q;
    public boolean r;
    public TransferListener s;
    public MediaItem t;

    /* JADX INFO: renamed from: androidx.media3.exoplayer.source.ProgressiveMediaSource$1, reason: invalid class name */
    class AnonymousClass1 extends ForwardingTimeline {
        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            super.f(i2, period, z);
            period.f13963f = true;
            return period;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            super.m(i2, window, j2);
            window.f13975k = true;
            return window;
        }
    }

    public interface Listener {
    }

    public ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i2, Format format) {
        this.t = mediaItem;
        this.f15566h = factory;
        this.f15567i = factory2;
        this.f15568j = drmSessionManager;
        this.f15569k = loadErrorHandlingPolicy;
        this.l = i2;
        this.m = format;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        DataSource dataSourceB = this.f15566h.b();
        TransferListener transferListener = this.s;
        if (transferListener != null) {
            dataSourceB.c(transferListener);
        }
        MediaItem.LocalConfiguration localConfiguration = d().f13788b;
        localConfiguration.getClass();
        Uri uri = localConfiguration.f13848a;
        this.g.getClass();
        return new ProgressiveMediaPeriod(uri, dataSourceB, this.f15567i.a(), this.f15568j, new DrmSessionEventListener.EventDispatcher(this.d.f15081c, 0, mediaPeriodId), this.f15569k, r(mediaPeriodId), this, allocator, localConfiguration.f13852f, this.l, false, 0, this.m, Util.R(localConfiguration.f13854i), null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized MediaItem d() {
        return this.t;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        ProgressiveMediaPeriod progressiveMediaPeriod = (ProgressiveMediaPeriod) mediaPeriod;
        if (progressiveMediaPeriod.B) {
            for (SampleQueue sampleQueue : progressiveMediaPeriod.y) {
                sampleQueue.j();
                DrmSession drmSession = sampleQueue.f15588h;
                if (drmSession != null) {
                    drmSession.f(sampleQueue.f15586e);
                    sampleQueue.f15588h = null;
                    sampleQueue.g = null;
                }
            }
        }
        progressiveMediaPeriod.p.d(progressiveMediaPeriod);
        progressiveMediaPeriod.u.removeCallbacksAndMessages(null);
        progressiveMediaPeriod.v = null;
        progressiveMediaPeriod.V = true;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaPeriod.Listener
    public final void i(long j2, SeekMap seekMap, boolean z) {
        if (this.r && seekMap.b()) {
            return;
        }
        this.r = !seekMap.b();
        if (j2 == -9223372036854775807L) {
            j2 = this.o;
        }
        boolean zE = seekMap.e();
        if (!this.n && this.o == j2 && this.p == zE && this.q == z) {
            return;
        }
        this.o = j2;
        this.p = zE;
        this.q = z;
        this.n = false;
        x();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized void k(MediaItem mediaItem) {
        this.t = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void n() {
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean q(MediaItem mediaItem) {
        MediaItem.LocalConfiguration localConfiguration = d().f13788b;
        localConfiguration.getClass();
        MediaItem.LocalConfiguration localConfiguration2 = mediaItem.f13788b;
        return localConfiguration2 != null && localConfiguration2.f13848a.equals(localConfiguration.f13848a) && localConfiguration2.f13854i == localConfiguration.f13854i && Objects.equals(localConfiguration2.f13852f, localConfiguration.f13852f);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void u(TransferListener transferListener) {
        this.s = transferListener;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        PlayerId playerId = this.g;
        playerId.getClass();
        DrmSessionManager drmSessionManager = this.f15568j;
        drmSessionManager.a(looperMyLooper, playerId);
        drmSessionManager.f();
        x();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
        this.f15568j.release();
    }

    public final void x() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.o, this.p, false, this.q, (Object) null, d());
        if (this.n) {
            singlePeriodTimeline = new AnonymousClass1(singlePeriodTimeline);
        }
        v(singlePeriodTimeline);
    }

    public static final class Factory implements MediaSourceFactory {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final /* synthetic */ int f15570i = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DataSource.Factory f15571c;
        public final ProgressiveMediaExtractor.Factory d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final DrmSessionManagerProvider f15572e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final LoadErrorHandlingPolicy f15573f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Format f15574h;

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2) {
            this(factory, factory2, new DefaultDrmSessionManagerProvider(), new DefaultLoadErrorHandlingPolicy(), 1048576);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public final ProgressiveMediaSource c(MediaItem mediaItem) {
            mediaItem.f13788b.getClass();
            return new ProgressiveMediaSource(mediaItem, this.f15571c, this.d, this.f15572e.a(mediaItem), this.f15573f, this.g, this.f15574h);
        }

        public Factory(DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
            this(factory, new ln0(extractorsFactory, 4));
        }

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManagerProvider drmSessionManagerProvider, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i2) {
            this.f15571c = factory;
            this.d = factory2;
            this.f15572e = drmSessionManagerProvider;
            this.f15573f = loadErrorHandlingPolicy;
            this.g = i2;
        }
    }
}
