package androidx.media3.exoplayer.source;

import android.net.Uri;
import android.os.Handler;
import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ForwardingSeekMap;
import androidx.media3.extractor.ForwardingTrackOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import defpackage.p3;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
final class ProgressiveMediaPeriod implements MediaPeriod, ExtractorOutput, Loader.Callback<ExtractingLoadable>, Loader.ReleaseCallback, SampleQueue.UpstreamFormatChangedListener {
    public static final Map W;
    public static final Format X;
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public TrackState E;
    public SeekMap F;
    public long G;
    public boolean H;
    public int I;
    public long J = Long.MIN_VALUE;
    public boolean K;
    public boolean L;
    public boolean M;
    public int N;
    public boolean O;
    public long P;
    public long Q;
    public boolean R;
    public int S;
    public boolean T;
    public boolean V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f15539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f15540c;
    public final DrmSessionManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaSourceEventListener.EventDispatcher f15542f;
    public final DrmSessionEventListener.EventDispatcher g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Listener f15543h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Allocator f15544i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f15545j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f15546k;
    public final boolean l;
    public final int m;
    public final Format n;
    public final long o;
    public final Loader p;
    public final ProgressiveMediaExtractor q;
    public final ConditionVariable r;
    public final c s;
    public final c t;
    public final Handler u;
    public MediaPeriod.Callback v;
    public IcyHeaders w;
    public ControlledTrackOutput[] x;
    public SampleQueue[] y;
    public TrackId[] z;

    public static class ControlledTrackOutput extends ForwardingTrackOutput {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SampleQueue f15548b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DiscardingTrackOutput f15549c;
        public final AtomicReference d;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class OutputMode {
            private static final /* synthetic */ OutputMode[] $VALUES;
            public static final OutputMode DISCARDING;
            public static final OutputMode DISCARD_AFTER_NEXT_SAMPLE_METADATA;
            public static final OutputMode PASS_THROUGH;

            static {
                OutputMode outputMode = new OutputMode("PASS_THROUGH", 0);
                PASS_THROUGH = outputMode;
                OutputMode outputMode2 = new OutputMode("DISCARD_AFTER_NEXT_SAMPLE_METADATA", 1);
                DISCARD_AFTER_NEXT_SAMPLE_METADATA = outputMode2;
                OutputMode outputMode3 = new OutputMode("DISCARDING", 2);
                DISCARDING = outputMode3;
                $VALUES = new OutputMode[]{outputMode, outputMode2, outputMode3};
            }

            public static OutputMode valueOf(String str) {
                return (OutputMode) Enum.valueOf(OutputMode.class, str);
            }

            public static OutputMode[] values() {
                return (OutputMode[]) $VALUES.clone();
            }
        }

