package androidx.media3.exoplayer.source;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import defpackage.p3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class SingleSampleMediaPeriod implements MediaPeriod, Loader.Callback<SourceLoadable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSpec f15606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource.Factory f15607c;
    public final TransferListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaSourceEventListener.EventDispatcher f15609f;
    public final TrackGroupArray g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f15610h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f15611i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Loader f15612j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Format f15613k;
    public final boolean l;
    public boolean m;
    public byte[] n;
    public int o;

    public final class SampleStreamImpl implements SampleStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15615b;

        public SampleStreamImpl() {
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final void a() throws IOException {
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            if (singleSampleMediaPeriod.l) {
                return;
            }
            singleSampleMediaPeriod.f15612j.c(Integer.MIN_VALUE);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int b(long j2) {
            d();
            if (j2 <= 0 || this.f15614a == 2) {
                return 0;
            }
            this.f15614a = 2;
            return 1;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            d();
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            boolean z = singleSampleMediaPeriod.m;
            if (z && singleSampleMediaPeriod.n == null) {
                this.f15614a = 2;
            }
            int i3 = this.f15614a;
            if (i3 == 2) {
                decoderInputBuffer.e(4);
                return -4;
            }
            if ((i2 & 2) != 0 || i3 == 0) {
                formatHolder.f14697b = singleSampleMediaPeriod.f15613k;
                this.f15614a = 1;
                return -5;
            }
            if (!z) {
                return -3;
            }
            singleSampleMediaPeriod.n.getClass();
            decoderInputBuffer.e(1);
            decoderInputBuffer.g = 0L;
            if ((i2 & 4) == 0) {
                decoderInputBuffer.i(singleSampleMediaPeriod.o);
                decoderInputBuffer.f14543e.put(singleSampleMediaPeriod.n, 0, singleSampleMediaPeriod.o);
            }
            if ((i2 & 1) == 0) {
                this.f15614a = 2;
            }
            return -4;
        }

        public final void d() {
            if (this.f15615b) {
                return;
            }
            SingleSampleMediaPeriod singleSampleMediaPeriod = SingleSampleMediaPeriod.this;
            MediaSourceEventListener.EventDispatcher eventDispatcher = singleSampleMediaPeriod.f15609f;
            int i2 = MimeTypes.i(singleSampleMediaPeriod.f15613k.o);
            Format format = singleSampleMediaPeriod.f15613k;
            eventDispatcher.getClass();
            eventDispatcher.a(new p3(eventDispatcher, new MediaLoadData(1, i2, format, 0, null, Util.f0(0L), -9223372036854775807L), 17));
            this.f15615b = true;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final boolean isReady() {
            return SingleSampleMediaPeriod.this.m;
        }
    }

    public static final class SourceLoadable implements Loader.Loadable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15617a = LoadEventInfo.g.getAndIncrement();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DataSpec f15618b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StatsDataSource f15619c;
        public byte[] d;

        public SourceLoadable(DataSpec dataSpec, DataSource dataSource) {
            this.f15618b = dataSpec;
            this.f15619c = new StatsDataSource(dataSource);
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void a() {
            StatsDataSource statsDataSource = this.f15619c;
            statsDataSource.f14442b = 0L;
            try {
                statsDataSource.a(this.f15618b);
                int i2 = 0;
                while (i2 != -1) {
                    int i3 = (int) statsDataSource.f14442b;
                    byte[] bArr = this.d;
                    if (bArr == null) {
                        this.d = new byte[1024];
                    } else if (i3 == bArr.length) {
                        this.d = Arrays.copyOf(bArr, bArr.length * 2);
                    }
                    byte[] bArr2 = this.d;
                    i2 = statsDataSource.read(bArr2, i3, bArr2.length - i3);
                }
            } finally {
                DataSourceUtil.a(statsDataSource);
            }
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void c() {
        }
    }

    public SingleSampleMediaPeriod(DataSpec dataSpec, DataSource.Factory factory, TransferListener transferListener, Format format, long j2, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher, boolean z, ReleasableExecutor releasableExecutor) {
        this.f15606b = dataSpec;
        this.f15607c = factory;
        this.d = transferListener;
        this.f15613k = format;
        this.f15611i = j2;
        this.f15608e = loadErrorHandlingPolicy;
        this.f15609f = eventDispatcher;
        this.l = z;
        this.g = new TrackGroupArray(new TrackGroup(format));
        this.f15612j = releasableExecutor != null ? new Loader(releasableExecutor) : new Loader("SingleSampleMediaPeriod");
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        if (this.m) {
            return false;
        }
        Loader loader = this.f15612j;
        if (loader.b() || loader.f15836c != null) {
            return false;
        }
        DataSource dataSourceB = this.f15607c.b();
        TransferListener transferListener = this.d;
        if (transferListener != null) {
            dataSourceB.c(transferListener);
        }
        loader.e(new SourceLoadable(this.f15606b, dataSourceB), this, this.f15608e.b(1));
        return true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final Loader.LoadErrorAction b(Loader.Loadable loadable, long j2, long j3, IOException iOException, int i2) {
        Loader.LoadErrorAction loadErrorAction;
        SourceLoadable sourceLoadable = (SourceLoadable) loadable;
        StatsDataSource statsDataSource = sourceLoadable.f15619c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.f15617a, sourceLoadable.f15618b, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, this.f15613k, 0, null, 0L, Util.f0(this.f15611i)), iOException, i2);
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.f15608e;
        long jA = loadErrorHandlingPolicy.a(loadErrorInfo);
        boolean z = jA == -9223372036854775807L || i2 >= loadErrorHandlingPolicy.b(1);
        if (this.l && z) {
            Log.h("Loading failed, treating as end-of-stream.", iOException);
            this.m = true;
            loadErrorAction = Loader.f15832e;
        } else {
            loadErrorAction = jA != -9223372036854775807L ? new Loader.LoadErrorAction(0, jA) : Loader.f15833f;
        }
        Loader.LoadErrorAction loadErrorAction2 = loadErrorAction;
        int i3 = loadErrorAction2.f15837a;
        this.f15609f.d(loadEventInfo, 1, -1, this.f15613k, 0, null, 0L, this.f15611i, iOException, !(i3 == 0 || i3 == 1));
        return loadErrorAction2;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        return (this.m || this.f15612j.b()) ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f15610h;
            if (i2 >= arrayList.size()) {
                return j2;
            }
            SampleStreamImpl sampleStreamImpl = (SampleStreamImpl) arrayList.get(i2);
            if (sampleStreamImpl.f15614a == 2) {
                sampleStreamImpl.f15614a = 1;
            }
            i2++;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
            SampleStream sampleStream = sampleStreamArr[i2];
            ArrayList arrayList = this.f15610h;
            if (sampleStream != null && (exoTrackSelectionArr[i2] == null || !zArr[i2])) {
                arrayList.remove(sampleStream);
                sampleStreamArr[i2] = null;
            }
            if (sampleStreamArr[i2] == null && exoTrackSelectionArr[i2] != null) {
                SampleStreamImpl sampleStreamImpl = new SampleStreamImpl();
                arrayList.add(sampleStreamImpl);
                sampleStreamArr[i2] = sampleStreamImpl;
                zArr2[i2] = true;
            }
        }
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() {
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void l(Loader.Loadable loadable, long j2, long j3, int i2) {
        SourceLoadable sourceLoadable = (SourceLoadable) loadable;
        StatsDataSource statsDataSource = sourceLoadable.f15619c;
        this.f15609f.f(i2 == 0 ? new LoadEventInfo(sourceLoadable.f15617a, sourceLoadable.f15618b, j2) : new LoadEventInfo(sourceLoadable.f15617a, sourceLoadable.f15618b, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b), 1, -1, this.f15613k, 0, null, 0L, this.f15611i, i2);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.f15612j.b();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        callback.j(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        return this.g;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void q(Loader.Loadable loadable, long j2, long j3) {
        SourceLoadable sourceLoadable = (SourceLoadable) loadable;
        this.o = (int) sourceLoadable.f15619c.f14442b;
        byte[] bArr = sourceLoadable.d;
        bArr.getClass();
        this.n = bArr;
        this.m = true;
        StatsDataSource statsDataSource = sourceLoadable.f15619c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.f15617a, sourceLoadable.f15618b, statsDataSource.f14443c, statsDataSource.d, j2, j3, this.o);
        this.f15608e.getClass();
        this.f15609f.c(loadEventInfo, 1, -1, this.f15613k, 0, null, 0L, this.f15611i);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        return this.m ? Long.MIN_VALUE : 0L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) {
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void w(Loader.Loadable loadable, long j2, long j3, boolean z) {
        SourceLoadable sourceLoadable = (SourceLoadable) loadable;
        StatsDataSource statsDataSource = sourceLoadable.f15619c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(sourceLoadable.f15617a, sourceLoadable.f15618b, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.f15608e.getClass();
        this.f15609f.b(loadEventInfo, 1, -1, null, 0, null, 0L, this.f15611i);
    }
}
