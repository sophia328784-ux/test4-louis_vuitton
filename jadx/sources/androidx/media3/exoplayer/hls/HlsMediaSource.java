package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.DefaultHlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.FilteringHlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.DefaultCompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.MediaSourceFactory;
import androidx.media3.exoplayer.source.SinglePeriodTimeline;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.os;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaSource extends BaseMediaSource implements HlsPlaylistTracker.PrimaryPlaylistListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HlsExtractorFactory f15162h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HlsDataSourceFactory f15163i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CompositeSequenceableLoaderFactory f15164j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CmcdConfiguration f15165k;
    public final DrmSessionManager l;
    public final LoadErrorHandlingPolicy m;
    public final boolean n;
    public final int o;
    public final DefaultHlsPlaylistTracker p;
    public final long q;
    public MediaItem.LiveConfiguration r;
    public TransferListener s;
    public MediaItem t;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetadataType {
    }

    static {
        MediaLibraryInfo.a("media3.exoplayer.hls");
    }

    public HlsMediaSource(MediaItem mediaItem, HlsDataSourceFactory hlsDataSourceFactory, DefaultHlsExtractorFactory defaultHlsExtractorFactory, DefaultCompositeSequenceableLoaderFactory defaultCompositeSequenceableLoaderFactory, CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DefaultLoadErrorHandlingPolicy defaultLoadErrorHandlingPolicy, DefaultHlsPlaylistTracker defaultHlsPlaylistTracker, long j2, boolean z, int i2) {
        this.t = mediaItem;
        this.r = mediaItem.f13789c;
        this.f15163i = hlsDataSourceFactory;
        this.f15162h = defaultHlsExtractorFactory;
        this.f15164j = defaultCompositeSequenceableLoaderFactory;
        this.f15165k = cmcdConfiguration;
        this.l = drmSessionManager;
        this.m = defaultLoadErrorHandlingPolicy;
        this.p = defaultHlsPlaylistTracker;
        this.q = j2;
        this.n = z;
        this.o = i2;
    }

    public static HlsMediaPlaylist.Part x(long j2, List list) {
        HlsMediaPlaylist.Part part = null;
        for (int i2 = 0; i2 < list.size(); i2++) {
            HlsMediaPlaylist.Part part2 = (HlsMediaPlaylist.Part) list.get(i2);
            long j3 = part2.f15266f;
            if (j3 > j2 || !part2.m) {
                if (j3 > j2) {
                    break;
                }
            } else {
                part = part2;
            }
        }
        return part;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaPeriod c(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        MediaSourceEventListener.EventDispatcher eventDispatcherR = r(mediaPeriodId);
        DrmSessionEventListener.EventDispatcher eventDispatcher = new DrmSessionEventListener.EventDispatcher(this.d.f15081c, 0, mediaPeriodId);
        TransferListener transferListener = this.s;
        PlayerId playerId = this.g;
        playerId.getClass();
        return new HlsMediaPeriod(this.f15162h, this.p, this.f15163i, transferListener, this.f15165k, this.l, eventDispatcher, this.m, eventDispatcherR, allocator, this.f15164j, this.n, this.o, false, playerId, 0L, null);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized MediaItem d() {
        return this.t;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void g(MediaPeriod mediaPeriod) {
        HlsMediaPeriod hlsMediaPeriod = (HlsMediaPeriod) mediaPeriod;
        hlsMediaPeriod.f15154c.j(hlsMediaPeriod);
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : hlsMediaPeriod.y) {
            if (hlsSampleStreamWrapper.E) {
                for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                    hlsSampleQueue.j();
                    DrmSession drmSession = hlsSampleQueue.f15588h;
                    if (drmSession != null) {
                        drmSession.f(hlsSampleQueue.f15586e);
                        hlsSampleQueue.f15588h = null;
                        hlsSampleQueue.g = null;
                    }
                }
            }
            HlsChunkSource hlsChunkSource = hlsSampleStreamWrapper.f15178e;
            hlsChunkSource.g.c(hlsChunkSource.f15138e[hlsChunkSource.t.r()].c());
            hlsChunkSource.p = null;
            hlsSampleStreamWrapper.f15183k.d(hlsSampleStreamWrapper);
            hlsSampleStreamWrapper.s.removeCallbacksAndMessages(null);
            hlsSampleStreamWrapper.I = true;
            hlsSampleStreamWrapper.t.clear();
        }
        hlsMediaPeriod.v = null;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final synchronized void k(MediaItem mediaItem) {
        this.t = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void n() throws IOException {
        DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = this.p;
        Loader loader = defaultHlsPlaylistTracker.f15218k;
        if (loader != null) {
            loader.c(Integer.MIN_VALUE);
        }
        ParserException parserException = defaultHlsPlaylistTracker.o;
        if (parserException != null) {
            throw parserException;
        }
        Uri uri = defaultHlsPlaylistTracker.t;
        if (uri != null) {
            defaultHlsPlaylistTracker.d(uri);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean q(MediaItem mediaItem) {
        MediaItem mediaItemD = d();
        MediaItem.LocalConfiguration localConfiguration = mediaItemD.f13788b;
        localConfiguration.getClass();
        MediaItem.LocalConfiguration localConfiguration2 = mediaItem.f13788b;
        return localConfiguration2 != null && localConfiguration2.f13848a.equals(localConfiguration.f13848a) && localConfiguration2.f13851e.equals(localConfiguration.f13851e) && Objects.equals(localConfiguration2.f13850c, localConfiguration.f13850c) && mediaItemD.f13789c.equals(mediaItem.f13789c);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void u(TransferListener transferListener) {
        this.s = transferListener;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        PlayerId playerId = this.g;
        playerId.getClass();
        DrmSessionManager drmSessionManager = this.l;
        drmSessionManager.a(looperMyLooper, playerId);
        drmSessionManager.f();
        MediaSourceEventListener.EventDispatcher eventDispatcherR = r(null);
        MediaItem.LocalConfiguration localConfiguration = d().f13788b;
        localConfiguration.getClass();
        Uri uri = localConfiguration.f13848a;
        DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = this.p;
        Supplier supplier = defaultHlsPlaylistTracker.f15216i;
        defaultHlsPlaylistTracker.l = Util.r(null);
        defaultHlsPlaylistTracker.f15217j = eventDispatcherR;
        defaultHlsPlaylistTracker.m = this;
        DataSpec.Builder builder = new DataSpec.Builder();
        builder.f14397a = uri;
        builder.f14403i = 1;
        DataSpec dataSpecA = builder.a();
        CmcdConfiguration cmcdConfiguration = defaultHlsPlaylistTracker.f15215h;
        if (cmcdConfiguration != null) {
            CmcdData.Factory factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
            factory.f15804j = NBSSpanMetricUnit.Minute;
            dataSpecA = factory.a().a(dataSpecA);
        }
        ParsingLoadable parsingLoadable = new ParsingLoadable(defaultHlsPlaylistTracker.f15211b.a(), dataSpecA, 4, defaultHlsPlaylistTracker.f15212c.a());
        Preconditions.q(defaultHlsPlaylistTracker.f15218k == null);
        Loader loader = supplier != null ? new Loader((ReleasableExecutor) supplier.get()) : new Loader("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        defaultHlsPlaylistTracker.f15218k = loader;
        loader.e(parsingLoadable, defaultHlsPlaylistTracker, defaultHlsPlaylistTracker.d.b(parsingLoadable.f15841c));
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void w() {
        this.p.v();
        this.l.release();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void y(HlsMediaPlaylist hlsMediaPlaylist) {
        long j2;
        SinglePeriodTimeline singlePeriodTimeline;
        long j3;
        long jR;
        long j4;
        long j5;
        boolean z = hlsMediaPlaylist.p;
        boolean z2 = hlsMediaPlaylist.g;
        ImmutableList immutableList = hlsMediaPlaylist.r;
        long j6 = hlsMediaPlaylist.u;
        long jR2 = hlsMediaPlaylist.f15233e;
        int i2 = hlsMediaPlaylist.d;
        long j7 = hlsMediaPlaylist.f15235h;
        long jF0 = z ? Util.f0(j7) : -9223372036854775807L;
        long j8 = (i2 == 2 || i2 == 1) ? jF0 : -9223372036854775807L;
        DefaultHlsPlaylistTracker defaultHlsPlaylistTracker = this.p;
        defaultHlsPlaylistTracker.n.getClass();
        HlsManifest hlsManifest = new HlsManifest();
        if (defaultHlsPlaylistTracker.v) {
            HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.v;
            long j9 = j7 - defaultHlsPlaylistTracker.w;
            boolean z3 = hlsMediaPlaylist.o;
            long j10 = z3 ? j9 + j6 : -9223372036854775807L;
            long jR3 = hlsMediaPlaylist.p ? Util.R(Util.B(this.q)) - (j7 + j6) : 0L;
            long j11 = this.r.f13838a;
            if (j11 != -9223372036854775807L) {
                jR = Util.R(j11);
            } else {
                if (jR2 != -9223372036854775807L) {
                    j3 = j6 - jR2;
                } else {
                    j3 = serverControl.d;
                    if (j3 == -9223372036854775807L || hlsMediaPlaylist.n == -9223372036854775807L) {
                        j3 = serverControl.f15273c;
                        if (j3 == -9223372036854775807L) {
                            j3 = 3 * hlsMediaPlaylist.m;
                        }
                    }
                }
                jR = j3 + jR3;
            }
            long j12 = j6 + jR3;
            long jK = Util.k(jR, jR3, j12);
            MediaItem.LiveConfiguration liveConfiguration = d().f13789c;
            boolean z4 = liveConfiguration.d == -3.4028235E38f && liveConfiguration.f13841e == -3.4028235E38f && serverControl.f15273c == -9223372036854775807L && serverControl.d == -9223372036854775807L;
            MediaItem.LiveConfiguration.Builder builderA = this.r.a();
            builderA.f13842a = Util.f0(jK);
            builderA.d = z4 ? 1.0f : this.r.d;
            builderA.f13845e = z4 ? 1.0f : this.r.f13841e;
            MediaItem.LiveConfiguration liveConfigurationA = builderA.a();
            this.r = liveConfigurationA;
            if (jR2 == -9223372036854775807L) {
                jR2 = j12 - Util.R(liveConfigurationA.f13838a);
            }
            if (z2) {
                j5 = jR2;
            } else {
                HlsMediaPlaylist.Part partX = x(jR2, hlsMediaPlaylist.s);
                if (partX != null) {
                    j4 = partX.f15266f;
                } else if (immutableList.isEmpty()) {
                    j5 = 0;
                } else {
                    HlsMediaPlaylist.Segment segment = (HlsMediaPlaylist.Segment) immutableList.get(Util.d(immutableList, Long.valueOf(jR2), true));
                    HlsMediaPlaylist.Part partX2 = x(jR2, segment.n);
                    j4 = partX2 != null ? partX2.f15266f : segment.f15266f;
                }
                j5 = j4;
            }
            singlePeriodTimeline = new SinglePeriodTimeline(j8, jF0, -9223372036854775807L, j10, hlsMediaPlaylist.u, j9, j5, true, !z3, i2 == 2 && hlsMediaPlaylist.f15234f, hlsManifest, d(), this.r);
        } else {
            if (jR2 == -9223372036854775807L || immutableList.isEmpty()) {
                j2 = 0;
            } else {
                if (!z2 && jR2 != j6) {
                    jR2 = ((HlsMediaPlaylist.Segment) immutableList.get(Util.d(immutableList, Long.valueOf(jR2), true))).f15266f;
                }
                j2 = jR2;
            }
            long j13 = hlsMediaPlaylist.u;
            singlePeriodTimeline = new SinglePeriodTimeline(j8, jF0, -9223372036854775807L, j13, j13, 0L, j2, true, false, true, hlsManifest, d(), null);
        }
        v(singlePeriodTimeline);
    }

    public static final class Factory implements MediaSourceFactory {
        public static final /* synthetic */ int p = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HlsDataSourceFactory f15166c;
        public DefaultHlsExtractorFactory d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SubtitleParser.Factory f15167e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f15168f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final DefaultHlsPlaylistParserFactory f15169h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final os f15170i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final DefaultCompositeSequenceableLoaderFactory f15171j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final DefaultDrmSessionManagerProvider f15172k;
        public final DefaultLoadErrorHandlingPolicy l;
        public final boolean m;
        public final int n;
        public final long o;

        public Factory(HlsDataSourceFactory hlsDataSourceFactory) {
            hlsDataSourceFactory.getClass();
            this.f15166c = hlsDataSourceFactory;
            this.f15172k = new DefaultDrmSessionManagerProvider();
            this.f15169h = new DefaultHlsPlaylistParserFactory();
            this.f15170i = DefaultHlsPlaylistTracker.x;
            this.l = new DefaultLoadErrorHandlingPolicy();
            this.f15171j = new DefaultCompositeSequenceableLoaderFactory();
            this.n = 1;
            this.o = -9223372036854775807L;
            this.m = true;
            this.g = 3;
            this.f15168f = true;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final void a(SubtitleParser.Factory factory) {
            this.f15167e = factory;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final void b(int i2) {
            this.g = i2;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final MediaSource c(MediaItem mediaItem) {
            mediaItem.f13788b.getClass();
            if (this.d == null) {
                this.d = new DefaultHlsExtractorFactory();
            }
            SubtitleParser.Factory factory = this.f15167e;
            if (factory != null) {
                this.d.f15130b = factory;
            }
            DefaultHlsExtractorFactory defaultHlsExtractorFactory = this.d;
            defaultHlsExtractorFactory.f15131c = this.f15168f;
            defaultHlsExtractorFactory.d = this.g;
            List list = mediaItem.f13788b.f13851e;
            boolean zIsEmpty = list.isEmpty();
            DefaultHlsPlaylistParserFactory defaultHlsPlaylistParserFactory = this.f15169h;
            HlsPlaylistParserFactory filteringHlsPlaylistParserFactory = !zIsEmpty ? new FilteringHlsPlaylistParserFactory(defaultHlsPlaylistParserFactory, list) : defaultHlsPlaylistParserFactory;
            DrmSessionManager drmSessionManagerA = this.f15172k.a(mediaItem);
            this.f15170i.getClass();
            HlsDataSourceFactory hlsDataSourceFactory = this.f15166c;
            DefaultLoadErrorHandlingPolicy defaultLoadErrorHandlingPolicy = this.l;
            return new HlsMediaSource(mediaItem, this.f15166c, defaultHlsExtractorFactory, this.f15171j, null, drmSessionManagerA, defaultLoadErrorHandlingPolicy, new DefaultHlsPlaylistTracker(hlsDataSourceFactory, defaultLoadErrorHandlingPolicy, filteringHlsPlaylistParserFactory, null, null), this.o, this.m, this.n);
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public final void d(boolean z) {
            this.f15168f = z;
        }

        public Factory(DataSource.Factory factory) {
            this(new DefaultHlsDataSourceFactory(factory));
        }
    }
}