        public ControlledTrackOutput(SampleQueue sampleQueue) {
            super(sampleQueue);
            this.f15548b = sampleQueue;
            this.f15549c = new DiscardingTrackOutput();
            this.d = new AtomicReference(OutputMode.PASS_THROUGH);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public final void a(ParsableByteArray parsableByteArray, int i2, int i3) {
            h().a(parsableByteArray, i2, i3);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public final int c(DataReader dataReader, int i2, boolean z) {
            return h().c(dataReader, i2, z);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public final int d(DataReader dataReader, int i2, boolean z) {
            return h().d(dataReader, i2, z);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public final void f(int i2, ParsableByteArray parsableByteArray) {
            h().f(i2, parsableByteArray);
        }

        @Override // androidx.media3.extractor.ForwardingTrackOutput, androidx.media3.extractor.TrackOutput
        public final void g(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
            h().g(j2, i2, i3, i4, cryptoData);
            AtomicReference atomicReference = this.d;
            if (atomicReference.get() == OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA) {
                this.f15548b.z(false);
                atomicReference.set(OutputMode.DISCARDING);
            }
        }

        public final TrackOutput h() {
            return this.d.get() == OutputMode.DISCARDING ? this.f15549c : this.f15548b;
        }
    }

    public final class ExtractingLoadable implements Loader.Loadable, IcyDataSource.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f15551b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StatsDataSource f15552c;
        public final ProgressiveMediaExtractor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ExtractorOutput f15553e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ConditionVariable f15554f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f15555h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public long f15557j;
        public TrackOutput l;
        public boolean m;
        public final PositionHolder g = new PositionHolder();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f15556i = true;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15550a = LoadEventInfo.g.getAndIncrement();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public DataSpec f15558k = d(0, null);

        public ExtractingLoadable(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, ExtractorOutput extractorOutput, ConditionVariable conditionVariable) {
            this.f15551b = uri;
            this.f15552c = new StatsDataSource(dataSource);
            this.d = progressiveMediaExtractor;
            this.f15553e = extractorOutput;
            this.f15554f = conditionVariable;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void a() {
            DataSource icyDataSource;
            int i2;
            int iD = 0;
            String str = null;
            while (iD == 0 && !this.f15555h) {
                try {
                    long j2 = this.g.f16190a;
                    DataSpec dataSpecD = d(j2, str);
                    this.f15558k = dataSpecD;
                    long jA = this.f15552c.a(dataSpecD);
                    if (this.f15555h) {
                        if (iD != 1 && this.d.c() != -1) {
                            this.g.f16190a = this.d.c();
                        }
                        DataSourceUtil.a(this.f15552c);
                        return;
                    }
                    List list = (List) this.f15552c.f14441a.f().get("ETag");
                    str = (list == null || list.isEmpty()) ? null : (String) list.get(0);
                    if (jA != -1) {
                        jA += j2;
                        ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
                        progressiveMediaPeriod.u.post(new c(progressiveMediaPeriod, 0));
                    }
                    long j3 = jA;
                    ProgressiveMediaPeriod.this.w = IcyHeaders.d(this.f15552c.f14441a.f());
                    StatsDataSource statsDataSource = this.f15552c;
                    IcyHeaders icyHeaders = ProgressiveMediaPeriod.this.w;
                    if (icyHeaders == null || (i2 = icyHeaders.f16358f) == -1) {
                        icyDataSource = statsDataSource;
                    } else {
                        icyDataSource = new IcyDataSource(statsDataSource, i2, this);
                        ProgressiveMediaPeriod progressiveMediaPeriod2 = ProgressiveMediaPeriod.this;
                        progressiveMediaPeriod2.getClass();
                        TrackOutput trackOutputE = progressiveMediaPeriod2.E(new TrackId(0, true));
                        this.l = trackOutputE;
                        trackOutputE.b(ProgressiveMediaPeriod.X);
                    }
                    this.d.e(icyDataSource, this.f15551b, this.f15552c.f14441a.f(), j2, j3, this.f15553e);
                    if (ProgressiveMediaPeriod.this.w != null) {
                        this.d.b();
                    }
                    if (this.f15556i) {
                        this.d.a(j2, this.f15557j);
                        this.f15556i = false;
                    }
                    while (iD == 0 && !this.f15555h) {
                        try {
                            this.f15554f.a();
                            iD = this.d.d(this.g);
                            long jC = this.d.c();
                            if (jC > ProgressiveMediaPeriod.this.f15546k + j2) {
                                ConditionVariable conditionVariable = this.f15554f;
                                synchronized (conditionVariable) {
                                    conditionVariable.f14151b = false;
                                }
                                ProgressiveMediaPeriod progressiveMediaPeriod3 = ProgressiveMediaPeriod.this;
                                progressiveMediaPeriod3.u.post(progressiveMediaPeriod3.t);
                                j2 = jC;
                            }
                        } catch (InterruptedException unused) {
                            throw new InterruptedIOException();
                        }
                    }
                    if (iD == 1) {
                        iD = 0;
                    } else if (this.d.c() != -1) {
                        this.g.f16190a = this.d.c();
                    }
                    DataSourceUtil.a(this.f15552c);
                } catch (Throwable th) {
                    if (iD != 1 && this.d.c() != -1) {
                        this.g.f16190a = this.d.c();
                    }
                    DataSourceUtil.a(this.f15552c);
                    throw th;
                }
            }
        }

        @Override // androidx.media3.exoplayer.source.IcyDataSource.Listener
        public final void b(ParsableByteArray parsableByteArray) {
            long jMax;
            if (this.m) {
                Map map = ProgressiveMediaPeriod.W;
                jMax = Math.max(ProgressiveMediaPeriod.this.z(true), this.f15557j);
            } else {
                jMax = this.f15557j;
            }
            long j2 = jMax;
            int iA = parsableByteArray.a();
            TrackOutput trackOutput = this.l;
            trackOutput.getClass();
            trackOutput.f(iA, parsableByteArray);
            trackOutput.g(j2, 1, iA, 0, null);
            this.m = true;
        }

        @Override // androidx.media3.exoplayer.upstream.Loader.Loadable
        public final void c() {
            this.f15555h = true;
        }

        public final DataSpec d(long j2, String str) {
            Map mapB = ProgressiveMediaPeriod.W;
            if (str != null && !str.startsWith("W/")) {
                mapB = new ImmutableMap.Builder().f(mapB).d("If-Range", str).b();
            }
            DataSpec.Builder builder = new DataSpec.Builder();
            builder.f14397a = this.f15551b;
            builder.f14401f = j2;
            builder.f14402h = ProgressiveMediaPeriod.this.f15545j;
            builder.f14403i = 6;
            builder.f14400e = mapB;
            return builder.a();
        }
    }

    public interface Listener {
        void i(long j2, SeekMap seekMap, boolean z);
    }

    public final class SampleStreamImpl implements SampleStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15559a;

        public SampleStreamImpl(int i2) {
            this.f15559a = i2;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final void a() throws IOException {
            int i2 = this.f15559a;
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            SampleQueue sampleQueue = progressiveMediaPeriod.y[i2];
            DrmSession drmSession = sampleQueue.f15588h;
            if (drmSession == null || drmSession.getState() != 1) {
                progressiveMediaPeriod.p.c(progressiveMediaPeriod.f15541e.b(progressiveMediaPeriod.I));
            } else {
                DrmSession.DrmSessionException drmSessionExceptionA = sampleQueue.f15588h.a();
                drmSessionExceptionA.getClass();
                throw drmSessionExceptionA;
            }
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int b(long j2) throws Throwable {
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            if (progressiveMediaPeriod.H()) {
                return 0;
            }
            int i2 = this.f15559a;
            progressiveMediaPeriod.C(i2);
            SampleQueue sampleQueue = progressiveMediaPeriod.y[i2];
            int iS = sampleQueue.s(j2, progressiveMediaPeriod.T);
            sampleQueue.D(iS);
            if (iS == 0) {
                progressiveMediaPeriod.D(i2);
            }
            return iS;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            if (progressiveMediaPeriod.H()) {
                return -3;
            }
            int i3 = this.f15559a;
            progressiveMediaPeriod.C(i3);
            int iY = progressiveMediaPeriod.y[i3].y(formatHolder, decoderInputBuffer, i2, progressiveMediaPeriod.T);
            if (iY == -3) {
                progressiveMediaPeriod.D(i3);
            }
            return iY;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final boolean isReady() {
            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
            return !progressiveMediaPeriod.H() && progressiveMediaPeriod.y[this.f15559a].u(progressiveMediaPeriod.T);
        }
    }

    public static final class TrackId {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15562b;

        public TrackId(int i2, boolean z) {
            this.f15561a = i2;
            this.f15562b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && TrackId.class == obj.getClass()) {
                TrackId trackId = (TrackId) obj;
                if (this.f15561a == trackId.f15561a && this.f15562b == trackId.f15562b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f15561a * 31) + (this.f15562b ? 1 : 0);
        }
    }

    public static final class TrackState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackGroupArray f15563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f15564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean[] f15565c;
        public final boolean[] d;

        public TrackState(TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f15563a = trackGroupArray;
            this.f15564b = zArr;
            int i2 = trackGroupArray.f15636a;
            this.f15565c = new boolean[i2];
            this.d = new boolean[i2];
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("Icy-MetaData", "1");
        W = Collections.unmodifiableMap(map);
        Format.Builder builder = new Format.Builder();
        builder.f13764a = "icy";
        builder.n = MimeTypes.p("application/x-icy");
        X = new Format(builder);
    }

    public ProgressiveMediaPeriod(Uri uri, DataSource dataSource, ProgressiveMediaExtractor progressiveMediaExtractor, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Listener listener, Allocator allocator, String str, int i2, boolean z, int i3, Format format, long j2, ReleasableExecutor releasableExecutor) {
        this.f15539b = uri;
        this.f15540c = dataSource;
        this.d = drmSessionManager;
        this.g = eventDispatcher;
        this.f15541e = loadErrorHandlingPolicy;
        this.f15542f = eventDispatcher2;
        this.f15543h = listener;
        this.f15544i = allocator;
        this.f15545j = str;
        this.f15546k = i2;
        this.l = z;
        this.m = i3;
        this.n = format;
        this.p = releasableExecutor != null ? new Loader(releasableExecutor) : new Loader("ProgressiveMediaPeriod");
        this.q = progressiveMediaExtractor;
        this.o = j2;
        this.r = new ConditionVariable();
        this.s = new c(this, 1);
        this.t = new c(this, 2);
        this.u = Util.r(null);
        this.z = new TrackId[0];
        this.y = new SampleQueue[0];
        this.x = new ControlledTrackOutput[0];
        this.Q = -9223372036854775807L;
        this.I = 1;
    }

    public final boolean A() {
        return this.Q != -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B() {
        Metadata metadataA;
        char c2;
        long j2 = this.o;
        if (this.V || this.B || !this.A || this.F == null) {
            return;
        }
        char c3 = 0;
        for (SampleQueue sampleQueue : this.y) {
            if (sampleQueue.t() == null) {
                return;
            }
        }
        ConditionVariable conditionVariable = this.r;
        synchronized (conditionVariable) {
            conditionVariable.f14151b = false;
        }
        int length = this.y.length;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            char c4 = 1;
            if (i3 >= length) {
                break;
            }
            Format formatT = this.y[i3].t();
            formatT.getClass();
            int i5 = MimeTypes.i(formatT.o);
            if (i5 == 1) {
                c2 = 3;
            } else if (i5 == 2) {
                c2 = 4;
            } else if (i5 != 3) {
                c2 = i5 != 4 ? (char) 0 : (char) 2;
            } else {
                c2 = 1;
            }
            if (i2 == 1) {
                c4 = 3;
            } else if (i2 == 2) {
                c4 = 4;
            } else if (i2 != 3) {
                c4 = i2 != 4 ? (char) 0 : (char) 2;
            }
            if (c2 > c4) {
                i4 = i3;
                i2 = i5;
            }
            i3++;
        }
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        boolean[] zArr = new boolean[length];
        int i6 = 0;
        while (i6 < length) {
            Format formatT2 = this.y[i6].t();
            formatT2.getClass();
            String str = formatT2.o;
            boolean zK = MimeTypes.k(str);
            boolean z = (zK || MimeTypes.o(str)) ? true : c3;
            zArr[i6] = z;
            char c5 = c3;
            this.C = (this.C ? 1 : 0) | (z ? 1 : 0);
            this.D = (j2 != -9223372036854775807L && length == 1 && MimeTypes.m(str)) ? 1 : c5;
            IcyHeaders icyHeaders = this.w;
            if (icyHeaders != null) {
                int i7 = icyHeaders.f16354a;
                if (zK || this.z[i6].f15562b) {
                    Metadata metadata = formatT2.l;
                    if (metadata == null) {
                        Metadata.Entry[] entryArr = new Metadata.Entry[1];
                        entryArr[c5] = icyHeaders;
                        metadataA = new Metadata(entryArr);
                    } else {
                        Metadata.Entry[] entryArr2 = new Metadata.Entry[1];
                        entryArr2[c5] = icyHeaders;
                        metadataA = metadata.a(entryArr2);
                    }
                    Format.Builder builderA = formatT2.a();
                    builderA.f13772k = metadataA;
                    formatT2 = new Format(builderA);
                }
                if (zK && formatT2.f13760h == -1 && formatT2.f13761i == -1 && i7 != -1) {
                    Format.Builder builderA2 = formatT2.a();
                    builderA2.f13769h = i7;
                    formatT2 = new Format(builderA2);
                }
            }
            int iC = this.d.c(formatT2);
            Format.Builder builderA3 = formatT2.a();
            builderA3.O = iC;
            Format format = new Format(builderA3);
            if (i6 != i4) {
                Format.Builder builderA4 = format.a();
                builderA4.l = Integer.toString(i4);
                format = new Format(builderA4);
            }
            trackGroupArr[i6] = new TrackGroup(Integer.toString(i6), format);
            this.M = format.u | this.M;
            this.y[i6].C(this.J);
            i6++;
            c3 = c5;
        }
        this.E = new TrackState(new TrackGroupArray(trackGroupArr), zArr);
        if (this.D && this.G == -9223372036854775807L) {
            this.G = j2;
            this.F = new ForwardingSeekMap(this.F) { // from class: androidx.media3.exoplayer.source.ProgressiveMediaPeriod.1
                @Override // androidx.media3.extractor.ForwardingSeekMap, androidx.media3.extractor.SeekMap
                public final long h() {
                    return ProgressiveMediaPeriod.this.G;
                }
            };
        }
        this.f15543h.i(this.G, this.F, this.H);
        this.B = true;
        MediaPeriod.Callback callback = this.v;
        callback.getClass();
        callback.j(this);
    }

    public final void C(int i2) {
        x();
        TrackState trackState = this.E;
        boolean[] zArr = trackState.d;
        if (zArr[i2]) {
            return;
        }
        Format format = trackState.f15563a.a(i2).d[0];
        int i3 = MimeTypes.i(format.o);
        long j2 = this.P;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.f15542f;
        eventDispatcher.getClass();
        eventDispatcher.a(new p3(eventDispatcher, new MediaLoadData(1, i3, format, 0, null, Util.f0(j2), -9223372036854775807L), 17));
        zArr[i2] = true;
    }

    public final void D(int i2) {
        x();
        if (this.R) {
            if ((!this.C || this.E.f15564b[i2]) && !this.y[i2].u(false)) {
                this.Q = 0L;
                this.R = false;
                this.L = true;
                this.P = 0L;
                this.S = 0;
                for (SampleQueue sampleQueue : this.y) {
                    sampleQueue.z(false);
                }
                MediaPeriod.Callback callback = this.v;
                callback.getClass();
                callback.l(this);
            }
        }
    }

    public final TrackOutput E(TrackId trackId) {
        int length = this.y.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (trackId.equals(this.z[i2])) {
                return this.y[i2];
            }
        }
        if (this.A) {
            Log.g("Extractor added new track (id=" + trackId.f15561a + ") after finishing tracks.");
            return new DiscardingTrackOutput();
        }
        DrmSessionManager drmSessionManager = this.d;
        drmSessionManager.getClass();
        DrmSessionEventListener.EventDispatcher eventDispatcher = this.g;
        eventDispatcher.getClass();
        SampleQueue sampleQueue = new SampleQueue(this.f15544i, drmSessionManager, eventDispatcher);
        ControlledTrackOutput controlledTrackOutput = new ControlledTrackOutput(sampleQueue);
        sampleQueue.f15587f = this;
        int i3 = length + 1;
        TrackId[] trackIdArr = (TrackId[]) Arrays.copyOf(this.z, i3);
        trackIdArr[length] = trackId;
        String str = Util.f14242a;
        this.z = trackIdArr;
        SampleQueue[] sampleQueueArr = (SampleQueue[]) Arrays.copyOf(this.y, i3);
        sampleQueueArr[length] = sampleQueue;
        this.y = sampleQueueArr;
        ControlledTrackOutput[] controlledTrackOutputArr = (ControlledTrackOutput[]) Arrays.copyOf(this.x, i3);
        controlledTrackOutputArr[length] = controlledTrackOutput;
        this.x = controlledTrackOutputArr;
        return controlledTrackOutput;
    }

    public final void F(SeekMap seekMap) {
        this.F = this.w == null ? seekMap : new SeekMap.Unseekable(-9223372036854775807L);
        this.G = seekMap.h();
        boolean z = !this.O && seekMap.h() == -9223372036854775807L;
        this.H = z;
        this.I = z ? 7 : 1;
        if (this.B) {
            this.f15543h.i(this.G, seekMap, z);
        } else {
            B();
        }
    }

    public final void G() {
        ExtractingLoadable extractingLoadable = new ExtractingLoadable(this.f15539b, this.f15540c, this.q, this, this.r);
        if (this.B) {
            Preconditions.q(A());
            long j2 = this.J;
            if (j2 == Long.MIN_VALUE) {
                j2 = this.G;
            }
            if (j2 != -9223372036854775807L && this.Q > j2) {
                this.T = true;
                this.Q = -9223372036854775807L;
                return;
            }
            SeekMap seekMap = this.F;
            seekMap.getClass();
            long j3 = seekMap.c(this.Q).f16191a.f16197b;
            long j4 = this.Q;
            extractingLoadable.g.f16190a = j3;
            extractingLoadable.f15557j = j4;
            extractingLoadable.f15556i = true;
            extractingLoadable.m = false;
            for (SampleQueue sampleQueue : this.y) {
                sampleQueue.t = this.Q;
            }
            this.Q = -9223372036854775807L;
        }
        this.S = y();
        this.p.e(extractingLoadable, this, this.f15541e.b(this.I));
    }

    public final boolean H() {
        return this.L || A();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        if (this.T) {
            return false;
        }
        Loader loader = this.p;
        if (loader.f15836c != null || this.R) {
            return false;
        }
        if ((this.B || this.n != null) && this.N == 0) {
            return false;
        }
        boolean zD = this.r.d();
        if (loader.b()) {
            return zD;
        }
        G();
        return true;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final Loader.LoadErrorAction b(Loader.Loadable loadable, long j2, long j3, IOException iOException, int i2) {
        Loader.LoadErrorAction loadErrorAction;
        SeekMap seekMap;
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.f15552c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.f15550a, extractingLoadable.f15558k, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        long jA = this.f15541e.a(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(1, -1, null, 0, null, Util.f0(extractingLoadable.f15557j), Util.f0(this.G)), iOException, i2));
        if (jA == -9223372036854775807L) {
            loadErrorAction = Loader.f15833f;
        } else {
            int iY = y();
            int i3 = iY > this.S ? 1 : 0;
            if (this.O || !((seekMap = this.F) == null || seekMap.h() == -9223372036854775807L)) {
                this.S = iY;
            } else if (!this.B || H()) {
                this.L = this.B;
                this.P = 0L;
                this.S = 0;
                for (SampleQueue sampleQueue : this.y) {
                    sampleQueue.z(false);
                }
                extractingLoadable.g.f16190a = 0L;
                extractingLoadable.f15557j = 0L;
                extractingLoadable.f15556i = true;
                extractingLoadable.m = false;
            } else {
                this.R = true;
                loadErrorAction = Loader.f15832e;
            }
            loadErrorAction = new Loader.LoadErrorAction(i3, jA);
        }
        int i4 = loadErrorAction.f15837a;
        this.f15542f.d(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.f15557j, this.G, iOException, !(i4 == 0 || i4 == 1));
        return loadErrorAction;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        return s();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        x();
        if (!this.F.e()) {
            return 0L;
        }
        SeekMap.SeekPoints seekPointsC = this.F.c(j2);
        return seekParameters.a(j2, seekPointsC.f16191a.f16196a, seekPointsC.f16192b.f16196a);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x008d A[LOOP:1: B:42:0x008b->B:43:0x008d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:46:0x0099  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a2 A[LOOP:2: B:47:0x00a0->B:48:0x00a2, LOOP_END] */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x0088, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x0099, please report this as an issue */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        int i2;
        x();
        boolean[] zArr = this.E.f15564b;
        if (!this.F.e()) {
            j2 = 0;
        }
        this.L = false;
        boolean z = this.P == j2;
        this.P = j2;
        if (A()) {
            this.Q = j2;
            return j2;
        }
        int i3 = this.I;
        Loader loader = this.p;
        if (i3 == 7 || !(this.T || loader.b())) {
            this.R = false;
            this.Q = j2;
            this.T = false;
            this.M = false;
            if (loader.b()) {
                loader.f15836c = null;
                for (SampleQueue sampleQueue : this.y) {
                    sampleQueue.z(false);
                }
                break;
            }
            for (SampleQueue sampleQueue2 : this.y) {
                sampleQueue2.j();
            }
            loader.a();
            return j2;
        }
        int length = this.y.length;
        for (int i4 = 0; i4 < length; i4++) {
            SampleQueue sampleQueue3 = this.y[i4];
            if (this.x[i4].d.get() == ControlledTrackOutput.OutputMode.PASS_THROUGH && (sampleQueue3.q() != 0 || !z)) {
                if (!(this.D ? sampleQueue3.A(sampleQueue3.q) : sampleQueue3.B(j2, this.T)) && (zArr[i4] || !this.C)) {
                    this.R = false;
                    this.Q = j2;
                    this.T = false;
                    this.M = false;
                    if (loader.b()) {
                        loader.f15836c = null;
                        while (i2 < r0) {
                            sampleQueue.z(false);
                        }
                        break;
                        break;
                    }
                    while (i < r0) {
                        sampleQueue2.j();
                    }
                    loader.a();
                    return j2;
                }
            }
        }
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        boolean z;
        ExoTrackSelection exoTrackSelection;
        x();
        TrackState trackState = this.E;
        TrackGroupArray trackGroupArray = trackState.f15563a;
        boolean[] zArr3 = trackState.f15565c;
        int i2 = this.N;
        int i3 = 0;
        for (int i4 = 0; i4 < exoTrackSelectionArr.length; i4++) {
            SampleStream sampleStream = sampleStreamArr[i4];
            if (sampleStream != null && (exoTrackSelectionArr[i4] == null || !zArr[i4])) {
                int i5 = ((SampleStreamImpl) sampleStream).f15559a;
                Preconditions.q(zArr3[i5]);
                this.N--;
                zArr3[i5] = false;
                sampleStreamArr[i4] = null;
            }
        }
        boolean z2 = !this.K ? j2 == 0 || this.D : i2 != 0;
        int i6 = 0;
        while (true) {
            int length = exoTrackSelectionArr.length;
            z = this.l;
            if (i6 >= length) {
                break;
            }
            if (sampleStreamArr[i6] == null && (exoTrackSelection = exoTrackSelectionArr[i6]) != null) {
                Preconditions.q(exoTrackSelection.length() == 1);
                Preconditions.q(exoTrackSelection.f(0) == 0);
                int iB = trackGroupArray.b(exoTrackSelection.m());
                Preconditions.q(!zArr3[iB]);
                this.N++;
                zArr3[iB] = true;
                this.M = exoTrackSelection.s().u | this.M;
                sampleStreamArr[i6] = new SampleStreamImpl(iB);
                zArr2[i6] = true;
                if (z) {
                    z2 |= this.K;
                } else if (!z2) {
                    SampleQueue sampleQueue = this.y[iB];
                    z2 = (sampleQueue.q() == 0 || sampleQueue.B(j2, true)) ? false : true;
                }
            }
            i6++;
        }
        if (z) {
            int i7 = 0;
            while (true) {
                ControlledTrackOutput[] controlledTrackOutputArr = this.x;
                if (i7 >= controlledTrackOutputArr.length) {
                    break;
                }
                ControlledTrackOutput controlledTrackOutput = controlledTrackOutputArr[i7];
                boolean z3 = zArr3[i7];
                controlledTrackOutput.d.set(z3 ? ControlledTrackOutput.OutputMode.PASS_THROUGH : ControlledTrackOutput.OutputMode.DISCARD_AFTER_NEXT_SAMPLE_METADATA);
                if (!z3) {
                    controlledTrackOutput.f15548b.j();
                }
                i7++;
            }
        }
        if (this.N == 0) {
            this.R = false;
            this.L = false;
            this.M = false;
            Loader loader = this.p;
            if (loader.b()) {
                SampleQueue[] sampleQueueArr = this.y;
                int length2 = sampleQueueArr.length;
                while (i3 < length2) {
                    sampleQueueArr[i3].j();
                    i3++;
                }
                loader.a();
            } else {
                this.T = false;
                for (SampleQueue sampleQueue2 : this.y) {
                    sampleQueue2.z(false);
                }
            }
        } else if (z2) {
            j2 = e(j2);
            while (i3 < sampleStreamArr.length) {
                if (sampleStreamArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.K = true;
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        if (this.M) {
            this.M = false;
            return this.P;
        }
        if (!this.L) {
            return -9223372036854775807L;
        }
        if (!this.T && y() <= this.S) {
            return -9223372036854775807L;
        }
        this.L = false;
        return this.P;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public final void h() {
        for (SampleQueue sampleQueue : this.y) {
            sampleQueue.z(true);
            DrmSession drmSession = sampleQueue.f15588h;
            if (drmSession != null) {
                drmSession.f(sampleQueue.f15586e);
                sampleQueue.f15588h = null;
                sampleQueue.g = null;
            }
        }
        this.q.release();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j2) throws Throwable {
        this.J = j2;
        for (SampleQueue sampleQueue : this.y) {
            sampleQueue.C(j2);
        }
        return j2;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void j(final SeekMap seekMap) {
        this.u.post(new Runnable() { // from class: androidx.media3.exoplayer.source.d
            @Override // java.lang.Runnable
            public final void run() {
                Map map = ProgressiveMediaPeriod.W;
                this.f15659b.F(seekMap);
            }
        });
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() throws IOException {
        this.p.c(this.f15541e.b(this.I));
        if (this.T && !this.B) {
            throw ParserException.a(null, "Loading finished before preparation is complete.");
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void l(Loader.Loadable loadable, long j2, long j3, int i2) {
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.f15552c;
        this.f15542f.f(i2 == 0 ? new LoadEventInfo(extractingLoadable.f15550a, extractingLoadable.f15558k, j2) : new LoadEventInfo(extractingLoadable.f15550a, extractingLoadable.f15558k, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b), 1, -1, null, 0, null, extractingLoadable.f15557j, this.G, i2);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        boolean z;
        if (this.T || !this.p.b()) {
            return false;
        }
        ConditionVariable conditionVariable = this.r;
        synchronized (conditionVariable) {
            z = conditionVariable.f14151b;
        }
        return z;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.A = true;
        this.u.post(this.s);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        this.v = callback;
        Format format = this.n;
        if (format == null) {
            this.r.d();
            G();
        } else {
            r(this.m, 3).b(format);
            F(new IndexSeekMap(new long[]{0}, new long[]{0}, -9223372036854775807L));
            n();
            this.Q = j2;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        x();
        return this.E.f15563a;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void q(Loader.Loadable loadable, long j2, long j3) {
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        if (this.G == -9223372036854775807L && this.F != null) {
            long jZ = z(true);
            long j4 = jZ == Long.MIN_VALUE ? 0L : jZ + 10000;
            this.G = j4;
            this.f15543h.i(j4, this.F, this.H);
        }
        StatsDataSource statsDataSource = extractingLoadable.f15552c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.f15550a, extractingLoadable.f15558k, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.f15541e.getClass();
        this.f15542f.c(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.f15557j, this.G);
        this.T = true;
        MediaPeriod.Callback callback = this.v;
        callback.getClass();
        callback.l(this);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput r(int i2, int i3) {
        return E(new TrackId(i2, false));
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        long jZ;
        boolean z;
        long j2;
        x();
        if (this.T || this.N == 0) {
            return Long.MIN_VALUE;
        }
        if (A()) {
            return this.Q;
        }
        if (this.C) {
            int length = this.y.length;
            jZ = Long.MAX_VALUE;
            for (int i2 = 0; i2 < length; i2++) {
                TrackState trackState = this.E;
                if (trackState.f15564b[i2] && trackState.f15565c[i2]) {
                    SampleQueue sampleQueue = this.y[i2];
                    synchronized (sampleQueue) {
                        z = sampleQueue.y;
                    }
                    if (z) {
                        continue;
                    } else {
                        SampleQueue sampleQueue2 = this.y[i2];
                        synchronized (sampleQueue2) {
                            j2 = sampleQueue2.w;
                        }
                        jZ = Math.min(jZ, j2);
                    }
                }
            }
        } else {
            jZ = Long.MAX_VALUE;
        }
        if (jZ == Long.MAX_VALUE) {
            jZ = z(false);
        }
        return jZ == Long.MIN_VALUE ? this.P : jZ;
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public final void t() {
        this.u.post(this.s);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) throws Throwable {
        if (this.D) {
            return;
        }
        x();
        if (A()) {
            return;
        }
        boolean[] zArr = this.E.f15565c;
        int length = this.y.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.y[i2].i(z, zArr[i2], j2);
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        boolean z;
        if (this.N <= 0 || A()) {
            return;
        }
        boolean z2 = false;
        if (this.J != Long.MIN_VALUE) {
            x();
            int i2 = 0;
            boolean z3 = true;
            while (true) {
                SampleQueue[] sampleQueueArr = this.y;
                if (i2 >= sampleQueueArr.length) {
                    break;
                }
                TrackState trackState = this.E;
                if (trackState.f15565c[i2] && (trackState.f15564b[i2] || !this.C)) {
                    SampleQueue sampleQueue = sampleQueueArr[i2];
                    synchronized (sampleQueue) {
                        z = sampleQueue.x != -1;
                    }
                    z3 &= z;
                }
                i2++;
            }
            z2 = z3;
        }
        if (z2) {
            this.T = true;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void w(Loader.Loadable loadable, long j2, long j3, boolean z) {
        ExtractingLoadable extractingLoadable = (ExtractingLoadable) loadable;
        StatsDataSource statsDataSource = extractingLoadable.f15552c;
        LoadEventInfo loadEventInfo = new LoadEventInfo(extractingLoadable.f15550a, extractingLoadable.f15558k, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.f15541e.getClass();
        this.f15542f.b(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.f15557j, this.G);
        if (z) {
            return;
        }
        for (SampleQueue sampleQueue : this.y) {
            sampleQueue.z(false);
        }
        if (this.N > 0) {
            MediaPeriod.Callback callback = this.v;
            callback.getClass();
            callback.l(this);
        }
    }

    public final void x() {
        Preconditions.q(this.B);
        this.E.getClass();
        this.F.getClass();
    }

    public final int y() {
        int i2 = 0;
        for (SampleQueue sampleQueue : this.y) {
            i2 += sampleQueue.q + sampleQueue.p;
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x001a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0015  */
    public final long z(boolean z) {
        SampleQueue sampleQueue;
        long jMax = Long.MIN_VALUE;
        for (int i2 = 0; i2 < this.y.length; i2++) {
            if (z) {
                sampleQueue = this.y[i2];
                synchronized (sampleQueue) {
                    jMax = Math.max(jMax, sampleQueue.w);
                }
            } else {
                TrackState trackState = this.E;
                trackState.getClass();
                if (trackState.f15565c[i2]) {
                    sampleQueue = this.y[i2];
                    synchronized (sampleQueue) {
                    }
                    jMax = Math.max(jMax, sampleQueue.w);
                } else {
                    continue;
                }
            }
        }
        return jMax;
    }
}
