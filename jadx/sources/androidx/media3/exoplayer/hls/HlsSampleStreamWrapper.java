package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.HlsRedundantGroup;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.emsg.EventMessage;
import androidx.media3.extractor.metadata.emsg.EventMessageDecoder;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.id3.PrivFrame;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableListIterator;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.cj;
import defpackage.ct0;
import defpackage.et;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.y81;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class HlsSampleStreamWrapper implements Loader.Callback<Chunk>, Loader.ReleaseCallback, SequenceableLoader, ExtractorOutput, SampleQueue.UpstreamFormatChangedListener {
    public static final Set t0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(1, 2, 5)));
    public TrackOutput A;
    public int B;
    public int C;
    public boolean D;
    public boolean E;
    public int F;
    public Format G;
    public Format H;
    public boolean I;
    public TrackGroupArray J;
    public Set K;
    public int[] L;
    public int M;
    public boolean N;
    public boolean[] O;
    public boolean[] P;
    public long Q;
    public long R;
    public boolean S;
    public boolean T;
    public boolean V;
    public long W;
    public boolean X;
    public long Y;
    public DrmInitData Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15177c;
    public final Callback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HlsChunkSource f15178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Allocator f15179f;
    public final Format g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DrmSessionManager f15180h;
    public HlsMediaChunk h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DrmSessionEventListener.EventDispatcher f15181i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15182j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Loader f15183k;
    public final MediaSourceEventListener.EventDispatcher l;
    public final int m;
    public final HlsChunkSource.HlsChunkHolder n;
    public final ArrayList o;
    public final List p;
    public final b q;
    public final b r;
    public final Handler s;
    public final ArrayList t;
    public final Map u;
    public Chunk v;
    public HlsSampleQueue[] w;
    public int[] x;
    public final HashSet y;
    public final SparseIntArray z;

    public interface Callback extends SequenceableLoader.Callback<HlsSampleStreamWrapper> {
        void b();

        void n(Uri uri);
    }

    public static class EmsgUnwrappingTrackOutput implements TrackOutput {
        public static final Format g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Format f15184h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final EventMessageDecoder f15185a = new EventMessageDecoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TrackOutput f15186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Format f15187c;
        public Format d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f15188e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f15189f;

        static {
            Format.Builder builder = new Format.Builder();
            builder.n = MimeTypes.p("application/id3");
            g = new Format(builder);
            Format.Builder builder2 = new Format.Builder();
            builder2.n = MimeTypes.p("application/x-emsg");
            f15184h = new Format(builder2);
        }

        public EmsgUnwrappingTrackOutput(TrackOutput trackOutput, int i2) {
            this.f15186b = trackOutput;
            if (i2 == 1) {
                this.f15187c = g;
            } else {
                if (i2 != 3) {
                    md.n(pq0.k(i2, "Unknown metadataType: "));
                    throw null;
                }
                this.f15187c = f15184h;
            }
            this.f15188e = new byte[0];
            this.f15189f = 0;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void a(ParsableByteArray parsableByteArray, int i2, int i3) {
            int i4 = this.f15189f + i2;
            byte[] bArr = this.f15188e;
            if (bArr.length < i4) {
                this.f15188e = Arrays.copyOf(bArr, (i4 / 2) + i4);
            }
            parsableByteArray.k(this.f15189f, i2, this.f15188e);
            this.f15189f += i2;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void b(Format format) {
            this.d = format;
            this.f15186b.b(this.f15187c);
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final int d(DataReader dataReader, int i2, boolean z) throws EOFException {
            int i3 = this.f15189f + i2;
            byte[] bArr = this.f15188e;
            if (bArr.length < i3) {
                this.f15188e = Arrays.copyOf(bArr, (i3 / 2) + i3);
            }
            int i4 = dataReader.read(this.f15188e, this.f15189f, i2);
            if (i4 != -1) {
                this.f15189f += i4;
                return i4;
            }
            if (z) {
                return -1;
            }
            md.e();
            return 0;
        }

        @Override // androidx.media3.extractor.TrackOutput
        public final void g(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
            this.d.getClass();
            int i5 = this.f15189f - i4;
            ParsableByteArray parsableByteArray = new ParsableByteArray(Arrays.copyOfRange(this.f15188e, i5 - i3, i5));
            byte[] bArr = this.f15188e;
            System.arraycopy(bArr, i5, bArr, 0, i4);
            this.f15189f = i4;
            String str = this.d.o;
            Format format = this.f15187c;
            String str2 = format.o;
            String str3 = format.o;
            if (!Objects.equals(str, str2)) {
                if (!"application/x-emsg".equals(this.d.o)) {
                    Log.g("Ignoring sample for unsupported format: " + this.d.o);
                    return;
                }
                this.f15185a.getClass();
                EventMessage eventMessageC = EventMessageDecoder.c(parsableByteArray);
                Format formatA = eventMessageC.a();
                if (formatA == null || !Objects.equals(str3, formatA.o)) {
                    Log.g("Ignoring EMSG. Expected it to contain wrapped " + str3 + " but actual wrapped format: " + eventMessageC.a());
                    return;
                }
                byte[] bArrC = eventMessageC.c();
                bArrC.getClass();
                parsableByteArray = new ParsableByteArray(bArrC);
            }
            int iA = parsableByteArray.a();
            this.f15186b.f(iA, parsableByteArray);
            this.f15186b.g(j2, i2, iA, 0, cryptoData);
        }
    }

    public static final class HlsSampleQueue extends SampleQueue {
        public final Map J;
        public DrmInitData K;

        public HlsSampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, Map map) {
            super(allocator, drmSessionManager, eventDispatcher);
            this.J = map;
        }

        @Override // androidx.media3.exoplayer.source.SampleQueue
        public final Format o(Format format) {
            DrmInitData drmInitData;
            DrmInitData drmInitData2 = this.K;
            if (drmInitData2 == null) {
                drmInitData2 = format.s;
            }
            if (drmInitData2 != null && (drmInitData = (DrmInitData) this.J.get(drmInitData2.d)) != null) {
                drmInitData2 = drmInitData;
            }
            Metadata metadata = format.l;
            Metadata metadata2 = null;
            if (metadata == null) {
                metadata = metadata2;
            } else {
                Metadata.Entry[] entryArr = metadata.f13897a;
                int length = entryArr.length;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        i3 = -1;
                        break;
                    }
                    Metadata.Entry entry = entryArr[i3];
                    if ((entry instanceof PrivFrame) && "com.apple.streaming.transportStreamTimestamp".equals(((PrivFrame) entry).f16392b)) {
                        break;
                    }
                    i3++;
                }
                if (i3 != -1) {
                    if (length != 1) {
                        Metadata.Entry[] entryArr2 = new Metadata.Entry[length - 1];
                        while (i2 < length) {
                            if (i2 != i3) {
                                entryArr2[i2 < i3 ? i2 : i2 - 1] = entryArr[i2];
                            }
                            i2++;
                        }
                        metadata2 = new Metadata(entryArr2);
                    }
                    metadata = metadata2;
                }
            }
            if (drmInitData2 != format.s || metadata != format.l) {
                Format.Builder builderA = format.a();
                builderA.r = drmInitData2;
                builderA.f13772k = metadata;
                format = new Format(builderA);
            }
            return super.o(format);
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.media3.exoplayer.hls.b] */
    /* JADX WARN: Type inference failed for: r3v11, types: [androidx.media3.exoplayer.hls.b] */
    public HlsSampleStreamWrapper(String str, int i2, Callback callback, HlsChunkSource hlsChunkSource, Map<String, DrmInitData> map, Allocator allocator, long j2, Format format, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, int i3, ReleasableExecutor releasableExecutor) {
        this.f15176b = str;
        this.f15177c = i2;
        this.d = callback;
        this.f15178e = hlsChunkSource;
        this.u = map;
        this.f15179f = allocator;
        this.g = format;
        this.f15180h = drmSessionManager;
        this.f15181i = eventDispatcher;
        this.f15182j = loadErrorHandlingPolicy;
        this.l = eventDispatcher2;
        this.m = i3;
        this.f15183k = releasableExecutor != null ? new Loader(releasableExecutor) : new Loader("Loader:HlsSampleStreamWrapper");
        this.n = new HlsChunkSource.HlsChunkHolder();
        final int i4 = 0;
        this.x = new int[0];
        Set set = t0;
        this.y = new HashSet(set.size());
        this.z = new SparseIntArray(set.size());
        this.w = new HlsSampleQueue[0];
        this.P = new boolean[0];
        this.O = new boolean[0];
        ArrayList arrayList = new ArrayList();
        this.o = arrayList;
        this.p = Collections.unmodifiableList(arrayList);
        this.t = new ArrayList();
        this.q = new Runnable(this) { // from class: androidx.media3.exoplayer.hls.b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HlsSampleStreamWrapper f15208c;

            {
                this.f15208c = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                int i5 = i4;
                HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15208c;
                switch (i5) {
                    case 0:
                        Set set2 = HlsSampleStreamWrapper.t0;
                        hlsSampleStreamWrapper.G();
                        break;
                    default:
                        for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                            hlsSampleQueue.C(hlsSampleStreamWrapper.W);
                        }
                        hlsSampleStreamWrapper.D = true;
                        hlsSampleStreamWrapper.G();
                        break;
                }
            }
        };
        final int i5 = 1;
        this.r = new Runnable(this) { // from class: androidx.media3.exoplayer.hls.b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HlsSampleStreamWrapper f15208c;

            {
                this.f15208c = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                int i6 = i5;
                HlsSampleStreamWrapper hlsSampleStreamWrapper = this.f15208c;
                switch (i6) {
                    case 0:
                        Set set2 = HlsSampleStreamWrapper.t0;
                        hlsSampleStreamWrapper.G();
                        break;
                    default:
                        for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                            hlsSampleQueue.C(hlsSampleStreamWrapper.W);
                        }
                        hlsSampleStreamWrapper.D = true;
                        hlsSampleStreamWrapper.G();
                        break;
                }
            }
        };
        this.s = Util.r(null);
        this.Q = j2;
        this.R = j2;
        this.W = Long.MIN_VALUE;
    }

    public static Format B(Format format, Format format2, boolean z) {
        String strC;
        if (format == null) {
            return format2;
        }
        String str = format.f13763k;
        String strE = format2.o;
        int i2 = MimeTypes.i(strE);
        if (Util.v(i2, str) == 1) {
            strC = Util.w(i2, str);
            strE = MimeTypes.e(strC);
        } else {
            strC = MimeTypes.c(str, strE);
        }
        Format.Builder builderA = format2.a();
        builderA.f13764a = format.f13755a;
        builderA.f13765b = format.f13756b;
        builderA.f13766c = ImmutableList.t(format.f13757c);
        builderA.d = format.d;
        builderA.f13767e = format.f13758e;
        builderA.f13768f = format.f13759f;
        builderA.f13769h = z ? format.f13760h : -1;
        builderA.f13770i = z ? format.f13761i : -1;
        builderA.f13771j = strC;
        if (i2 == 2) {
            builderA.u = format.v;
            builderA.v = format.w;
            builderA.y = format.z;
        }
        if (strE != null) {
            builderA.n = MimeTypes.p(strE);
        }
        int i3 = format.G;
        if (i3 != -1 && i2 == 1) {
            builderA.F = i3;
        }
        Metadata metadataB = format.l;
        if (metadataB != null) {
            Metadata metadata = format2.l;
            if (metadata != null) {
                metadataB = metadata.b(metadataB);
            }
            builderA.f13772k = metadataB;
        }
        return new Format(builderA);
    }

    public static int E(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return i2 != 3 ? 0 : 1;
        }
        return 3;
    }

    public static DiscardingTrackOutput z(int i2, int i3) {
        Log.g("Unmapped track with id " + i2 + " of type " + i3);
        return new DiscardingTrackOutput();
    }

    public final TrackGroupArray A(TrackGroup[] trackGroupArr) {
        for (int i2 = 0; i2 < trackGroupArr.length; i2++) {
            TrackGroup trackGroup = trackGroupArr[i2];
            Format[] formatArr = new Format[trackGroup.f13977a];
            for (int i3 = 0; i3 < trackGroup.f13977a; i3++) {
                Format format = trackGroup.d[i3];
                int iC = this.f15180h.c(format);
                Format.Builder builderA = format.a();
                builderA.O = iC;
                formatArr[i3] = new Format(builderA);
            }
            trackGroupArr[i2] = new TrackGroup(trackGroup.f13978b, formatArr);
        }
        return new TrackGroupArray(trackGroupArr);
    }

    public final void C(int i2) {
        ArrayList arrayList;
        Preconditions.q(!this.f15183k.b());
        int i3 = i2;
        while (true) {
            arrayList = this.o;
            if (i3 >= arrayList.size()) {
                i3 = -1;
                break;
            } else if (y(i3)) {
                break;
            } else {
                i3++;
            }
        }
        if (i3 == -1) {
            return;
        }
        long j2 = D().f15653h;
        HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) arrayList.get(i3);
        int size = arrayList.size();
        String str = Util.f14242a;
        if (i3 < 0 || size > arrayList.size() || i3 > size) {
            ct0.c();
            return;
        }
        if (i3 != size) {
            arrayList.subList(i3, size).clear();
        }
        for (int i4 = 0; i4 < this.w.length; i4++) {
            this.w[i4].l(hlsMediaChunk.e(i4));
        }
        if (arrayList.isEmpty()) {
            this.R = this.Q;
        } else {
            ((HlsMediaChunk) Iterables.b(arrayList)).K = true;
        }
        this.V = false;
        int i5 = this.B;
        long j3 = hlsMediaChunk.g;
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.l;
        eventDispatcher.getClass();
        MediaLoadData mediaLoadData = new MediaLoadData(1, i5, null, 3, null, Util.f0(j3), Util.f0(j2));
        MediaSource.MediaPeriodId mediaPeriodId = eventDispatcher.f15521b;
        mediaPeriodId.getClass();
        eventDispatcher.a(new y81(eventDispatcher, mediaPeriodId, mediaLoadData, 12));
    }

    public final HlsMediaChunk D() {
        return (HlsMediaChunk) cj.c(1, this.o);
    }

    public final boolean F() {
        return this.R != -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G() {
        int i2;
        if (!this.I && this.L == null && this.D) {
            int i3 = 0;
            for (HlsSampleQueue hlsSampleQueue : this.w) {
                if (hlsSampleQueue.t() == null) {
                    return;
                }
            }
            TrackGroupArray trackGroupArray = this.J;
            if (trackGroupArray != null) {
                int i4 = trackGroupArray.f15636a;
                int[] iArr = new int[i4];
                this.L = iArr;
                Arrays.fill(iArr, -1);
                for (int i5 = 0; i5 < i4; i5++) {
                    int i6 = 0;
                    while (true) {
                        HlsSampleQueue[] hlsSampleQueueArr = this.w;
                        if (i6 >= hlsSampleQueueArr.length) {
                            break;
                        }
                        Format formatT = hlsSampleQueueArr[i6].t();
                        formatT.getClass();
                        Format format = this.J.a(i5).d[0];
                        String str = formatT.o;
                        String str2 = format.o;
                        int i7 = MimeTypes.i(str);
                        if (i7 != 3) {
                            if (i7 == MimeTypes.i(str2)) {
                                this.L[i5] = i6;
                                break;
                            }
                            i6++;
                        } else {
                            if (Objects.equals(str, str2) && (!("application/cea-608".equals(str) || "application/cea-708".equals(str)) || formatT.L == format.L)) {
                                this.L[i5] = i6;
                                break;
                                break;
                            }
                            i6++;
                        }
                    }
                }
                Iterator it = this.t.iterator();
                while (it.hasNext()) {
                    ((HlsSampleStream) it.next()).d();
                }
                return;
            }
            int length = this.w.length;
            int i8 = 0;
            int i9 = -1;
            int i10 = -2;
            while (true) {
                int i11 = 1;
                if (i8 >= length) {
                    break;
                }
                Format formatT2 = this.w[i8].t();
                formatT2.getClass();
                String str3 = formatT2.o;
                if (MimeTypes.o(str3)) {
                    i11 = 2;
                } else if (!MimeTypes.k(str3)) {
                    i11 = MimeTypes.n(str3) ? 3 : -2;
                }
                if (E(i11) > E(i10)) {
                    i9 = i8;
                    i10 = i11;
                } else if (i11 == i10 && i9 != -1) {
                    i9 = -1;
                }
                i8++;
            }
            TrackGroup trackGroup = this.f15178e.f15140h;
            int i12 = trackGroup.f13977a;
            this.M = -1;
            this.L = new int[length];
            for (int i13 = 0; i13 < length; i13++) {
                this.L[i13] = i13;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[length];
            int i14 = 0;
            while (i14 < length) {
                Format formatT3 = this.w[i14].t();
                formatT3.getClass();
                Format format2 = this.g;
                String str4 = this.f15176b;
                if (i14 == i9) {
                    Format[] formatArr = new Format[i12];
                    for (int i15 = i3; i15 < i12; i15++) {
                        Format formatD = trackGroup.d[i15];
                        if (i10 == 1 && format2 != null) {
                            formatD = formatD.d(format2);
                        }
                        formatArr[i15] = i12 == 1 ? formatT3.d(formatD) : B(formatD, formatT3, true);
                    }
                    trackGroupArr[i14] = new TrackGroup(str4, formatArr);
                    this.M = i14;
                    i2 = 0;
                } else {
                    if (i10 != 2 || !MimeTypes.k(formatT3.o)) {
                        format2 = null;
                    }
                    StringBuilder sbU = n00.u(str4, ":muxed:");
                    sbU.append(i14 < i9 ? i14 : i14 - 1);
                    String string = sbU.toString();
                    i2 = 0;
                    Format.Builder builderA = B(format2, formatT3, false).a();
                    builderA.l = str4;
                    trackGroupArr[i14] = new TrackGroup(string, new Format(builderA));
                }
                i14++;
                i3 = i2;
            }
            int i16 = i3;
            this.J = A(trackGroupArr);
            Preconditions.q(this.K == null ? 1 : i16);
            this.K = Collections.EMPTY_SET;
            this.E = true;
            this.d.b();
        }
    }

    public final void H() {
        this.f15183k.c(Integer.MIN_VALUE);
        HlsChunkSource hlsChunkSource = this.f15178e;
        BehindLiveWindowException behindLiveWindowException = hlsChunkSource.p;
        if (behindLiveWindowException != null) {
            throw behindLiveWindowException;
        }
        Uri uri = hlsChunkSource.q;
        if (uri == null || !uri.equals(hlsChunkSource.r)) {
            return;
        }
        hlsChunkSource.g.d(hlsChunkSource.q);
    }

    public final void I(TrackGroup[] trackGroupArr, int... iArr) {
        this.J = A(trackGroupArr);
        this.K = new HashSet();
        for (int i2 : iArr) {
            this.K.add(this.J.a(i2));
        }
        this.M = 0;
        Callback callback = this.d;
        Objects.requireNonNull(callback);
        this.s.post(new et(callback, 16));
        this.E = true;
    }

    public final void J() {
        for (HlsSampleQueue hlsSampleQueue : this.w) {
            hlsSampleQueue.z(this.S);
        }
        this.S = false;
    }

    public final boolean K(long j2, boolean z) throws Throwable {
        HlsMediaChunk hlsMediaChunk;
        boolean zB;
        this.Q = j2;
        if (F()) {
            this.R = j2;
            return true;
        }
        boolean z2 = this.f15178e.s;
        ArrayList arrayList = this.o;
        if (!z2) {
            hlsMediaChunk = null;
            break;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                hlsMediaChunk = null;
                break;
            }
            hlsMediaChunk = (HlsMediaChunk) arrayList.get(i2);
            if (hlsMediaChunk.g == j2) {
                break;
            }
            i2++;
        }
        if (this.D && !z && !arrayList.isEmpty()) {
            int length = this.w.length;
            for (int i3 = 0; i3 < length; i3++) {
                HlsSampleQueue hlsSampleQueue = this.w[i3];
                if (hlsMediaChunk != null) {
                    zB = hlsSampleQueue.A(hlsMediaChunk.e(i3));
                } else {
                    long jC = c();
                    zB = hlsSampleQueue.B(j2, jC == Long.MIN_VALUE || j2 < jC);
                }
                if (zB || (!this.P[i3] && this.N)) {
                }
            }
            return false;
        }
        this.R = j2;
        this.V = false;
        arrayList.clear();
        Loader loader = this.f15183k;
        if (!loader.b()) {
            loader.f15836c = null;
            J();
            return true;
        }
        if (this.D) {
            for (HlsSampleQueue hlsSampleQueue2 : this.w) {
                hlsSampleQueue2.j();
            }
        }
        loader.a();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:108:0x024d  */
    /* JADX WARN: Code duplicated, block: B:113:0x025d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0266  */
    /* JADX WARN: Code duplicated, block: B:116:0x026e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0270  */
    /* JADX WARN: Code duplicated, block: B:118:0x0276  */
    /* JADX WARN: Code duplicated, block: B:119:0x0278  */
    /* JADX WARN: Code duplicated, block: B:124:0x029b  */
    /* JADX WARN: Code duplicated, block: B:127:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:129:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:130:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:133:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:137:0x02da  */
    /* JADX WARN: Code duplicated, block: B:140:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:145:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:148:0x030d  */
    /* JADX WARN: Code duplicated, block: B:149:0x030f  */
    /* JADX WARN: Code duplicated, block: B:152:0x031a  */
    /* JADX WARN: Code duplicated, block: B:155:0x031f  */
    /* JADX WARN: Code duplicated, block: B:158:0x0327  */
    /* JADX WARN: Code duplicated, block: B:160:0x0344  */
    /* JADX WARN: Code duplicated, block: B:162:0x034a  */
    /* JADX WARN: Code duplicated, block: B:172:0x0375  */
    /* JADX WARN: Code duplicated, block: B:196:0x0415  */
    /* JADX WARN: Code duplicated, block: B:198:0x0425  */
    /* JADX WARN: Code duplicated, block: B:199:0x042b  */
    /* JADX WARN: Code duplicated, block: B:202:0x043e  */
    /* JADX WARN: Code duplicated, block: B:207:0x044b  */
    /* JADX WARN: Code duplicated, block: B:211:0x0457  */
    /* JADX WARN: Code duplicated, block: B:213:0x045b  */
    /* JADX WARN: Code duplicated, block: B:215:0x045e  */
    /* JADX WARN: Code duplicated, block: B:219:0x046f  */
    /* JADX WARN: Code duplicated, block: B:221:0x0473  */
    /* JADX WARN: Code duplicated, block: B:223:0x047a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:227:0x0482  */
    /* JADX WARN: Code duplicated, block: B:228:0x0485  */
    /* JADX WARN: Code duplicated, block: B:230:0x0489  */
    /* JADX WARN: Code duplicated, block: B:232:0x0490  */
    /* JADX WARN: Code duplicated, block: B:234:0x049a  */
    /* JADX WARN: Code duplicated, block: B:237:0x049f  */
    /* JADX WARN: Code duplicated, block: B:239:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:243:0x04ab A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:245:0x04af  */
    /* JADX WARN: Code duplicated, block: B:247:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:248:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:250:0x04f0  */
    /* JADX WARN: Code duplicated, block: B:251:0x04f2  */
    /* JADX WARN: Code duplicated, block: B:254:0x0515  */
    /* JADX WARN: Code duplicated, block: B:255:0x0518  */
    /* JADX WARN: Code duplicated, block: B:258:0x0521  */
    /* JADX WARN: Code duplicated, block: B:261:0x052d  */
    /* JADX WARN: Code duplicated, block: B:262:0x0530  */
    /* JADX WARN: Code duplicated, block: B:264:0x0534  */
    /* JADX WARN: Code duplicated, block: B:265:0x053e  */
    /* JADX WARN: Code duplicated, block: B:267:0x0541  */
    /* JADX WARN: Code duplicated, block: B:268:0x054c  */
    /* JADX WARN: Code duplicated, block: B:271:0x0552 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:272:0x0554  */
    /* JADX WARN: Code duplicated, block: B:273:0x0556  */
    /* JADX WARN: Code duplicated, block: B:275:0x0559  */
    /* JADX WARN: Code duplicated, block: B:276:0x0563  */
    /* JADX WARN: Code duplicated, block: B:279:0x0583  */
    /* JADX WARN: Code duplicated, block: B:281:0x0591  */
    /* JADX WARN: Code duplicated, block: B:283:0x059f  */
    /* JADX WARN: Code duplicated, block: B:286:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:288:0x05b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:296:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:299:0x05dd  */
    /* JADX WARN: Code duplicated, block: B:302:0x05e3  */
    /* JADX WARN: Code duplicated, block: B:305:0x05ea A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:311:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:314:0x0602  */
    /* JADX WARN: Code duplicated, block: B:317:0x0629  */
    /* JADX WARN: Code duplicated, block: B:321:0x0657  */
    /* JADX WARN: Code duplicated, block: B:323:0x0661  */
    /* JADX WARN: Code duplicated, block: B:325:0x0665 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:326:0x0667  */
    /* JADX WARN: Code duplicated, block: B:328:0x066f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:329:0x0673  */
    /* JADX WARN: Code duplicated, block: B:331:0x0677  */
    /* JADX WARN: Code duplicated, block: B:333:0x0680 A[EDGE_INSN: B:333:0x0680->B:352:0x06d0 BREAK  A[LOOP:3: B:343:0x06a9->B:351:0x06cb], PHI: r19
      0x0680: PHI (r19v12 java.util.ArrayList) = (r19v9 java.util.ArrayList), (r19v9 java.util.ArrayList), (r19v9 java.util.ArrayList), (r19v10 java.util.ArrayList) binds: [B:332:0x067e, B:339:0x069d, B:341:0x06a1, B:372:0x0680] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:334:0x0683  */
    /* JADX WARN: Code duplicated, block: B:336:0x068d  */
    /* JADX WARN: Code duplicated, block: B:337:0x0699  */
    /* JADX WARN: Code duplicated, block: B:340:0x069f  */
    /* JADX WARN: Code duplicated, block: B:354:0x06ed A[LOOP:1: B:353:0x06eb->B:354:0x06ed, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:357:0x070c  */
    /* JADX WARN: Code duplicated, block: B:359:0x071a  */
    /* JADX WARN: Code duplicated, block: B:371:0x071d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0137  */
    /* JADX WARN: Code duplicated, block: B:73:0x014b  */
    /* JADX WARN: Code duplicated, block: B:74:0x014d  */
    /* JADX WARN: Code duplicated, block: B:78:0x0177  */
    /* JADX WARN: Code duplicated, block: B:79:0x017a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0188  */
    /* JADX WARN: Code duplicated, block: B:84:0x0191  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:91:0x01db A[ADDED_TO_REGION] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        long j2;
        List list;
        long jMax;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long jMax2;
        long j8;
        long jMax3;
        HlsPlaylistTracker hlsPlaylistTracker;
        long j9;
        HlsMediaChunk hlsMediaChunk;
        HlsPlaylistTracker hlsPlaylistTracker2;
        long j10;
        long j11;
        int iR;
        boolean z;
        Uri uriC;
        HlsMediaPlaylist hlsMediaPlaylistR;
        long jF;
        long jF2;
        long jLongValue;
        int iIntValue;
        Uri uri;
        int i2;
        HlsMediaPlaylist hlsMediaPlaylist;
        HlsChunkSource.SegmentBaseHolder segmentBaseHolderF;
        List list2;
        boolean z2;
        boolean z3;
        long j12;
        String str;
        HlsChunkSource.SegmentBaseHolder segmentBaseHolderF2;
        boolean z4;
        int i3;
        HlsMediaPlaylist.SegmentBase segmentBase;
        ArrayList arrayList;
        HlsChunkSource.HlsChunkHolder hlsChunkHolder;
        CmcdData.Factory factory;
        HlsMediaPlaylist.Segment segment;
        long j13;
        Uri uriD;
        Chunk chunkG;
        String str2;
        Uri uriD2;
        Chunk chunkG2;
        boolean z5;
        HlsMediaChunk hlsMediaChunk2;
        boolean z6;
        DataSource aes128DataSource;
        FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache;
        byte[] bArr;
        byte[] bArr2;
        int i4;
        DataSpec dataSpecA;
        boolean z7;
        byte[] bArrD;
        DataSource aes128DataSource2;
        HlsMediaPlaylist.Segment segment2;
        DataSpec dataSpecA2;
        DataSource dataSource;
        boolean z8;
        int i5;
        Uri uri2;
        Id3Decoder id3Decoder;
        ParsableByteArray parsableByteArray;
        HlsMediaChunkExtractor hlsMediaChunkExtractor;
        SparseArray sparseArray;
        TimestampAdjuster timestampAdjuster;
        DataSpec dataSpec;
        boolean z9;
        boolean z10;
        HlsMediaChunkExtractor hlsMediaChunkExtractor2;
        boolean z11;
        byte[] bArrD2;
        String str3;
        long jMax4;
        boolean z12;
        float f2;
        boolean z13;
        long j14;
        boolean z14;
        long j15;
        boolean z15;
        long j16;
        HlsChunkSource.SegmentBaseHolder segmentBaseHolderF3;
        Uri uriD3;
        long j17;
        long j18;
        Uri uriD4;
        String string;
        String string2;
        List<String> list3;
        boolean z16;
        Chunk chunk;
        Uri uri3;
        HlsMediaChunk hlsMediaChunk3;
        ArrayList arrayList2;
        ImmutableList.Builder builder;
        int i6;
        int i7;
        ArrayList arrayList3 = this.o;
        HlsChunkSource.HlsChunkHolder hlsChunkHolder2 = this.n;
        Loader loader = this.f15183k;
        if (this.V || loader.b()) {
            return false;
        }
        if (loader.f15836c != null) {
            return false;
        }
        if (F()) {
            List list4 = Collections.EMPTY_LIST;
            long j19 = this.R;
            for (HlsSampleQueue hlsSampleQueue : this.w) {
                hlsSampleQueue.t = this.R;
            }
            j2 = -9223372036854775807L;
            list = list4;
            j5 = j19;
            j4 = j5;
        } else {
            j2 = -9223372036854775807L;
            list = this.p;
            HlsMediaChunk hlsMediaChunkD = D();
            boolean z17 = hlsMediaChunkD.I;
            long j20 = hlsMediaChunkD.g;
            if (z17 && hlsMediaChunkD.f()) {
                long j21 = hlsMediaChunkD.L;
                jMax = j21 != -9223372036854775807L ? j21 + j20 : -9223372036854775807L;
            } else {
                jMax = Math.max(this.Q, j20);
            }
            long j22 = jMax;
            long jMax5 = this.Q;
            if (this.D) {
                HlsSampleQueue[] hlsSampleQueueArr = this.w;
                int length = hlsSampleQueueArr.length;
                int i8 = 0;
                while (i8 < length) {
                    HlsSampleQueue hlsSampleQueue2 = hlsSampleQueueArr[i8];
                    synchronized (hlsSampleQueue2) {
                        j6 = jMax5;
                        j7 = j22;
                        jMax2 = Math.max(hlsSampleQueue2.v, hlsSampleQueue2.p(hlsSampleQueue2.s));
                    }
                    jMax5 = Math.max(j6, jMax2);
                    i8++;
                    j22 = j7;
                }
                j3 = j22;
                j4 = jMax5;
            } else {
                j3 = j22;
                j4 = jMax5;
            }
            j5 = j3;
        }
        hlsChunkHolder2.f15144a = null;
        hlsChunkHolder2.f15145b = false;
        hlsChunkHolder2.f15146c = null;
        HlsChunkSource hlsChunkSource = this.f15178e;
        boolean z18 = this.E || !list.isEmpty();
        FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache2 = hlsChunkSource.f15142j;
        CmcdConfiguration cmcdConfiguration = hlsChunkSource.l;
        HlsRedundantGroup[] hlsRedundantGroupArr = hlsChunkSource.f15138e;
        HlsPlaylistTracker hlsPlaylistTracker3 = hlsChunkSource.g;
        HlsMediaChunk hlsMediaChunk4 = list.isEmpty() ? null : (HlsMediaChunk) Iterables.b(list);
        int iB = hlsMediaChunk4 == null ? -1 : hlsChunkSource.f15140h.b(hlsMediaChunk4.d);
        long j23 = loadingInfo.f14703a;
        long jMax6 = j5 - j23;
        long j24 = hlsChunkSource.u;
        long j25 = j24 != j2 ? j24 - j23 : j2;
        if (hlsMediaChunk4 != null && !hlsChunkSource.s) {
            long j26 = hlsMediaChunk4.f15653h - hlsMediaChunk4.g;
            j8 = j25;
            jMax6 = Math.max(0L, jMax6 - j26);
            if (j8 != j2) {
                jMax3 = Math.max(0L, j8 - j26);
            }
            MediaChunkIterator[] mediaChunkIteratorArrB = hlsChunkSource.b(hlsMediaChunk4, j5);
            if (iB != -1) {
                ExoTrackSelection exoTrackSelection = hlsChunkSource.t;
                hlsPlaylistTracker = hlsPlaylistTracker3;
                j9 = j5;
                boolean z19 = exoTrackSelection.b(exoTrackSelection.l(iB), SystemClock.elapsedRealtime());
                hlsMediaChunk = hlsMediaChunk4;
                hlsPlaylistTracker2 = hlsPlaylistTracker;
                j10 = j9;
                boolean z20 = z19;
                long j27 = jMax3;
                j11 = jMax6;
                hlsChunkSource.t.g(j23, j11, j27, list, mediaChunkIteratorArrB);
                iR = hlsChunkSource.t.r();
                if (iB != iR) {
                    z = true;
                } else {
                    z = false;
                }
                uriC = hlsRedundantGroupArr[iR].c();
                if (hlsPlaylistTracker2.i(uriC)) {
                    hlsMediaPlaylistR = hlsPlaylistTracker2.r(uriC, true);
                    hlsMediaPlaylistR.getClass();
                    hlsChunkSource.s = hlsMediaPlaylistR.f15292c;
                    if (hlsMediaPlaylistR.o) {
                        jF = j2;
                    } else {
                        jF = (hlsMediaPlaylistR.f15235h + hlsMediaPlaylistR.u) - hlsPlaylistTracker2.f();
                    }
                    hlsChunkSource.u = jF;
                    jF2 = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker2.f();
                    Pair pairE = hlsChunkSource.e(hlsMediaChunk, z, hlsMediaPlaylistR, jF2, j10);
                    jLongValue = ((Long) pairE.first).longValue();
                    iIntValue = ((Integer) pairE.second).intValue();
                    if (z || z20 || hlsMediaChunk == null || (jLongValue >= hlsMediaPlaylistR.f15238k && ((segmentBaseHolderF = HlsChunkSource.f(hlsMediaPlaylistR, jLongValue, iIntValue)) == null || jF2 + segmentBaseHolderF.f15149a.f15266f >= j4))) {
                        hlsMediaPlaylist = hlsMediaPlaylistR;
                        uri = uriC;
                        i2 = iR;
                    } else {
                        Uri uriC2 = hlsRedundantGroupArr[iB].c();
                        HlsMediaPlaylist hlsMediaPlaylistR2 = hlsPlaylistTracker2.r(uriC2, true);
                        hlsMediaPlaylistR2.getClass();
                        jF2 = hlsMediaPlaylistR2.f15235h - hlsPlaylistTracker2.f();
                        Pair pairE2 = hlsChunkSource.e(hlsMediaChunk, false, hlsMediaPlaylistR2, jF2, j10);
                        jLongValue = ((Long) pairE2.first).longValue();
                        iIntValue = ((Integer) pairE2.second).intValue();
                        uri = uriC2;
                        i2 = iB;
                        hlsMediaPlaylist = hlsMediaPlaylistR2;
                    }
                    list2 = list;
                    z2 = hlsMediaPlaylist.f15292c;
                    z3 = hlsMediaPlaylist.o;
                    j12 = hlsMediaPlaylist.f15238k;
                    ImmutableList immutableList = hlsMediaPlaylist.r;
                    str = hlsMediaPlaylist.f15290a;
                    if (i2 != iB && iB != -1) {
                        hlsPlaylistTracker2.c(hlsRedundantGroupArr[iB].c());
                    }
                    if (jLongValue < j12) {
                        segmentBaseHolderF2 = HlsChunkSource.f(hlsMediaPlaylist, jLongValue, iIntValue);
                        if (segmentBaseHolderF2 != null) {
                            if (!z3) {
                                hlsChunkHolder2.f15146c = uri;
                                r18.r = uri;
                            } else if (!z18 || immutableList.isEmpty()) {
                                hlsChunkHolder2.f15145b = true;
                            } else {
                                segmentBaseHolderF2 = new HlsChunkSource.SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) Iterables.b(immutableList), (j12 + ((long) immutableList.size())) - 1, -1);
                            }
                        }
                        z4 = segmentBaseHolderF2.d;
                        i3 = segmentBaseHolderF2.f15151c;
                        segmentBase = segmentBaseHolderF2.f15149a;
                        r18.r = null;
                        if (cmcdConfiguration != null) {
                            factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
                            factory.f15799c = r18.t;
                            hlsChunkHolder = hlsChunkHolder2;
                            jMax4 = Math.max(0L, j11);
                            if (jMax4 >= 0) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            Preconditions.g(z12);
                            factory.d = jMax4;
                            f2 = loadingInfo.f14704b;
                            if (f2 != -3.4028235E38f || f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                z13 = true;
                            } else {
                                z13 = false;
                            }
                            Preconditions.g(z13);
                            factory.f15800e = f2;
                            factory.f15801f = Boolean.valueOf(!z3);
                            long j28 = r18.v;
                            j14 = loadingInfo.f14705c;
                            if (j14 != j2 || j28 == j2 || j14 < j28) {
                                z14 = false;
                            } else {
                                z14 = true;
                            }
                            factory.g = z14;
                            factory.f15802h = list2.isEmpty();
                            j15 = segmentBase.d;
                            if (j15 >= 0) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            Preconditions.g(z15);
                            factory.f15803i = j15;
                            j16 = segmentBaseHolderF2.f15150b;
                            if (i3 == -1) {
                                j16++;
                            }
                            segmentBaseHolderF3 = HlsChunkSource.f(hlsMediaPlaylist, j16, i3 != -1 ? i3 + 1 : -1);
                            if (segmentBaseHolderF3 != null) {
                                HlsMediaPlaylist.SegmentBase segmentBase2 = segmentBaseHolderF3.f15149a;
                                uriD3 = UriUtil.d(str, segmentBase.f15263b);
                                String str4 = segmentBase2.f15263b;
                                j17 = segmentBase2.f15270k;
                                j18 = segmentBase2.f15269j;
                                uriD4 = UriUtil.d(str, str4);
                                if (!uriD3.isOpaque() || uriD4.isOpaque()) {
                                    arrayList = arrayList3;
                                    string = uriD4.toString();
                                } else {
                                    String scheme = uriD3.getScheme();
                                    arrayList = arrayList3;
                                    String scheme2 = uriD4.getScheme();
                                    if (scheme != null ? scheme2 == null || !Ascii.a(scheme, scheme2) : scheme2 != null) {
                                        string = uriD4.toString();
                                    } else if (Objects.equals(uriD3.getAuthority(), uriD4.getAuthority())) {
                                        List<String> pathSegments = uriD3.getPathSegments();
                                        List<String> pathSegments2 = uriD4.getPathSegments();
                                        int iMin = Math.min(pathSegments.size(), pathSegments2.size());
                                        int i9 = 0;
                                        int i10 = 0;
                                        while (true) {
                                            if (i9 >= iMin) {
                                                list3 = pathSegments;
                                                break;
                                            }
                                            list3 = pathSegments;
                                            int i11 = iMin;
                                            if (!pathSegments.get(i9).equals(pathSegments2.get(i9))) {
                                                break;
                                            }
                                            i10++;
                                            i9++;
                                            pathSegments = list3;
                                            iMin = i11;
                                        }
                                        StringBuilder sb = new StringBuilder();
                                        for (int i12 = i10; i12 < list3.size(); i12++) {
                                            sb.append("../");
                                        }
                                        for (int i13 = i10; i13 < pathSegments2.size(); i13++) {
                                            sb.append(pathSegments2.get(i13));
                                            if (i13 < pathSegments2.size() - 1) {
                                                sb.append("/");
                                            }
                                        }
                                        string = sb.toString();
                                    } else {
                                        string = uriD4.toString();
                                    }
                                }
                                factory.f15805k = string;
                                string2 = j18 + "-";
                                if (j17 != -1) {
                                    StringBuilder sbT = n00.t(string2);
                                    sbT.append(j18 + j17);
                                    string2 = sbT.toString();
                                }
                                factory.l = string2;
                            } else {
                                arrayList = arrayList3;
                                i3 = i3;
                            }
                        } else {
                            arrayList = arrayList3;
                            hlsChunkHolder = hlsChunkHolder2;
                            i3 = i3;
                            factory = null;
                        }
                        r18.v = SystemClock.elapsedRealtime();
                        segment = segmentBase.f15264c;
                        j13 = segmentBase.f15266f;
                        if (segment != null || (str3 = segment.f15267h) == null) {
                            uriD = null;
                        } else {
                            uriD = UriUtil.d(hlsMediaPlaylist.f15290a, str3);
                        }
                        chunkG = r18.g(uriD, i2, true, factory);
                        hlsChunkHolder.f15144a = chunkG;
                        if (chunkG == null) {
                            str2 = segmentBase.f15267h;
                            if (str2 == null) {
                                uriD2 = null;
                            } else {
                                uriD2 = UriUtil.d(hlsMediaPlaylist.f15290a, str2);
                            }
                            chunkG2 = r18.g(uriD2, i2, false, factory);
                            hlsChunkHolder.f15144a = chunkG2;
                            if (chunkG2 == null) {
                                if (segmentBase instanceof HlsMediaPlaylist.Part) {
                                    z5 = z2;
                                } else if (!((HlsMediaPlaylist.Part) segmentBase).m || (i3 == 0 && z2)) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (hlsMediaChunk == null) {
                                    AtomicInteger atomicInteger = HlsMediaChunk.N;
                                    hlsMediaChunk2 = hlsMediaChunk;
                                } else {
                                    hlsMediaChunk2 = hlsMediaChunk;
                                    if (uri.equals(hlsMediaChunk2.m) || !hlsMediaChunk2.I) {
                                        z6 = z5 || jF2 + j13 < j10;
                                    }
                                    if (z6 || z4 == 0) {
                                        HlsExtractorFactory hlsExtractorFactory = r18.f15135a;
                                        aes128DataSource = r18.f15136b;
                                        Format format = r18.f15139f[i2];
                                        List list5 = r18.f15141i;
                                        int iT = r18.t.t();
                                        Object objJ = r18.t.j();
                                        boolean z21 = r18.n;
                                        TimestampAdjusterProvider timestampAdjusterProvider = r18.d;
                                        long j29 = r18.m;
                                        if (uriD2 == null) {
                                            fullSegmentEncryptionKeyCache2.getClass();
                                            fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                            bArr = null;
                                        } else {
                                            fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                            bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                        }
                                        if (uriD == null) {
                                            bArr2 = null;
                                        } else {
                                            bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                        }
                                        PlayerId playerId = r18.f15143k;
                                        AtomicInteger atomicInteger2 = HlsMediaChunk.N;
                                        DataSpec.Builder builder2 = new DataSpec.Builder();
                                        builder2.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                        builder2.f14401f = segmentBase.f15269j;
                                        builder2.g = segmentBase.f15270k;
                                        if (z4) {
                                            i4 = 8;
                                        } else {
                                            i4 = 0;
                                        }
                                        builder2.f14403i = i4;
                                        dataSpecA = builder2.a();
                                        if (factory != null) {
                                            dataSpecA = factory.a().a(dataSpecA);
                                        }
                                        DataSpec dataSpec2 = dataSpecA;
                                        if (bArr != null) {
                                            z7 = true;
                                        } else {
                                            z7 = false;
                                        }
                                        if (z7) {
                                            String str5 = segmentBase.f15268i;
                                            str5.getClass();
                                            bArrD = HlsMediaChunk.d(str5);
                                        } else {
                                            bArrD = null;
                                        }
                                        if (bArr != null) {
                                            bArrD.getClass();
                                            aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                        } else {
                                            aes128DataSource2 = aes128DataSource;
                                        }
                                        segment2 = segmentBase.f15264c;
                                        if (segment2 != null) {
                                            if (bArr2 != null) {
                                                z11 = true;
                                            } else {
                                                z11 = false;
                                            }
                                            if (z11) {
                                                String str6 = segment2.f15268i;
                                                str6.getClass();
                                                bArrD2 = HlsMediaChunk.d(str6);
                                            } else {
                                                bArrD2 = null;
                                            }
                                            Uri uriD5 = UriUtil.d(str, segment2.f15263b);
                                            DataSpec.Builder builder3 = new DataSpec.Builder();
                                            builder3.f14397a = uriD5;
                                            builder3.f14401f = segment2.f15269j;
                                            builder3.g = segment2.f15270k;
                                            dataSpecA2 = builder3.a();
                                            if (factory != null) {
                                                factory.f15804j = "i";
                                                dataSpecA2 = factory.a().a(dataSpecA2);
                                            }
                                            if (bArr2 != null) {
                                                bArrD2.getClass();
                                                aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                            }
                                            dataSource = aes128DataSource;
                                            z8 = z11;
                                        } else {
                                            dataSpecA2 = null;
                                            dataSource = null;
                                            z8 = false;
                                        }
                                        long j30 = jF2 + j13;
                                        long j31 = j30 + segmentBase.d;
                                        i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                        if (hlsMediaChunk2 != null) {
                                            dataSpec = hlsMediaChunk2.q;
                                            if (dataSpecA2 != dataSpec || (dataSpecA2 != null && dataSpec != null && dataSpecA2.f14390a.equals(dataSpec.f14390a) && dataSpecA2.f14394f == dataSpec.f14394f)) {
                                                z9 = true;
                                            } else {
                                                z9 = false;
                                            }
                                            uri2 = uri;
                                            if (uri2.equals(hlsMediaChunk2.m) || !hlsMediaChunk2.I) {
                                                z10 = false;
                                            } else {
                                                z10 = true;
                                            }
                                            id3Decoder = hlsMediaChunk2.y;
                                            parsableByteArray = hlsMediaChunk2.z;
                                            if (z9 || !z10 || hlsMediaChunk2.K || hlsMediaChunk2.l != i5) {
                                                hlsMediaChunkExtractor2 = null;
                                            } else {
                                                hlsMediaChunkExtractor2 = hlsMediaChunk2.D;
                                            }
                                            hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                        } else {
                                            uri2 = uri;
                                            id3Decoder = new Id3Decoder();
                                            parsableByteArray = new ParsableByteArray(10);
                                            hlsMediaChunkExtractor = null;
                                        }
                                        Id3Decoder id3Decoder2 = id3Decoder;
                                        ParsableByteArray parsableByteArray2 = parsableByteArray;
                                        long j32 = segmentBaseHolderF2.f15150b;
                                        int i14 = segmentBaseHolderF2.f15151c;
                                        boolean z22 = !z4;
                                        boolean z23 = segmentBase.l;
                                        sparseArray = timestampAdjusterProvider.f15198a;
                                        timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                        if (timestampAdjuster == null) {
                                            timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                            sparseArray.put(i5, timestampAdjuster);
                                        }
                                        hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory, aes128DataSource2, dataSpec2, format, z7, dataSource, dataSpecA2, z8, uri2, list5, iT, objJ, j30, j31, j32, i14, z22, i5, z23, z21, timestampAdjuster, j29, segmentBase.g, hlsMediaChunkExtractor, id3Decoder2, parsableByteArray2, z6, z5, playerId);
                                    }
                                }
                                if (z6) {
                                    HlsExtractorFactory hlsExtractorFactory2 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format2 = r18.f15139f[i2];
                                    List list6 = r18.f15141i;
                                    int iT2 = r18.t.t();
                                    Object objJ2 = r18.t.j();
                                    boolean z24 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider2 = r18.d;
                                    long j210 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId2 = r18.f15143k;
                                    AtomicInteger atomicInteger3 = HlsMediaChunk.N;
                                    DataSpec.Builder builder4 = new DataSpec.Builder();
                                    builder4.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder4.f14401f = segmentBase.f15269j;
                                    builder4.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder4.f14403i = i4;
                                    dataSpecA = builder4.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec3 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str7 = segmentBase.f15268i;
                                        str7.getClass();
                                        bArrD = HlsMediaChunk.d(str7);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str8 = segment2.f15268i;
                                            str8.getClass();
                                            bArrD2 = HlsMediaChunk.d(str8);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD6 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder5 = new DataSpec.Builder();
                                        builder5.f14397a = uriD6;
                                        builder5.f14401f = segment2.f15269j;
                                        builder5.g = segment2.f15270k;
                                        dataSpecA2 = builder5.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j33 = jF2 + j13;
                                    long j34 = j33 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder3 = id3Decoder;
                                    ParsableByteArray parsableByteArray3 = parsableByteArray;
                                    long j35 = segmentBaseHolderF2.f15150b;
                                    int i15 = segmentBaseHolderF2.f15151c;
                                    boolean z25 = !z4;
                                    boolean z26 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider2.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory2, aes128DataSource2, dataSpec3, format2, z7, dataSource, dataSpecA2, z8, uri2, list6, iT2, objJ2, j33, j34, j35, i15, z25, i5, z26, z24, timestampAdjuster, j210, segmentBase.g, hlsMediaChunkExtractor, id3Decoder3, parsableByteArray3, z6, z5, playerId2);
                                } else {
                                    HlsExtractorFactory hlsExtractorFactory3 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format3 = r18.f15139f[i2];
                                    List list7 = r18.f15141i;
                                    int iT3 = r18.t.t();
                                    Object objJ3 = r18.t.j();
                                    boolean z27 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider3 = r18.d;
                                    long j211 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId3 = r18.f15143k;
                                    AtomicInteger atomicInteger4 = HlsMediaChunk.N;
                                    DataSpec.Builder builder6 = new DataSpec.Builder();
                                    builder6.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder6.f14401f = segmentBase.f15269j;
                                    builder6.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder6.f14403i = i4;
                                    dataSpecA = builder6.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec4 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str9 = segmentBase.f15268i;
                                        str9.getClass();
                                        bArrD = HlsMediaChunk.d(str9);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str10 = segment2.f15268i;
                                            str10.getClass();
                                            bArrD2 = HlsMediaChunk.d(str10);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD7 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder7 = new DataSpec.Builder();
                                        builder7.f14397a = uriD7;
                                        builder7.f14401f = segment2.f15269j;
                                        builder7.g = segment2.f15270k;
                                        dataSpecA2 = builder7.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j36 = jF2 + j13;
                                    long j37 = j36 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder4 = id3Decoder;
                                    ParsableByteArray parsableByteArray4 = parsableByteArray;
                                    long j38 = segmentBaseHolderF2.f15150b;
                                    int i16 = segmentBaseHolderF2.f15151c;
                                    boolean z28 = !z4;
                                    boolean z29 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider3.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory3, aes128DataSource2, dataSpec4, format3, z7, dataSource, dataSpecA2, z8, uri2, list7, iT3, objJ3, j36, j37, j38, i16, z28, i5, z29, z27, timestampAdjuster, j211, segmentBase.g, hlsMediaChunkExtractor, id3Decoder4, parsableByteArray4, z6, z5, playerId3);
                                }
                            }
                        }
                        z16 = hlsChunkHolder.f15145b;
                        chunk = hlsChunkHolder.f15144a;
                        uri3 = hlsChunkHolder.f15146c;
                        if (z16) {
                            this.R = j2;
                            this.V = true;
                            return true;
                        }
                        if (chunk == null) {
                            if (uri3 != null) {
                                return false;
                            }
                            this.d.n(uri3);
                            return false;
                        }
                        if (chunk instanceof HlsMediaChunk) {
                            hlsMediaChunk3 = (HlsMediaChunk) chunk;
                            if (!arrayList.isEmpty()) {
                                arrayList2 = arrayList;
                                break;
                            }
                            if (!D().f()) {
                                C(arrayList.size() - 1);
                            }
                            if (!hlsMediaChunk3.n || !hlsMediaChunk3.M) {
                                arrayList2 = arrayList;
                                break;
                            }
                            int size = arrayList.size() - 1;
                            while (true) {
                                if (size < 0) {
                                    arrayList2 = arrayList;
                                    break;
                                }
                                arrayList2 = arrayList;
                                long j39 = ((HlsMediaChunk) arrayList2.get(size)).g;
                                long j40 = hlsMediaChunk3.g;
                                if (j39 < j40) {
                                    break;
                                }
                                if (j39 == j40 && y(size)) {
                                    C(size);
                                    hlsMediaChunk3.M = false;
                                    break;
                                }
                                size--;
                                arrayList = arrayList2;
                            }
                            this.h0 = hlsMediaChunk3;
                            this.G = hlsMediaChunk3.d;
                            this.R = -9223372036854775807L;
                            arrayList2.add(hlsMediaChunk3);
                            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
                            builder = new ImmutableList.Builder();
                            for (HlsSampleQueue hlsSampleQueue3 : this.w) {
                                builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                            }
                            ImmutableList immutableListJ = builder.j();
                            hlsMediaChunk3.E = this;
                            hlsMediaChunk3.J = immutableListJ;
                            for (HlsSampleQueue hlsSampleQueue4 : this.w) {
                                hlsSampleQueue4.getClass();
                                hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                                if (hlsMediaChunk3.M) {
                                    hlsSampleQueue4.I = true;
                                }
                            }
                        }
                        this.v = chunk;
                        loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
                        return true;
                    }
                    hlsChunkSource.p = new BehindLiveWindowException();
                } else {
                    hlsChunkHolder2.f15146c = uriC;
                    hlsChunkSource.r = uriC;
                }
                arrayList = arrayList3;
                hlsChunkHolder = hlsChunkHolder2;
                z16 = hlsChunkHolder.f15145b;
                chunk = hlsChunkHolder.f15144a;
                uri3 = hlsChunkHolder.f15146c;
                if (z16) {
                    this.R = j2;
                    this.V = true;
                    return true;
                }
                if (chunk == null) {
                    if (uri3 != null) {
                        return false;
                    }
                    this.d.n(uri3);
                    return false;
                }
                if (chunk instanceof HlsMediaChunk) {
                    hlsMediaChunk3 = (HlsMediaChunk) chunk;
                    if (!arrayList.isEmpty()) {
                        arrayList2 = arrayList;
                        break;
                    }
                    if (!D().f()) {
                        C(arrayList.size() - 1);
                    }
                    if (!hlsMediaChunk3.n) {
                        arrayList2 = arrayList;
                        break;
                    }
                    arrayList2 = arrayList;
                    break;
                    this.h0 = hlsMediaChunk3;
                    this.G = hlsMediaChunk3.d;
                    this.R = -9223372036854775807L;
                    arrayList2.add(hlsMediaChunk3);
                    UnmodifiableListIterator unmodifiableListIterator2 = ImmutableList.f33587c;
                    builder = new ImmutableList.Builder();
                    while (i6 < r5) {
                        builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                    }
                    ImmutableList immutableListJ2 = builder.j();
                    hlsMediaChunk3.E = this;
                    hlsMediaChunk3.J = immutableListJ2;
                    while (i7 < r4) {
                        hlsSampleQueue4.getClass();
                        hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                        if (hlsMediaChunk3.M) {
                            hlsSampleQueue4.I = true;
                        }
                    }
                }
                this.v = chunk;
                loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
                return true;
            }
            hlsPlaylistTracker = hlsPlaylistTracker3;
            j9 = j5;
            hlsMediaChunk = hlsMediaChunk4;
            hlsPlaylistTracker2 = hlsPlaylistTracker;
            j10 = j9;
            boolean z210 = z19;
            long j212 = jMax3;
            j11 = jMax6;
            hlsChunkSource.t.g(j23, j11, j212, list, mediaChunkIteratorArrB);
            iR = hlsChunkSource.t.r();
            if (iB != iR) {
                z = true;
            } else {
                z = false;
            }
            uriC = hlsRedundantGroupArr[iR].c();
            if (hlsPlaylistTracker2.i(uriC)) {
                hlsChunkHolder2.f15146c = uriC;
                hlsChunkSource.r = uriC;
            } else {
                hlsMediaPlaylistR = hlsPlaylistTracker2.r(uriC, true);
                hlsMediaPlaylistR.getClass();
                hlsChunkSource.s = hlsMediaPlaylistR.f15292c;
                if (hlsMediaPlaylistR.o) {
                    jF = j2;
                } else {
                    jF = (hlsMediaPlaylistR.f15235h + hlsMediaPlaylistR.u) - hlsPlaylistTracker2.f();
                }
                hlsChunkSource.u = jF;
                jF2 = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker2.f();
                Pair pairE3 = hlsChunkSource.e(hlsMediaChunk, z, hlsMediaPlaylistR, jF2, j10);
                jLongValue = ((Long) pairE3.first).longValue();
                iIntValue = ((Integer) pairE3.second).intValue();
                if (z) {
                    hlsMediaPlaylist = hlsMediaPlaylistR;
                    uri = uriC;
                    i2 = iR;
                } else {
                    Uri uriC3 = hlsRedundantGroupArr[iB].c();
                    HlsMediaPlaylist hlsMediaPlaylistR3 = hlsPlaylistTracker2.r(uriC3, true);
                    hlsMediaPlaylistR3.getClass();
                    jF2 = hlsMediaPlaylistR3.f15235h - hlsPlaylistTracker2.f();
                    Pair pairE4 = hlsChunkSource.e(hlsMediaChunk, false, hlsMediaPlaylistR3, jF2, j10);
                    jLongValue = ((Long) pairE4.first).longValue();
                    iIntValue = ((Integer) pairE4.second).intValue();
                    uri = uriC3;
                    i2 = iB;
                    hlsMediaPlaylist = hlsMediaPlaylistR3;
                }
                list2 = list;
                z2 = hlsMediaPlaylist.f15292c;
                z3 = hlsMediaPlaylist.o;
                j12 = hlsMediaPlaylist.f15238k;
                ImmutableList immutableList2 = hlsMediaPlaylist.r;
                str = hlsMediaPlaylist.f15290a;
                if (i2 != iB) {
                    hlsPlaylistTracker2.c(hlsRedundantGroupArr[iB].c());
                }
                if (jLongValue < j12) {
                    segmentBaseHolderF2 = HlsChunkSource.f(hlsMediaPlaylist, jLongValue, iIntValue);
                    if (segmentBaseHolderF2 != null) {
                        if (!z3) {
                            hlsChunkHolder2.f15146c = uri;
                            r18.r = uri;
                        } else {
                            if (z18) {
                            }
                            hlsChunkHolder2.f15145b = true;
                        }
                    }
                    z4 = segmentBaseHolderF2.d;
                    i3 = segmentBaseHolderF2.f15151c;
                    segmentBase = segmentBaseHolderF2.f15149a;
                    r18.r = null;
                    if (cmcdConfiguration != null) {
                        factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
                        factory.f15799c = r18.t;
                        hlsChunkHolder = hlsChunkHolder2;
                        jMax4 = Math.max(0L, j11);
                        if (jMax4 >= 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        Preconditions.g(z12);
                        factory.d = jMax4;
                        f2 = loadingInfo.f14704b;
                        if (f2 != -3.4028235E38f) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        Preconditions.g(z13);
                        factory.f15800e = f2;
                        factory.f15801f = Boolean.valueOf(!z3);
                        long j213 = r18.v;
                        j14 = loadingInfo.f14705c;
                        if (j14 != j2) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        factory.g = z14;
                        factory.f15802h = list2.isEmpty();
                        j15 = segmentBase.d;
                        if (j15 >= 0) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        Preconditions.g(z15);
                        factory.f15803i = j15;
                        j16 = segmentBaseHolderF2.f15150b;
                        if (i3 == -1) {
                            j16++;
                        }
                        segmentBaseHolderF3 = HlsChunkSource.f(hlsMediaPlaylist, j16, i3 != -1 ? i3 + 1 : -1);
                        if (segmentBaseHolderF3 != null) {
                            HlsMediaPlaylist.SegmentBase segmentBase3 = segmentBaseHolderF3.f15149a;
                            uriD3 = UriUtil.d(str, segmentBase.f15263b);
                            String str11 = segmentBase3.f15263b;
                            j17 = segmentBase3.f15270k;
                            j18 = segmentBase3.f15269j;
                            uriD4 = UriUtil.d(str, str11);
                            if (uriD3.isOpaque()) {
                                arrayList = arrayList3;
                                string = uriD4.toString();
                            } else {
                                arrayList = arrayList3;
                                string = uriD4.toString();
                            }
                            factory.f15805k = string;
                            string2 = j18 + "-";
                            if (j17 != -1) {
                                StringBuilder sbT2 = n00.t(string2);
                                sbT2.append(j18 + j17);
                                string2 = sbT2.toString();
                            }
                            factory.l = string2;
                        } else {
                            arrayList = arrayList3;
                            i3 = i3;
                        }
                    } else {
                        arrayList = arrayList3;
                        hlsChunkHolder = hlsChunkHolder2;
                        i3 = i3;
                        factory = null;
                    }
                    r18.v = SystemClock.elapsedRealtime();
                    segment = segmentBase.f15264c;
                    j13 = segmentBase.f15266f;
                    if (segment != null) {
                        uriD = null;
                    } else {
                        uriD = null;
                    }
                    chunkG = r18.g(uriD, i2, true, factory);
                    hlsChunkHolder.f15144a = chunkG;
                    if (chunkG == null) {
                        str2 = segmentBase.f15267h;
                        if (str2 == null) {
                            uriD2 = null;
                        } else {
                            uriD2 = UriUtil.d(hlsMediaPlaylist.f15290a, str2);
                        }
                        chunkG2 = r18.g(uriD2, i2, false, factory);
                        hlsChunkHolder.f15144a = chunkG2;
                        if (chunkG2 == null) {
                            if (segmentBase instanceof HlsMediaPlaylist.Part) {
                                z5 = z2;
                            } else if (((HlsMediaPlaylist.Part) segmentBase).m) {
                                z5 = true;
                            } else {
                                z5 = true;
                            }
                            if (hlsMediaChunk == null) {
                                AtomicInteger atomicInteger5 = HlsMediaChunk.N;
                                hlsMediaChunk2 = hlsMediaChunk;
                            } else {
                                hlsMediaChunk2 = hlsMediaChunk;
                                if (uri.equals(hlsMediaChunk2.m)) {
                                    if (z5) {
                                    }
                                } else if (z5) {
                                }
                                if (z6) {
                                    HlsExtractorFactory hlsExtractorFactory4 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format4 = r18.f15139f[i2];
                                    List list8 = r18.f15141i;
                                    int iT4 = r18.t.t();
                                    Object objJ4 = r18.t.j();
                                    boolean z211 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider4 = r18.d;
                                    long j214 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId4 = r18.f15143k;
                                    AtomicInteger atomicInteger6 = HlsMediaChunk.N;
                                    DataSpec.Builder builder8 = new DataSpec.Builder();
                                    builder8.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder8.f14401f = segmentBase.f15269j;
                                    builder8.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder8.f14403i = i4;
                                    dataSpecA = builder8.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec5 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str12 = segmentBase.f15268i;
                                        str12.getClass();
                                        bArrD = HlsMediaChunk.d(str12);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str13 = segment2.f15268i;
                                            str13.getClass();
                                            bArrD2 = HlsMediaChunk.d(str13);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD8 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder9 = new DataSpec.Builder();
                                        builder9.f14397a = uriD8;
                                        builder9.f14401f = segment2.f15269j;
                                        builder9.g = segment2.f15270k;
                                        dataSpecA2 = builder9.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j310 = jF2 + j13;
                                    long j311 = j310 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder5 = id3Decoder;
                                    ParsableByteArray parsableByteArray5 = parsableByteArray;
                                    long j312 = segmentBaseHolderF2.f15150b;
                                    int i17 = segmentBaseHolderF2.f15151c;
                                    boolean z212 = !z4;
                                    boolean z213 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider4.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory4, aes128DataSource2, dataSpec5, format4, z7, dataSource, dataSpecA2, z8, uri2, list8, iT4, objJ4, j310, j311, j312, i17, z212, i5, z213, z211, timestampAdjuster, j214, segmentBase.g, hlsMediaChunkExtractor, id3Decoder5, parsableByteArray5, z6, z5, playerId4);
                                } else {
                                    HlsExtractorFactory hlsExtractorFactory5 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format5 = r18.f15139f[i2];
                                    List list9 = r18.f15141i;
                                    int iT5 = r18.t.t();
                                    Object objJ5 = r18.t.j();
                                    boolean z214 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider5 = r18.d;
                                    long j215 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId5 = r18.f15143k;
                                    AtomicInteger atomicInteger7 = HlsMediaChunk.N;
                                    DataSpec.Builder builder10 = new DataSpec.Builder();
                                    builder10.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder10.f14401f = segmentBase.f15269j;
                                    builder10.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder10.f14403i = i4;
                                    dataSpecA = builder10.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec6 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str14 = segmentBase.f15268i;
                                        str14.getClass();
                                        bArrD = HlsMediaChunk.d(str14);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str15 = segment2.f15268i;
                                            str15.getClass();
                                            bArrD2 = HlsMediaChunk.d(str15);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD9 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder11 = new DataSpec.Builder();
                                        builder11.f14397a = uriD9;
                                        builder11.f14401f = segment2.f15269j;
                                        builder11.g = segment2.f15270k;
                                        dataSpecA2 = builder11.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j313 = jF2 + j13;
                                    long j314 = j313 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder6 = id3Decoder;
                                    ParsableByteArray parsableByteArray6 = parsableByteArray;
                                    long j315 = segmentBaseHolderF2.f15150b;
                                    int i18 = segmentBaseHolderF2.f15151c;
                                    boolean z215 = !z4;
                                    boolean z216 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider5.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory5, aes128DataSource2, dataSpec6, format5, z7, dataSource, dataSpecA2, z8, uri2, list9, iT5, objJ5, j313, j314, j315, i18, z215, i5, z216, z214, timestampAdjuster, j215, segmentBase.g, hlsMediaChunkExtractor, id3Decoder6, parsableByteArray6, z6, z5, playerId5);
                                }
                            }
                            if (z6) {
                                HlsExtractorFactory hlsExtractorFactory6 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format6 = r18.f15139f[i2];
                                List list10 = r18.f15141i;
                                int iT6 = r18.t.t();
                                Object objJ6 = r18.t.j();
                                boolean z217 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider6 = r18.d;
                                long j216 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId6 = r18.f15143k;
                                AtomicInteger atomicInteger8 = HlsMediaChunk.N;
                                DataSpec.Builder builder12 = new DataSpec.Builder();
                                builder12.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder12.f14401f = segmentBase.f15269j;
                                builder12.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder12.f14403i = i4;
                                dataSpecA = builder12.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec7 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str16 = segmentBase.f15268i;
                                    str16.getClass();
                                    bArrD = HlsMediaChunk.d(str16);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str17 = segment2.f15268i;
                                        str17.getClass();
                                        bArrD2 = HlsMediaChunk.d(str17);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD10 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder13 = new DataSpec.Builder();
                                    builder13.f14397a = uriD10;
                                    builder13.f14401f = segment2.f15269j;
                                    builder13.g = segment2.f15270k;
                                    dataSpecA2 = builder13.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j316 = jF2 + j13;
                                long j317 = j316 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder7 = id3Decoder;
                                ParsableByteArray parsableByteArray7 = parsableByteArray;
                                long j318 = segmentBaseHolderF2.f15150b;
                                int i19 = segmentBaseHolderF2.f15151c;
                                boolean z218 = !z4;
                                boolean z219 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider6.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory6, aes128DataSource2, dataSpec7, format6, z7, dataSource, dataSpecA2, z8, uri2, list10, iT6, objJ6, j316, j317, j318, i19, z218, i5, z219, z217, timestampAdjuster, j216, segmentBase.g, hlsMediaChunkExtractor, id3Decoder7, parsableByteArray7, z6, z5, playerId6);
                            } else {
                                HlsExtractorFactory hlsExtractorFactory7 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format7 = r18.f15139f[i2];
                                List list11 = r18.f15141i;
                                int iT7 = r18.t.t();
                                Object objJ7 = r18.t.j();
                                boolean z2110 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider7 = r18.d;
                                long j217 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId7 = r18.f15143k;
                                AtomicInteger atomicInteger9 = HlsMediaChunk.N;
                                DataSpec.Builder builder14 = new DataSpec.Builder();
                                builder14.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder14.f14401f = segmentBase.f15269j;
                                builder14.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder14.f14403i = i4;
                                dataSpecA = builder14.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec8 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str18 = segmentBase.f15268i;
                                    str18.getClass();
                                    bArrD = HlsMediaChunk.d(str18);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str19 = segment2.f15268i;
                                        str19.getClass();
                                        bArrD2 = HlsMediaChunk.d(str19);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD11 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder15 = new DataSpec.Builder();
                                    builder15.f14397a = uriD11;
                                    builder15.f14401f = segment2.f15269j;
                                    builder15.g = segment2.f15270k;
                                    dataSpecA2 = builder15.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j319 = jF2 + j13;
                                long j3110 = j319 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder8 = id3Decoder;
                                ParsableByteArray parsableByteArray8 = parsableByteArray;
                                long j3111 = segmentBaseHolderF2.f15150b;
                                int i110 = segmentBaseHolderF2.f15151c;
                                boolean z2111 = !z4;
                                boolean z2112 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider7.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory7, aes128DataSource2, dataSpec8, format7, z7, dataSource, dataSpecA2, z8, uri2, list11, iT7, objJ7, j319, j3110, j3111, i110, z2111, i5, z2112, z2110, timestampAdjuster, j217, segmentBase.g, hlsMediaChunkExtractor, id3Decoder8, parsableByteArray8, z6, z5, playerId7);
                            }
                        }
                    }
                    z16 = hlsChunkHolder.f15145b;
                    chunk = hlsChunkHolder.f15144a;
                    uri3 = hlsChunkHolder.f15146c;
                    if (z16) {
                        this.R = j2;
                        this.V = true;
                        return true;
                    }
                    if (chunk == null) {
                        if (uri3 != null) {
                            return false;
                        }
                        this.d.n(uri3);
                        return false;
                    }
                    if (chunk instanceof HlsMediaChunk) {
                        hlsMediaChunk3 = (HlsMediaChunk) chunk;
                        if (!arrayList.isEmpty()) {
                            arrayList2 = arrayList;
                            break;
                        }
                        if (!D().f()) {
                            C(arrayList.size() - 1);
                        }
                        if (!hlsMediaChunk3.n) {
                            arrayList2 = arrayList;
                            break;
                        }
                        arrayList2 = arrayList;
                        break;
                        this.h0 = hlsMediaChunk3;
                        this.G = hlsMediaChunk3.d;
                        this.R = -9223372036854775807L;
                        arrayList2.add(hlsMediaChunk3);
                        UnmodifiableListIterator unmodifiableListIterator3 = ImmutableList.f33587c;
                        builder = new ImmutableList.Builder();
                        while (i6 < r5) {
                            builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                        }
                        ImmutableList immutableListJ3 = builder.j();
                        hlsMediaChunk3.E = this;
                        hlsMediaChunk3.J = immutableListJ3;
                        while (i7 < r4) {
                            hlsSampleQueue4.getClass();
                            hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                            if (hlsMediaChunk3.M) {
                                hlsSampleQueue4.I = true;
                            }
                        }
                    }
                    this.v = chunk;
                    loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
                    return true;
                }
                hlsChunkSource.p = new BehindLiveWindowException();
            }
            arrayList = arrayList3;
            hlsChunkHolder = hlsChunkHolder2;
            z16 = hlsChunkHolder.f15145b;
            chunk = hlsChunkHolder.f15144a;
            uri3 = hlsChunkHolder.f15146c;
            if (z16) {
                this.R = j2;
                this.V = true;
                return true;
            }
            if (chunk == null) {
                if (uri3 != null) {
                    return false;
                }
                this.d.n(uri3);
                return false;
            }
            if (chunk instanceof HlsMediaChunk) {
                hlsMediaChunk3 = (HlsMediaChunk) chunk;
                if (!arrayList.isEmpty()) {
                    arrayList2 = arrayList;
                    break;
                }
                if (!D().f()) {
                    C(arrayList.size() - 1);
                }
                if (!hlsMediaChunk3.n) {
                    arrayList2 = arrayList;
                    break;
                }
                arrayList2 = arrayList;
                break;
                this.h0 = hlsMediaChunk3;
                this.G = hlsMediaChunk3.d;
                this.R = -9223372036854775807L;
                arrayList2.add(hlsMediaChunk3);
                UnmodifiableListIterator unmodifiableListIterator4 = ImmutableList.f33587c;
                builder = new ImmutableList.Builder();
                while (i6 < r5) {
                    builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                }
                ImmutableList immutableListJ4 = builder.j();
                hlsMediaChunk3.E = this;
                hlsMediaChunk3.J = immutableListJ4;
                while (i7 < r4) {
                    hlsSampleQueue4.getClass();
                    hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                    if (hlsMediaChunk3.M) {
                        hlsSampleQueue4.I = true;
                    }
                }
            }
            this.v = chunk;
            loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
            return true;
        }
        j8 = j25;
        jMax3 = j8;
        MediaChunkIterator[] mediaChunkIteratorArrB2 = hlsChunkSource.b(hlsMediaChunk4, j5);
        if (iB != -1) {
            ExoTrackSelection exoTrackSelection2 = hlsChunkSource.t;
            hlsPlaylistTracker = hlsPlaylistTracker3;
            j9 = j5;
            if (exoTrackSelection2.b(exoTrackSelection2.l(iB), SystemClock.elapsedRealtime())) {
            }
            hlsMediaChunk = hlsMediaChunk4;
            hlsPlaylistTracker2 = hlsPlaylistTracker;
            j10 = j9;
            boolean z2113 = z19;
            long j218 = jMax3;
            j11 = jMax6;
            hlsChunkSource.t.g(j23, j11, j218, list, mediaChunkIteratorArrB2);
            iR = hlsChunkSource.t.r();
            if (iB != iR) {
                z = true;
            } else {
                z = false;
            }
            uriC = hlsRedundantGroupArr[iR].c();
            if (hlsPlaylistTracker2.i(uriC)) {
                hlsChunkHolder2.f15146c = uriC;
                hlsChunkSource.r = uriC;
            } else {
                hlsMediaPlaylistR = hlsPlaylistTracker2.r(uriC, true);
                hlsMediaPlaylistR.getClass();
                hlsChunkSource.s = hlsMediaPlaylistR.f15292c;
                if (hlsMediaPlaylistR.o) {
                    jF = j2;
                } else {
                    jF = (hlsMediaPlaylistR.f15235h + hlsMediaPlaylistR.u) - hlsPlaylistTracker2.f();
                }
                hlsChunkSource.u = jF;
                jF2 = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker2.f();
                Pair pairE5 = hlsChunkSource.e(hlsMediaChunk, z, hlsMediaPlaylistR, jF2, j10);
                jLongValue = ((Long) pairE5.first).longValue();
                iIntValue = ((Integer) pairE5.second).intValue();
                if (z) {
                    hlsMediaPlaylist = hlsMediaPlaylistR;
                    uri = uriC;
                    i2 = iR;
                } else {
                    Uri uriC4 = hlsRedundantGroupArr[iB].c();
                    HlsMediaPlaylist hlsMediaPlaylistR4 = hlsPlaylistTracker2.r(uriC4, true);
                    hlsMediaPlaylistR4.getClass();
                    jF2 = hlsMediaPlaylistR4.f15235h - hlsPlaylistTracker2.f();
                    Pair pairE6 = hlsChunkSource.e(hlsMediaChunk, false, hlsMediaPlaylistR4, jF2, j10);
                    jLongValue = ((Long) pairE6.first).longValue();
                    iIntValue = ((Integer) pairE6.second).intValue();
                    uri = uriC4;
                    i2 = iB;
                    hlsMediaPlaylist = hlsMediaPlaylistR4;
                }
                list2 = list;
                z2 = hlsMediaPlaylist.f15292c;
                z3 = hlsMediaPlaylist.o;
                j12 = hlsMediaPlaylist.f15238k;
                ImmutableList immutableList3 = hlsMediaPlaylist.r;
                str = hlsMediaPlaylist.f15290a;
                if (i2 != iB) {
                    hlsPlaylistTracker2.c(hlsRedundantGroupArr[iB].c());
                }
                if (jLongValue < j12) {
                    segmentBaseHolderF2 = HlsChunkSource.f(hlsMediaPlaylist, jLongValue, iIntValue);
                    if (segmentBaseHolderF2 != null) {
                        if (!z3) {
                            hlsChunkHolder2.f15146c = uri;
                            r18.r = uri;
                        } else {
                            if (z18) {
                            }
                            hlsChunkHolder2.f15145b = true;
                        }
                    }
                    z4 = segmentBaseHolderF2.d;
                    i3 = segmentBaseHolderF2.f15151c;
                    segmentBase = segmentBaseHolderF2.f15149a;
                    r18.r = null;
                    if (cmcdConfiguration != null) {
                        factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
                        factory.f15799c = r18.t;
                        hlsChunkHolder = hlsChunkHolder2;
                        jMax4 = Math.max(0L, j11);
                        if (jMax4 >= 0) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        Preconditions.g(z12);
                        factory.d = jMax4;
                        f2 = loadingInfo.f14704b;
                        if (f2 != -3.4028235E38f) {
                            z13 = true;
                        } else {
                            z13 = true;
                        }
                        Preconditions.g(z13);
                        factory.f15800e = f2;
                        factory.f15801f = Boolean.valueOf(!z3);
                        long j219 = r18.v;
                        j14 = loadingInfo.f14705c;
                        if (j14 != j2) {
                            z14 = false;
                        } else {
                            z14 = false;
                        }
                        factory.g = z14;
                        factory.f15802h = list2.isEmpty();
                        j15 = segmentBase.d;
                        if (j15 >= 0) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        Preconditions.g(z15);
                        factory.f15803i = j15;
                        j16 = segmentBaseHolderF2.f15150b;
                        if (i3 == -1) {
                            j16++;
                        }
                        segmentBaseHolderF3 = HlsChunkSource.f(hlsMediaPlaylist, j16, i3 != -1 ? i3 + 1 : -1);
                        if (segmentBaseHolderF3 != null) {
                            HlsMediaPlaylist.SegmentBase segmentBase4 = segmentBaseHolderF3.f15149a;
                            uriD3 = UriUtil.d(str, segmentBase.f15263b);
                            String str110 = segmentBase4.f15263b;
                            j17 = segmentBase4.f15270k;
                            j18 = segmentBase4.f15269j;
                            uriD4 = UriUtil.d(str, str110);
                            if (uriD3.isOpaque()) {
                                arrayList = arrayList3;
                                string = uriD4.toString();
                            } else {
                                arrayList = arrayList3;
                                string = uriD4.toString();
                            }
                            factory.f15805k = string;
                            string2 = j18 + "-";
                            if (j17 != -1) {
                                StringBuilder sbT3 = n00.t(string2);
                                sbT3.append(j18 + j17);
                                string2 = sbT3.toString();
                            }
                            factory.l = string2;
                        } else {
                            arrayList = arrayList3;
                            i3 = i3;
                        }
                    } else {
                        arrayList = arrayList3;
                        hlsChunkHolder = hlsChunkHolder2;
                        i3 = i3;
                        factory = null;
                    }
                    r18.v = SystemClock.elapsedRealtime();
                    segment = segmentBase.f15264c;
                    j13 = segmentBase.f15266f;
                    if (segment != null) {
                        uriD = null;
                    } else {
                        uriD = null;
                    }
                    chunkG = r18.g(uriD, i2, true, factory);
                    hlsChunkHolder.f15144a = chunkG;
                    if (chunkG == null) {
                        str2 = segmentBase.f15267h;
                        if (str2 == null) {
                            uriD2 = null;
                        } else {
                            uriD2 = UriUtil.d(hlsMediaPlaylist.f15290a, str2);
                        }
                        chunkG2 = r18.g(uriD2, i2, false, factory);
                        hlsChunkHolder.f15144a = chunkG2;
                        if (chunkG2 == null) {
                            if (segmentBase instanceof HlsMediaPlaylist.Part) {
                                z5 = z2;
                            } else if (((HlsMediaPlaylist.Part) segmentBase).m) {
                                z5 = true;
                            } else {
                                z5 = true;
                            }
                            if (hlsMediaChunk == null) {
                                AtomicInteger atomicInteger10 = HlsMediaChunk.N;
                                hlsMediaChunk2 = hlsMediaChunk;
                            } else {
                                hlsMediaChunk2 = hlsMediaChunk;
                                if (uri.equals(hlsMediaChunk2.m)) {
                                    if (z5) {
                                    }
                                } else if (z5) {
                                }
                                if (z6) {
                                    HlsExtractorFactory hlsExtractorFactory8 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format8 = r18.f15139f[i2];
                                    List list12 = r18.f15141i;
                                    int iT8 = r18.t.t();
                                    Object objJ8 = r18.t.j();
                                    boolean z2114 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider8 = r18.d;
                                    long j2110 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId8 = r18.f15143k;
                                    AtomicInteger atomicInteger11 = HlsMediaChunk.N;
                                    DataSpec.Builder builder16 = new DataSpec.Builder();
                                    builder16.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder16.f14401f = segmentBase.f15269j;
                                    builder16.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder16.f14403i = i4;
                                    dataSpecA = builder16.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec9 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str111 = segmentBase.f15268i;
                                        str111.getClass();
                                        bArrD = HlsMediaChunk.d(str111);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str112 = segment2.f15268i;
                                            str112.getClass();
                                            bArrD2 = HlsMediaChunk.d(str112);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD12 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder17 = new DataSpec.Builder();
                                        builder17.f14397a = uriD12;
                                        builder17.f14401f = segment2.f15269j;
                                        builder17.g = segment2.f15270k;
                                        dataSpecA2 = builder17.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j3112 = jF2 + j13;
                                    long j3113 = j3112 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder9 = id3Decoder;
                                    ParsableByteArray parsableByteArray9 = parsableByteArray;
                                    long j3114 = segmentBaseHolderF2.f15150b;
                                    int i111 = segmentBaseHolderF2.f15151c;
                                    boolean z2115 = !z4;
                                    boolean z2116 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider8.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory8, aes128DataSource2, dataSpec9, format8, z7, dataSource, dataSpecA2, z8, uri2, list12, iT8, objJ8, j3112, j3113, j3114, i111, z2115, i5, z2116, z2114, timestampAdjuster, j2110, segmentBase.g, hlsMediaChunkExtractor, id3Decoder9, parsableByteArray9, z6, z5, playerId8);
                                } else {
                                    HlsExtractorFactory hlsExtractorFactory9 = r18.f15135a;
                                    aes128DataSource = r18.f15136b;
                                    Format format9 = r18.f15139f[i2];
                                    List list13 = r18.f15141i;
                                    int iT9 = r18.t.t();
                                    Object objJ9 = r18.t.j();
                                    boolean z2117 = r18.n;
                                    TimestampAdjusterProvider timestampAdjusterProvider9 = r18.d;
                                    long j2111 = r18.m;
                                    if (uriD2 == null) {
                                        fullSegmentEncryptionKeyCache2.getClass();
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = null;
                                    } else {
                                        fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                        bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                    }
                                    if (uriD == null) {
                                        bArr2 = null;
                                    } else {
                                        bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                    }
                                    PlayerId playerId9 = r18.f15143k;
                                    AtomicInteger atomicInteger12 = HlsMediaChunk.N;
                                    DataSpec.Builder builder18 = new DataSpec.Builder();
                                    builder18.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                    builder18.f14401f = segmentBase.f15269j;
                                    builder18.g = segmentBase.f15270k;
                                    if (z4) {
                                        i4 = 8;
                                    } else {
                                        i4 = 0;
                                    }
                                    builder18.f14403i = i4;
                                    dataSpecA = builder18.a();
                                    if (factory != null) {
                                        dataSpecA = factory.a().a(dataSpecA);
                                    }
                                    DataSpec dataSpec10 = dataSpecA;
                                    if (bArr != null) {
                                        z7 = true;
                                    } else {
                                        z7 = false;
                                    }
                                    if (z7) {
                                        String str113 = segmentBase.f15268i;
                                        str113.getClass();
                                        bArrD = HlsMediaChunk.d(str113);
                                    } else {
                                        bArrD = null;
                                    }
                                    if (bArr != null) {
                                        bArrD.getClass();
                                        aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                    } else {
                                        aes128DataSource2 = aes128DataSource;
                                    }
                                    segment2 = segmentBase.f15264c;
                                    if (segment2 != null) {
                                        if (bArr2 != null) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            String str114 = segment2.f15268i;
                                            str114.getClass();
                                            bArrD2 = HlsMediaChunk.d(str114);
                                        } else {
                                            bArrD2 = null;
                                        }
                                        Uri uriD13 = UriUtil.d(str, segment2.f15263b);
                                        DataSpec.Builder builder19 = new DataSpec.Builder();
                                        builder19.f14397a = uriD13;
                                        builder19.f14401f = segment2.f15269j;
                                        builder19.g = segment2.f15270k;
                                        dataSpecA2 = builder19.a();
                                        if (factory != null) {
                                            factory.f15804j = "i";
                                            dataSpecA2 = factory.a().a(dataSpecA2);
                                        }
                                        if (bArr2 != null) {
                                            bArrD2.getClass();
                                            aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                        }
                                        dataSource = aes128DataSource;
                                        z8 = z11;
                                    } else {
                                        dataSpecA2 = null;
                                        dataSource = null;
                                        z8 = false;
                                    }
                                    long j3115 = jF2 + j13;
                                    long j3116 = j3115 + segmentBase.d;
                                    i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                    if (hlsMediaChunk2 != null) {
                                        dataSpec = hlsMediaChunk2.q;
                                        if (dataSpecA2 != dataSpec) {
                                            z9 = true;
                                        } else {
                                            z9 = true;
                                        }
                                        uri2 = uri;
                                        if (uri2.equals(hlsMediaChunk2.m)) {
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                        }
                                        id3Decoder = hlsMediaChunk2.y;
                                        parsableByteArray = hlsMediaChunk2.z;
                                        if (z9) {
                                            hlsMediaChunkExtractor2 = null;
                                        } else {
                                            hlsMediaChunkExtractor2 = null;
                                        }
                                        hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                    } else {
                                        uri2 = uri;
                                        id3Decoder = new Id3Decoder();
                                        parsableByteArray = new ParsableByteArray(10);
                                        hlsMediaChunkExtractor = null;
                                    }
                                    Id3Decoder id3Decoder10 = id3Decoder;
                                    ParsableByteArray parsableByteArray10 = parsableByteArray;
                                    long j3117 = segmentBaseHolderF2.f15150b;
                                    int i112 = segmentBaseHolderF2.f15151c;
                                    boolean z2118 = !z4;
                                    boolean z2119 = segmentBase.l;
                                    sparseArray = timestampAdjusterProvider9.f15198a;
                                    timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                    if (timestampAdjuster == null) {
                                        timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                        sparseArray.put(i5, timestampAdjuster);
                                    }
                                    hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory9, aes128DataSource2, dataSpec10, format9, z7, dataSource, dataSpecA2, z8, uri2, list13, iT9, objJ9, j3115, j3116, j3117, i112, z2118, i5, z2119, z2117, timestampAdjuster, j2111, segmentBase.g, hlsMediaChunkExtractor, id3Decoder10, parsableByteArray10, z6, z5, playerId9);
                                }
                            }
                            if (z6) {
                                HlsExtractorFactory hlsExtractorFactory10 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format10 = r18.f15139f[i2];
                                List list14 = r18.f15141i;
                                int iT10 = r18.t.t();
                                Object objJ10 = r18.t.j();
                                boolean z21110 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider10 = r18.d;
                                long j2112 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId10 = r18.f15143k;
                                AtomicInteger atomicInteger13 = HlsMediaChunk.N;
                                DataSpec.Builder builder110 = new DataSpec.Builder();
                                builder110.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder110.f14401f = segmentBase.f15269j;
                                builder110.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder110.f14403i = i4;
                                dataSpecA = builder110.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec11 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str115 = segmentBase.f15268i;
                                    str115.getClass();
                                    bArrD = HlsMediaChunk.d(str115);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str116 = segment2.f15268i;
                                        str116.getClass();
                                        bArrD2 = HlsMediaChunk.d(str116);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD14 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder111 = new DataSpec.Builder();
                                    builder111.f14397a = uriD14;
                                    builder111.f14401f = segment2.f15269j;
                                    builder111.g = segment2.f15270k;
                                    dataSpecA2 = builder111.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j3118 = jF2 + j13;
                                long j3119 = j3118 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder11 = id3Decoder;
                                ParsableByteArray parsableByteArray11 = parsableByteArray;
                                long j31110 = segmentBaseHolderF2.f15150b;
                                int i113 = segmentBaseHolderF2.f15151c;
                                boolean z21111 = !z4;
                                boolean z21112 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider10.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory10, aes128DataSource2, dataSpec11, format10, z7, dataSource, dataSpecA2, z8, uri2, list14, iT10, objJ10, j3118, j3119, j31110, i113, z21111, i5, z21112, z21110, timestampAdjuster, j2112, segmentBase.g, hlsMediaChunkExtractor, id3Decoder11, parsableByteArray11, z6, z5, playerId10);
                            } else {
                                HlsExtractorFactory hlsExtractorFactory11 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format11 = r18.f15139f[i2];
                                List list15 = r18.f15141i;
                                int iT11 = r18.t.t();
                                Object objJ11 = r18.t.j();
                                boolean z21113 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider11 = r18.d;
                                long j2113 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId11 = r18.f15143k;
                                AtomicInteger atomicInteger14 = HlsMediaChunk.N;
                                DataSpec.Builder builder112 = new DataSpec.Builder();
                                builder112.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder112.f14401f = segmentBase.f15269j;
                                builder112.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder112.f14403i = i4;
                                dataSpecA = builder112.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec12 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str117 = segmentBase.f15268i;
                                    str117.getClass();
                                    bArrD = HlsMediaChunk.d(str117);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str118 = segment2.f15268i;
                                        str118.getClass();
                                        bArrD2 = HlsMediaChunk.d(str118);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD15 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder113 = new DataSpec.Builder();
                                    builder113.f14397a = uriD15;
                                    builder113.f14401f = segment2.f15269j;
                                    builder113.g = segment2.f15270k;
                                    dataSpecA2 = builder113.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j31111 = jF2 + j13;
                                long j31112 = j31111 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder12 = id3Decoder;
                                ParsableByteArray parsableByteArray12 = parsableByteArray;
                                long j31113 = segmentBaseHolderF2.f15150b;
                                int i114 = segmentBaseHolderF2.f15151c;
                                boolean z21114 = !z4;
                                boolean z21115 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider11.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory11, aes128DataSource2, dataSpec12, format11, z7, dataSource, dataSpecA2, z8, uri2, list15, iT11, objJ11, j31111, j31112, j31113, i114, z21114, i5, z21115, z21113, timestampAdjuster, j2113, segmentBase.g, hlsMediaChunkExtractor, id3Decoder12, parsableByteArray12, z6, z5, playerId11);
                            }
                        }
                    }
                    z16 = hlsChunkHolder.f15145b;
                    chunk = hlsChunkHolder.f15144a;
                    uri3 = hlsChunkHolder.f15146c;
                    if (z16) {
                        this.R = j2;
                        this.V = true;
                        return true;
                    }
                    if (chunk == null) {
                        if (uri3 != null) {
                            return false;
                        }
                        this.d.n(uri3);
                        return false;
                    }
                    if (chunk instanceof HlsMediaChunk) {
                        hlsMediaChunk3 = (HlsMediaChunk) chunk;
                        if (!arrayList.isEmpty()) {
                            arrayList2 = arrayList;
                            break;
                        }
                        if (!D().f()) {
                            C(arrayList.size() - 1);
                        }
                        if (!hlsMediaChunk3.n) {
                            arrayList2 = arrayList;
                            break;
                        }
                        arrayList2 = arrayList;
                        break;
                        this.h0 = hlsMediaChunk3;
                        this.G = hlsMediaChunk3.d;
                        this.R = -9223372036854775807L;
                        arrayList2.add(hlsMediaChunk3);
                        UnmodifiableListIterator unmodifiableListIterator5 = ImmutableList.f33587c;
                        builder = new ImmutableList.Builder();
                        while (i6 < r5) {
                            builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                        }
                        ImmutableList immutableListJ5 = builder.j();
                        hlsMediaChunk3.E = this;
                        hlsMediaChunk3.J = immutableListJ5;
                        while (i7 < r4) {
                            hlsSampleQueue4.getClass();
                            hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                            if (hlsMediaChunk3.M) {
                                hlsSampleQueue4.I = true;
                            }
                        }
                    }
                    this.v = chunk;
                    loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
                    return true;
                }
                hlsChunkSource.p = new BehindLiveWindowException();
            }
            arrayList = arrayList3;
            hlsChunkHolder = hlsChunkHolder2;
            z16 = hlsChunkHolder.f15145b;
            chunk = hlsChunkHolder.f15144a;
            uri3 = hlsChunkHolder.f15146c;
            if (z16) {
                this.R = j2;
                this.V = true;
                return true;
            }
            if (chunk == null) {
                if (uri3 != null) {
                    return false;
                }
                this.d.n(uri3);
                return false;
            }
            if (chunk instanceof HlsMediaChunk) {
                hlsMediaChunk3 = (HlsMediaChunk) chunk;
                if (!arrayList.isEmpty()) {
                    arrayList2 = arrayList;
                    break;
                }
                if (!D().f()) {
                    C(arrayList.size() - 1);
                }
                if (!hlsMediaChunk3.n) {
                    arrayList2 = arrayList;
                    break;
                }
                arrayList2 = arrayList;
                break;
                this.h0 = hlsMediaChunk3;
                this.G = hlsMediaChunk3.d;
                this.R = -9223372036854775807L;
                arrayList2.add(hlsMediaChunk3);
                UnmodifiableListIterator unmodifiableListIterator6 = ImmutableList.f33587c;
                builder = new ImmutableList.Builder();
                while (i6 < r5) {
                    builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                }
                ImmutableList immutableListJ6 = builder.j();
                hlsMediaChunk3.E = this;
                hlsMediaChunk3.J = immutableListJ6;
                while (i7 < r4) {
                    hlsSampleQueue4.getClass();
                    hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                    if (hlsMediaChunk3.M) {
                        hlsSampleQueue4.I = true;
                    }
                }
            }
            this.v = chunk;
            loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
            return true;
        }
        hlsPlaylistTracker = hlsPlaylistTracker3;
        j9 = j5;
        hlsMediaChunk = hlsMediaChunk4;
        hlsPlaylistTracker2 = hlsPlaylistTracker;
        j10 = j9;
        boolean z21116 = z19;
        long j2114 = jMax3;
        j11 = jMax6;
        hlsChunkSource.t.g(j23, j11, j2114, list, mediaChunkIteratorArrB2);
        iR = hlsChunkSource.t.r();
        if (iB != iR) {
            z = true;
        } else {
            z = false;
        }
        uriC = hlsRedundantGroupArr[iR].c();
        if (hlsPlaylistTracker2.i(uriC)) {
            hlsChunkHolder2.f15146c = uriC;
            hlsChunkSource.r = uriC;
        } else {
            hlsMediaPlaylistR = hlsPlaylistTracker2.r(uriC, true);
            hlsMediaPlaylistR.getClass();
            hlsChunkSource.s = hlsMediaPlaylistR.f15292c;
            if (hlsMediaPlaylistR.o) {
                jF = j2;
            } else {
                jF = (hlsMediaPlaylistR.f15235h + hlsMediaPlaylistR.u) - hlsPlaylistTracker2.f();
            }
            hlsChunkSource.u = jF;
            jF2 = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker2.f();
            Pair pairE7 = hlsChunkSource.e(hlsMediaChunk, z, hlsMediaPlaylistR, jF2, j10);
            jLongValue = ((Long) pairE7.first).longValue();
            iIntValue = ((Integer) pairE7.second).intValue();
            if (z) {
                hlsMediaPlaylist = hlsMediaPlaylistR;
                uri = uriC;
                i2 = iR;
            } else {
                Uri uriC5 = hlsRedundantGroupArr[iB].c();
                HlsMediaPlaylist hlsMediaPlaylistR5 = hlsPlaylistTracker2.r(uriC5, true);
                hlsMediaPlaylistR5.getClass();
                jF2 = hlsMediaPlaylistR5.f15235h - hlsPlaylistTracker2.f();
                Pair pairE8 = hlsChunkSource.e(hlsMediaChunk, false, hlsMediaPlaylistR5, jF2, j10);
                jLongValue = ((Long) pairE8.first).longValue();
                iIntValue = ((Integer) pairE8.second).intValue();
                uri = uriC5;
                i2 = iB;
                hlsMediaPlaylist = hlsMediaPlaylistR5;
            }
            list2 = list;
            z2 = hlsMediaPlaylist.f15292c;
            z3 = hlsMediaPlaylist.o;
            j12 = hlsMediaPlaylist.f15238k;
            ImmutableList immutableList4 = hlsMediaPlaylist.r;
            str = hlsMediaPlaylist.f15290a;
            if (i2 != iB) {
                hlsPlaylistTracker2.c(hlsRedundantGroupArr[iB].c());
            }
            if (jLongValue < j12) {
                segmentBaseHolderF2 = HlsChunkSource.f(hlsMediaPlaylist, jLongValue, iIntValue);
                if (segmentBaseHolderF2 != null) {
                    if (!z3) {
                        hlsChunkHolder2.f15146c = uri;
                        r18.r = uri;
                    } else {
                        if (z18) {
                        }
                        hlsChunkHolder2.f15145b = true;
                    }
                }
                z4 = segmentBaseHolderF2.d;
                i3 = segmentBaseHolderF2.f15151c;
                segmentBase = segmentBaseHolderF2.f15149a;
                r18.r = null;
                if (cmcdConfiguration != null) {
                    factory = new CmcdData.Factory(cmcdConfiguration, NBSSpanMetricUnit.Hour);
                    factory.f15799c = r18.t;
                    hlsChunkHolder = hlsChunkHolder2;
                    jMax4 = Math.max(0L, j11);
                    if (jMax4 >= 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    Preconditions.g(z12);
                    factory.d = jMax4;
                    f2 = loadingInfo.f14704b;
                    if (f2 != -3.4028235E38f) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    Preconditions.g(z13);
                    factory.f15800e = f2;
                    factory.f15801f = Boolean.valueOf(!z3);
                    long j2115 = r18.v;
                    j14 = loadingInfo.f14705c;
                    if (j14 != j2) {
                        z14 = false;
                    } else {
                        z14 = false;
                    }
                    factory.g = z14;
                    factory.f15802h = list2.isEmpty();
                    j15 = segmentBase.d;
                    if (j15 >= 0) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    Preconditions.g(z15);
                    factory.f15803i = j15;
                    j16 = segmentBaseHolderF2.f15150b;
                    if (i3 == -1) {
                        j16++;
                    }
                    segmentBaseHolderF3 = HlsChunkSource.f(hlsMediaPlaylist, j16, i3 != -1 ? i3 + 1 : -1);
                    if (segmentBaseHolderF3 != null) {
                        HlsMediaPlaylist.SegmentBase segmentBase5 = segmentBaseHolderF3.f15149a;
                        uriD3 = UriUtil.d(str, segmentBase.f15263b);
                        String str119 = segmentBase5.f15263b;
                        j17 = segmentBase5.f15270k;
                        j18 = segmentBase5.f15269j;
                        uriD4 = UriUtil.d(str, str119);
                        if (uriD3.isOpaque()) {
                            arrayList = arrayList3;
                            string = uriD4.toString();
                        } else {
                            arrayList = arrayList3;
                            string = uriD4.toString();
                        }
                        factory.f15805k = string;
                        string2 = j18 + "-";
                        if (j17 != -1) {
                            StringBuilder sbT4 = n00.t(string2);
                            sbT4.append(j18 + j17);
                            string2 = sbT4.toString();
                        }
                        factory.l = string2;
                    } else {
                        arrayList = arrayList3;
                        i3 = i3;
                    }
                } else {
                    arrayList = arrayList3;
                    hlsChunkHolder = hlsChunkHolder2;
                    i3 = i3;
                    factory = null;
                }
                r18.v = SystemClock.elapsedRealtime();
                segment = segmentBase.f15264c;
                j13 = segmentBase.f15266f;
                if (segment != null) {
                    uriD = null;
                } else {
                    uriD = null;
                }
                chunkG = r18.g(uriD, i2, true, factory);
                hlsChunkHolder.f15144a = chunkG;
                if (chunkG == null) {
                    str2 = segmentBase.f15267h;
                    if (str2 == null) {
                        uriD2 = null;
                    } else {
                        uriD2 = UriUtil.d(hlsMediaPlaylist.f15290a, str2);
                    }
                    chunkG2 = r18.g(uriD2, i2, false, factory);
                    hlsChunkHolder.f15144a = chunkG2;
                    if (chunkG2 == null) {
                        if (segmentBase instanceof HlsMediaPlaylist.Part) {
                            z5 = z2;
                        } else if (((HlsMediaPlaylist.Part) segmentBase).m) {
                            z5 = true;
                        } else {
                            z5 = true;
                        }
                        if (hlsMediaChunk == null) {
                            AtomicInteger atomicInteger15 = HlsMediaChunk.N;
                            hlsMediaChunk2 = hlsMediaChunk;
                        } else {
                            hlsMediaChunk2 = hlsMediaChunk;
                            if (uri.equals(hlsMediaChunk2.m)) {
                                if (z5) {
                                }
                            } else if (z5) {
                            }
                            if (z6) {
                                HlsExtractorFactory hlsExtractorFactory12 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format12 = r18.f15139f[i2];
                                List list16 = r18.f15141i;
                                int iT12 = r18.t.t();
                                Object objJ12 = r18.t.j();
                                boolean z21117 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider12 = r18.d;
                                long j2116 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId12 = r18.f15143k;
                                AtomicInteger atomicInteger16 = HlsMediaChunk.N;
                                DataSpec.Builder builder114 = new DataSpec.Builder();
                                builder114.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder114.f14401f = segmentBase.f15269j;
                                builder114.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder114.f14403i = i4;
                                dataSpecA = builder114.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec13 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str1110 = segmentBase.f15268i;
                                    str1110.getClass();
                                    bArrD = HlsMediaChunk.d(str1110);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str1111 = segment2.f15268i;
                                        str1111.getClass();
                                        bArrD2 = HlsMediaChunk.d(str1111);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD16 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder115 = new DataSpec.Builder();
                                    builder115.f14397a = uriD16;
                                    builder115.f14401f = segment2.f15269j;
                                    builder115.g = segment2.f15270k;
                                    dataSpecA2 = builder115.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j31114 = jF2 + j13;
                                long j31115 = j31114 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder13 = id3Decoder;
                                ParsableByteArray parsableByteArray13 = parsableByteArray;
                                long j31116 = segmentBaseHolderF2.f15150b;
                                int i115 = segmentBaseHolderF2.f15151c;
                                boolean z21118 = !z4;
                                boolean z21119 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider12.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory12, aes128DataSource2, dataSpec13, format12, z7, dataSource, dataSpecA2, z8, uri2, list16, iT12, objJ12, j31114, j31115, j31116, i115, z21118, i5, z21119, z21117, timestampAdjuster, j2116, segmentBase.g, hlsMediaChunkExtractor, id3Decoder13, parsableByteArray13, z6, z5, playerId12);
                            } else {
                                HlsExtractorFactory hlsExtractorFactory13 = r18.f15135a;
                                aes128DataSource = r18.f15136b;
                                Format format13 = r18.f15139f[i2];
                                List list17 = r18.f15141i;
                                int iT13 = r18.t.t();
                                Object objJ13 = r18.t.j();
                                boolean z211110 = r18.n;
                                TimestampAdjusterProvider timestampAdjusterProvider13 = r18.d;
                                long j2117 = r18.m;
                                if (uriD2 == null) {
                                    fullSegmentEncryptionKeyCache2.getClass();
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = null;
                                } else {
                                    fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                    bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                                }
                                if (uriD == null) {
                                    bArr2 = null;
                                } else {
                                    bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                                }
                                PlayerId playerId13 = r18.f15143k;
                                AtomicInteger atomicInteger17 = HlsMediaChunk.N;
                                DataSpec.Builder builder116 = new DataSpec.Builder();
                                builder116.f14397a = UriUtil.d(str, segmentBase.f15263b);
                                builder116.f14401f = segmentBase.f15269j;
                                builder116.g = segmentBase.f15270k;
                                if (z4) {
                                    i4 = 8;
                                } else {
                                    i4 = 0;
                                }
                                builder116.f14403i = i4;
                                dataSpecA = builder116.a();
                                if (factory != null) {
                                    dataSpecA = factory.a().a(dataSpecA);
                                }
                                DataSpec dataSpec14 = dataSpecA;
                                if (bArr != null) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                if (z7) {
                                    String str1112 = segmentBase.f15268i;
                                    str1112.getClass();
                                    bArrD = HlsMediaChunk.d(str1112);
                                } else {
                                    bArrD = null;
                                }
                                if (bArr != null) {
                                    bArrD.getClass();
                                    aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                                } else {
                                    aes128DataSource2 = aes128DataSource;
                                }
                                segment2 = segmentBase.f15264c;
                                if (segment2 != null) {
                                    if (bArr2 != null) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        String str1113 = segment2.f15268i;
                                        str1113.getClass();
                                        bArrD2 = HlsMediaChunk.d(str1113);
                                    } else {
                                        bArrD2 = null;
                                    }
                                    Uri uriD17 = UriUtil.d(str, segment2.f15263b);
                                    DataSpec.Builder builder117 = new DataSpec.Builder();
                                    builder117.f14397a = uriD17;
                                    builder117.f14401f = segment2.f15269j;
                                    builder117.g = segment2.f15270k;
                                    dataSpecA2 = builder117.a();
                                    if (factory != null) {
                                        factory.f15804j = "i";
                                        dataSpecA2 = factory.a().a(dataSpecA2);
                                    }
                                    if (bArr2 != null) {
                                        bArrD2.getClass();
                                        aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                    }
                                    dataSource = aes128DataSource;
                                    z8 = z11;
                                } else {
                                    dataSpecA2 = null;
                                    dataSource = null;
                                    z8 = false;
                                }
                                long j31117 = jF2 + j13;
                                long j31118 = j31117 + segmentBase.d;
                                i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                                if (hlsMediaChunk2 != null) {
                                    dataSpec = hlsMediaChunk2.q;
                                    if (dataSpecA2 != dataSpec) {
                                        z9 = true;
                                    } else {
                                        z9 = true;
                                    }
                                    uri2 = uri;
                                    if (uri2.equals(hlsMediaChunk2.m)) {
                                        z10 = false;
                                    } else {
                                        z10 = false;
                                    }
                                    id3Decoder = hlsMediaChunk2.y;
                                    parsableByteArray = hlsMediaChunk2.z;
                                    if (z9) {
                                        hlsMediaChunkExtractor2 = null;
                                    } else {
                                        hlsMediaChunkExtractor2 = null;
                                    }
                                    hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                                } else {
                                    uri2 = uri;
                                    id3Decoder = new Id3Decoder();
                                    parsableByteArray = new ParsableByteArray(10);
                                    hlsMediaChunkExtractor = null;
                                }
                                Id3Decoder id3Decoder14 = id3Decoder;
                                ParsableByteArray parsableByteArray14 = parsableByteArray;
                                long j31119 = segmentBaseHolderF2.f15150b;
                                int i116 = segmentBaseHolderF2.f15151c;
                                boolean z211111 = !z4;
                                boolean z211112 = segmentBase.l;
                                sparseArray = timestampAdjusterProvider13.f15198a;
                                timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                                if (timestampAdjuster == null) {
                                    timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                    sparseArray.put(i5, timestampAdjuster);
                                }
                                hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory13, aes128DataSource2, dataSpec14, format13, z7, dataSource, dataSpecA2, z8, uri2, list17, iT13, objJ13, j31117, j31118, j31119, i116, z211111, i5, z211112, z211110, timestampAdjuster, j2117, segmentBase.g, hlsMediaChunkExtractor, id3Decoder14, parsableByteArray14, z6, z5, playerId13);
                            }
                        }
                        if (z6) {
                            HlsExtractorFactory hlsExtractorFactory14 = r18.f15135a;
                            aes128DataSource = r18.f15136b;
                            Format format14 = r18.f15139f[i2];
                            List list18 = r18.f15141i;
                            int iT14 = r18.t.t();
                            Object objJ14 = r18.t.j();
                            boolean z211113 = r18.n;
                            TimestampAdjusterProvider timestampAdjusterProvider14 = r18.d;
                            long j2118 = r18.m;
                            if (uriD2 == null) {
                                fullSegmentEncryptionKeyCache2.getClass();
                                fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                bArr = null;
                            } else {
                                fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                            }
                            if (uriD == null) {
                                bArr2 = null;
                            } else {
                                bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                            }
                            PlayerId playerId14 = r18.f15143k;
                            AtomicInteger atomicInteger18 = HlsMediaChunk.N;
                            DataSpec.Builder builder118 = new DataSpec.Builder();
                            builder118.f14397a = UriUtil.d(str, segmentBase.f15263b);
                            builder118.f14401f = segmentBase.f15269j;
                            builder118.g = segmentBase.f15270k;
                            if (z4) {
                                i4 = 8;
                            } else {
                                i4 = 0;
                            }
                            builder118.f14403i = i4;
                            dataSpecA = builder118.a();
                            if (factory != null) {
                                dataSpecA = factory.a().a(dataSpecA);
                            }
                            DataSpec dataSpec15 = dataSpecA;
                            if (bArr != null) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z7) {
                                String str1114 = segmentBase.f15268i;
                                str1114.getClass();
                                bArrD = HlsMediaChunk.d(str1114);
                            } else {
                                bArrD = null;
                            }
                            if (bArr != null) {
                                bArrD.getClass();
                                aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                            } else {
                                aes128DataSource2 = aes128DataSource;
                            }
                            segment2 = segmentBase.f15264c;
                            if (segment2 != null) {
                                if (bArr2 != null) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    String str1115 = segment2.f15268i;
                                    str1115.getClass();
                                    bArrD2 = HlsMediaChunk.d(str1115);
                                } else {
                                    bArrD2 = null;
                                }
                                Uri uriD18 = UriUtil.d(str, segment2.f15263b);
                                DataSpec.Builder builder119 = new DataSpec.Builder();
                                builder119.f14397a = uriD18;
                                builder119.f14401f = segment2.f15269j;
                                builder119.g = segment2.f15270k;
                                dataSpecA2 = builder119.a();
                                if (factory != null) {
                                    factory.f15804j = "i";
                                    dataSpecA2 = factory.a().a(dataSpecA2);
                                }
                                if (bArr2 != null) {
                                    bArrD2.getClass();
                                    aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                }
                                dataSource = aes128DataSource;
                                z8 = z11;
                            } else {
                                dataSpecA2 = null;
                                dataSource = null;
                                z8 = false;
                            }
                            long j311110 = jF2 + j13;
                            long j311111 = j311110 + segmentBase.d;
                            i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                            if (hlsMediaChunk2 != null) {
                                dataSpec = hlsMediaChunk2.q;
                                if (dataSpecA2 != dataSpec) {
                                    z9 = true;
                                } else {
                                    z9 = true;
                                }
                                uri2 = uri;
                                if (uri2.equals(hlsMediaChunk2.m)) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                id3Decoder = hlsMediaChunk2.y;
                                parsableByteArray = hlsMediaChunk2.z;
                                if (z9) {
                                    hlsMediaChunkExtractor2 = null;
                                } else {
                                    hlsMediaChunkExtractor2 = null;
                                }
                                hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                            } else {
                                uri2 = uri;
                                id3Decoder = new Id3Decoder();
                                parsableByteArray = new ParsableByteArray(10);
                                hlsMediaChunkExtractor = null;
                            }
                            Id3Decoder id3Decoder15 = id3Decoder;
                            ParsableByteArray parsableByteArray15 = parsableByteArray;
                            long j311112 = segmentBaseHolderF2.f15150b;
                            int i117 = segmentBaseHolderF2.f15151c;
                            boolean z211114 = !z4;
                            boolean z211115 = segmentBase.l;
                            sparseArray = timestampAdjusterProvider14.f15198a;
                            timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                            if (timestampAdjuster == null) {
                                timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                sparseArray.put(i5, timestampAdjuster);
                            }
                            hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory14, aes128DataSource2, dataSpec15, format14, z7, dataSource, dataSpecA2, z8, uri2, list18, iT14, objJ14, j311110, j311111, j311112, i117, z211114, i5, z211115, z211113, timestampAdjuster, j2118, segmentBase.g, hlsMediaChunkExtractor, id3Decoder15, parsableByteArray15, z6, z5, playerId14);
                        } else {
                            HlsExtractorFactory hlsExtractorFactory15 = r18.f15135a;
                            aes128DataSource = r18.f15136b;
                            Format format15 = r18.f15139f[i2];
                            List list19 = r18.f15141i;
                            int iT15 = r18.t.t();
                            Object objJ15 = r18.t.j();
                            boolean z211116 = r18.n;
                            TimestampAdjusterProvider timestampAdjusterProvider15 = r18.d;
                            long j2119 = r18.m;
                            if (uriD2 == null) {
                                fullSegmentEncryptionKeyCache2.getClass();
                                fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                bArr = null;
                            } else {
                                fullSegmentEncryptionKeyCache = fullSegmentEncryptionKeyCache2;
                                bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD2);
                            }
                            if (uriD == null) {
                                bArr2 = null;
                            } else {
                                bArr2 = (byte[]) fullSegmentEncryptionKeyCache.f15133a.get(uriD);
                            }
                            PlayerId playerId15 = r18.f15143k;
                            AtomicInteger atomicInteger19 = HlsMediaChunk.N;
                            DataSpec.Builder builder1110 = new DataSpec.Builder();
                            builder1110.f14397a = UriUtil.d(str, segmentBase.f15263b);
                            builder1110.f14401f = segmentBase.f15269j;
                            builder1110.g = segmentBase.f15270k;
                            if (z4) {
                                i4 = 8;
                            } else {
                                i4 = 0;
                            }
                            builder1110.f14403i = i4;
                            dataSpecA = builder1110.a();
                            if (factory != null) {
                                dataSpecA = factory.a().a(dataSpecA);
                            }
                            DataSpec dataSpec16 = dataSpecA;
                            if (bArr != null) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z7) {
                                String str1116 = segmentBase.f15268i;
                                str1116.getClass();
                                bArrD = HlsMediaChunk.d(str1116);
                            } else {
                                bArrD = null;
                            }
                            if (bArr != null) {
                                bArrD.getClass();
                                aes128DataSource2 = new Aes128DataSource(aes128DataSource, bArr, bArrD);
                            } else {
                                aes128DataSource2 = aes128DataSource;
                            }
                            segment2 = segmentBase.f15264c;
                            if (segment2 != null) {
                                if (bArr2 != null) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (z11) {
                                    String str1117 = segment2.f15268i;
                                    str1117.getClass();
                                    bArrD2 = HlsMediaChunk.d(str1117);
                                } else {
                                    bArrD2 = null;
                                }
                                Uri uriD19 = UriUtil.d(str, segment2.f15263b);
                                DataSpec.Builder builder1111 = new DataSpec.Builder();
                                builder1111.f14397a = uriD19;
                                builder1111.f14401f = segment2.f15269j;
                                builder1111.g = segment2.f15270k;
                                dataSpecA2 = builder1111.a();
                                if (factory != null) {
                                    factory.f15804j = "i";
                                    dataSpecA2 = factory.a().a(dataSpecA2);
                                }
                                if (bArr2 != null) {
                                    bArrD2.getClass();
                                    aes128DataSource = new Aes128DataSource(aes128DataSource, bArr2, bArrD2);
                                }
                                dataSource = aes128DataSource;
                                z8 = z11;
                            } else {
                                dataSpecA2 = null;
                                dataSource = null;
                                z8 = false;
                            }
                            long j311113 = jF2 + j13;
                            long j311114 = j311113 + segmentBase.d;
                            i5 = hlsMediaPlaylist.f15237j + segmentBase.f15265e;
                            if (hlsMediaChunk2 != null) {
                                dataSpec = hlsMediaChunk2.q;
                                if (dataSpecA2 != dataSpec) {
                                    z9 = true;
                                } else {
                                    z9 = true;
                                }
                                uri2 = uri;
                                if (uri2.equals(hlsMediaChunk2.m)) {
                                    z10 = false;
                                } else {
                                    z10 = false;
                                }
                                id3Decoder = hlsMediaChunk2.y;
                                parsableByteArray = hlsMediaChunk2.z;
                                if (z9) {
                                    hlsMediaChunkExtractor2 = null;
                                } else {
                                    hlsMediaChunkExtractor2 = null;
                                }
                                hlsMediaChunkExtractor = hlsMediaChunkExtractor2;
                            } else {
                                uri2 = uri;
                                id3Decoder = new Id3Decoder();
                                parsableByteArray = new ParsableByteArray(10);
                                hlsMediaChunkExtractor = null;
                            }
                            Id3Decoder id3Decoder16 = id3Decoder;
                            ParsableByteArray parsableByteArray16 = parsableByteArray;
                            long j311115 = segmentBaseHolderF2.f15150b;
                            int i118 = segmentBaseHolderF2.f15151c;
                            boolean z211117 = !z4;
                            boolean z211118 = segmentBase.l;
                            sparseArray = timestampAdjusterProvider15.f15198a;
                            timestampAdjuster = (TimestampAdjuster) sparseArray.get(i5);
                            if (timestampAdjuster == null) {
                                timestampAdjuster = new TimestampAdjuster(9223372036854775806L);
                                sparseArray.put(i5, timestampAdjuster);
                            }
                            hlsChunkHolder.f15144a = new HlsMediaChunk(hlsExtractorFactory15, aes128DataSource2, dataSpec16, format15, z7, dataSource, dataSpecA2, z8, uri2, list19, iT15, objJ15, j311113, j311114, j311115, i118, z211117, i5, z211118, z211116, timestampAdjuster, j2119, segmentBase.g, hlsMediaChunkExtractor, id3Decoder16, parsableByteArray16, z6, z5, playerId15);
                        }
                    }
                }
                z16 = hlsChunkHolder.f15145b;
                chunk = hlsChunkHolder.f15144a;
                uri3 = hlsChunkHolder.f15146c;
                if (z16) {
                    this.R = j2;
                    this.V = true;
                    return true;
                }
                if (chunk == null) {
                    if (uri3 != null) {
                        return false;
                    }
                    this.d.n(uri3);
                    return false;
                }
                if (chunk instanceof HlsMediaChunk) {
                    hlsMediaChunk3 = (HlsMediaChunk) chunk;
                    if (!arrayList.isEmpty()) {
                        arrayList2 = arrayList;
                        break;
                    }
                    if (!D().f()) {
                        C(arrayList.size() - 1);
                    }
                    if (!hlsMediaChunk3.n) {
                        arrayList2 = arrayList;
                        break;
                    }
                    arrayList2 = arrayList;
                    break;
                    this.h0 = hlsMediaChunk3;
                    this.G = hlsMediaChunk3.d;
                    this.R = -9223372036854775807L;
                    arrayList2.add(hlsMediaChunk3);
                    UnmodifiableListIterator unmodifiableListIterator7 = ImmutableList.f33587c;
                    builder = new ImmutableList.Builder();
                    while (i6 < r5) {
                        builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
                    }
                    ImmutableList immutableListJ7 = builder.j();
                    hlsMediaChunk3.E = this;
                    hlsMediaChunk3.J = immutableListJ7;
                    while (i7 < r4) {
                        hlsSampleQueue4.getClass();
                        hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                        if (hlsMediaChunk3.M) {
                            hlsSampleQueue4.I = true;
                        }
                    }
                }
                this.v = chunk;
                loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
                return true;
            }
            hlsChunkSource.p = new BehindLiveWindowException();
        }
        arrayList = arrayList3;
        hlsChunkHolder = hlsChunkHolder2;
        z16 = hlsChunkHolder.f15145b;
        chunk = hlsChunkHolder.f15144a;
        uri3 = hlsChunkHolder.f15146c;
        if (z16) {
            this.R = j2;
            this.V = true;
            return true;
        }
        if (chunk == null) {
            if (uri3 != null) {
                return false;
            }
            this.d.n(uri3);
            return false;
        }
        if (chunk instanceof HlsMediaChunk) {
            hlsMediaChunk3 = (HlsMediaChunk) chunk;
            if (!arrayList.isEmpty()) {
                arrayList2 = arrayList;
                break;
            }
            if (!D().f()) {
                C(arrayList.size() - 1);
            }
            if (!hlsMediaChunk3.n) {
                arrayList2 = arrayList;
                break;
            }
            arrayList2 = arrayList;
            break;
            this.h0 = hlsMediaChunk3;
            this.G = hlsMediaChunk3.d;
            this.R = -9223372036854775807L;
            arrayList2.add(hlsMediaChunk3);
            UnmodifiableListIterator unmodifiableListIterator8 = ImmutableList.f33587c;
            builder = new ImmutableList.Builder();
            while (i6 < r5) {
                builder.e(Integer.valueOf(hlsSampleQueue3.q + hlsSampleQueue3.p));
            }
            ImmutableList immutableListJ8 = builder.j();
            hlsMediaChunk3.E = this;
            hlsMediaChunk3.J = immutableListJ8;
            while (i7 < r4) {
                hlsSampleQueue4.getClass();
                hlsSampleQueue4.E = hlsMediaChunk3.f15152k;
                if (hlsMediaChunk3.M) {
                    hlsSampleQueue4.I = true;
                }
            }
        }
        this.v = chunk;
        loader.e(chunk, this, this.f15182j.b(chunk.f15650c));
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00c4  */
    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final Loader.LoadErrorAction b(Loader.Loadable loadable, long j2, long j3, IOException iOException, int i2) {
        LoadErrorHandlingPolicy.FallbackOptions fallbackOptions;
        Chunk chunk;
        boolean zN;
        boolean z;
        int iL;
        Loader.LoadErrorAction loadErrorAction;
        int i3;
        Chunk chunk2 = (Chunk) loadable;
        boolean z2 = chunk2 instanceof HlsMediaChunk;
        if (z2 && !((HlsMediaChunk) chunk2).f() && (iOException instanceof HttpDataSource.InvalidResponseCodeException) && ((i3 = ((HttpDataSource.InvalidResponseCodeException) iOException).d) == 410 || i3 == 404)) {
            return Loader.d;
        }
        long j4 = chunk2.f15654i.f14442b;
        long j5 = chunk2.f15648a;
        DataSpec dataSpec = chunk2.f15649b;
        StatsDataSource statsDataSource = chunk2.f15654i;
        LoadEventInfo loadEventInfo = new LoadEventInfo(j5, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, j4);
        LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(chunk2.f15650c, this.f15177c, chunk2.d, chunk2.f15651e, chunk2.f15652f, Util.f0(chunk2.g), Util.f0(chunk2.f15653h)), iOException, i2);
        boolean z3 = chunk2 instanceof HlsMediaChunk;
        HlsChunkSource hlsChunkSource = this.f15178e;
        if (z3) {
            fallbackOptions = hlsChunkSource.a(((HlsMediaChunk) chunk2).m);
        } else {
            hlsChunkSource.getClass();
            fallbackOptions = new LoadErrorHandlingPolicy.FallbackOptions(1, 0, hlsChunkSource.t.length(), hlsChunkSource.d(SystemClock.elapsedRealtime()));
        }
        LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.f15182j;
        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = loadErrorHandlingPolicy.c(fallbackOptions, loadErrorInfo);
        hlsChunkSource.getClass();
        if (fallbackSelectionC == null) {
            z = false;
            chunk = null;
        } else {
            int i4 = fallbackSelectionC.f15828a;
            chunk = null;
            long j6 = fallbackSelectionC.f15829b;
            if (i4 != 1) {
                if (i4 != 2) {
                    md.k(pq0.k(i4, "Invalid fallback selection type: "));
                    return null;
                }
                int iB = hlsChunkSource.f15140h.b(chunk2.d);
                if (iB == -1 || (iL = hlsChunkSource.t.l(iB)) == -1) {
                    z = false;
                } else {
                    zN = hlsChunkSource.t.h(iL, j6);
                    z = zN;
                }
            } else if (z3) {
                zN = hlsChunkSource.g.n(((HlsMediaChunk) chunk2).m, j6);
                z = zN;
            } else {
                z = false;
            }
        }
        if (z) {
            if (z2 && j4 == 0) {
                ArrayList arrayList = this.o;
                Preconditions.q(((HlsMediaChunk) arrayList.remove(arrayList.size() - 1)) == chunk2);
                if (arrayList.isEmpty()) {
                    this.R = this.Q;
                } else {
                    ((HlsMediaChunk) Iterables.b(arrayList)).K = true;
                }
            }
            loadErrorAction = Loader.f15832e;
        } else {
            long jA = loadErrorHandlingPolicy.a(loadErrorInfo);
            loadErrorAction = jA != -9223372036854775807L ? new Loader.LoadErrorAction(0, jA) : Loader.f15833f;
        }
        Loader.LoadErrorAction loadErrorAction2 = loadErrorAction;
        int i5 = loadErrorAction2.f15837a;
        boolean z4 = i5 == 0 || i5 == 1;
        this.l.d(loadEventInfo, chunk2.f15650c, this.f15177c, chunk2.d, chunk2.f15651e, chunk2.f15652f, chunk2.g, chunk2.f15653h, iOException, !z4);
        if (!z4) {
            this.v = chunk;
        }
        if (z) {
            if (!this.E) {
                LoadingInfo.Builder builder = new LoadingInfo.Builder();
                builder.f14706a = this.Q;
                a(new LoadingInfo(builder));
                return loadErrorAction2;
            }
            this.d.l(this);
        }
        return loadErrorAction2;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        if (F()) {
            return this.R;
        }
        if (this.V) {
            return Long.MIN_VALUE;
        }
        return D().f15653h;
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.ReleaseCallback
    public final void h() {
        for (HlsSampleQueue hlsSampleQueue : this.w) {
            hlsSampleQueue.z(true);
            DrmSession drmSession = hlsSampleQueue.f15588h;
            if (drmSession != null) {
                drmSession.f(hlsSampleQueue.f15586e);
                hlsSampleQueue.f15588h = null;
                hlsSampleQueue.g = null;
            }
        }
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void j(SeekMap seekMap) {
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void l(Loader.Loadable loadable, long j2, long j3, int i2) {
        LoadEventInfo loadEventInfo;
        Chunk chunk = (Chunk) loadable;
        if (i2 == 0) {
            loadEventInfo = new LoadEventInfo(chunk.f15648a, chunk.f15649b, j2);
        } else {
            long j4 = chunk.f15648a;
            DataSpec dataSpec = chunk.f15649b;
            StatsDataSource statsDataSource = chunk.f15654i;
            loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        }
        this.l.f(loadEventInfo, chunk.f15650c, this.f15177c, chunk.d, chunk.f15651e, chunk.f15652f, chunk.g, chunk.f15653h, i2);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.f15183k.b();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public final void n() {
        this.X = true;
        this.s.post(this.r);
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void q(Loader.Loadable loadable, long j2, long j3) {
        Chunk chunk = (Chunk) loadable;
        this.v = null;
        boolean z = chunk instanceof HlsChunkSource.EncryptionKeyChunk;
        HlsChunkSource hlsChunkSource = this.f15178e;
        if (z) {
            HlsChunkSource.EncryptionKeyChunk encryptionKeyChunk = (HlsChunkSource.EncryptionKeyChunk) chunk;
            hlsChunkSource.o = encryptionKeyChunk.f15655j;
            FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache = hlsChunkSource.f15142j;
            Uri uri = encryptionKeyChunk.f15649b.f14390a;
            byte[] bArr = encryptionKeyChunk.l;
            bArr.getClass();
            LinkedHashMap linkedHashMap = fullSegmentEncryptionKeyCache.f15133a;
            uri.getClass();
        } else {
            hlsChunkSource.getClass();
        }
        long j4 = chunk.f15648a;
        DataSpec dataSpec = chunk.f15649b;
        StatsDataSource statsDataSource = chunk.f15654i;
        LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.f15182j.getClass();
        this.l.c(loadEventInfo, chunk.f15650c, this.f15177c, chunk.d, chunk.f15651e, chunk.f15652f, chunk.g, chunk.f15653h);
        if (this.E) {
            this.d.l(this);
            return;
        }
        LoadingInfo.Builder builder = new LoadingInfo.Builder();
        builder.f14706a = this.Q;
        a(new LoadingInfo(builder));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.media3.exoplayer.hls.HlsSampleStreamWrapper$HlsSampleQueue[]] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.exoplayer.hls.HlsSampleStreamWrapper$HlsSampleQueue[]] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.media3.extractor.TrackOutput] */
    /* JADX WARN: Type inference failed for: r5v4, types: [androidx.media3.exoplayer.hls.HlsSampleStreamWrapper$HlsSampleQueue, androidx.media3.exoplayer.source.SampleQueue] */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.media3.extractor.DiscardingTrackOutput] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // androidx.media3.extractor.ExtractorOutput
    public final TrackOutput r(int i2, int i3) {
        Integer numValueOf = Integer.valueOf(i3);
        Set set = t0;
        boolean zContains = set.contains(numValueOf);
        HashSet hashSet = this.y;
        SparseIntArray sparseIntArray = this.z;
        ?? hlsSampleQueue = 0;
        hlsSampleQueue = 0;
        if (zContains) {
            Preconditions.g(set.contains(Integer.valueOf(i3)));
            int i4 = sparseIntArray.get(i3, -1);
            if (i4 != -1) {
                if (hashSet.add(Integer.valueOf(i3))) {
                    this.x[i4] = i2;
                }
                hlsSampleQueue = this.x[i4] == i2 ? this.w[i4] : z(i2, i3);
            }
        } else {
            int i5 = 0;
            while (true) {
                ?? r1 = this.w;
                if (i5 >= r1.length) {
                    break;
                }
                if (this.x[i5] == i2) {
                    hlsSampleQueue = r1[i5];
                    break;
                }
                i5++;
            }
        }
        if (hlsSampleQueue == 0) {
            if (this.X) {
                return z(i2, i3);
            }
            int length = this.w.length;
            boolean z = i3 == 1 || i3 == 2;
            hlsSampleQueue = new HlsSampleQueue(this.f15179f, this.f15180h, this.f15181i, this.u);
            hlsSampleQueue.t = this.Q;
            if (z) {
                hlsSampleQueue.K = this.Z;
                hlsSampleQueue.B = true;
            }
            long j2 = this.Y;
            if (hlsSampleQueue.H != j2) {
                hlsSampleQueue.H = j2;
                hlsSampleQueue.B = true;
            }
            HlsMediaChunk hlsMediaChunk = this.h0;
            if (hlsMediaChunk != null) {
                hlsSampleQueue.E = hlsMediaChunk.f15152k;
            }
            hlsSampleQueue.f15587f = this;
            int i6 = length + 1;
            int[] iArrCopyOf = Arrays.copyOf(this.x, i6);
            this.x = iArrCopyOf;
            iArrCopyOf[length] = i2;
            HlsSampleQueue[] hlsSampleQueueArr = this.w;
            String str = Util.f14242a;
            ?? CopyOf = Arrays.copyOf(hlsSampleQueueArr, hlsSampleQueueArr.length + 1);
            CopyOf[hlsSampleQueueArr.length] = hlsSampleQueue;
            this.w = (HlsSampleQueue[]) CopyOf;
            boolean[] zArrCopyOf = Arrays.copyOf(this.P, i6);
            this.P = zArrCopyOf;
            zArrCopyOf[length] = z;
            this.N |= z;
            hashSet.add(Integer.valueOf(i3));
            sparseIntArray.append(i3, length);
            if (E(i3) > E(this.B)) {
                this.C = length;
                this.B = i3;
            }
            this.O = Arrays.copyOf(this.O, i6);
        }
        if (i3 != 5) {
            return hlsSampleQueue;
        }
        if (this.A == null) {
            this.A = new EmsgUnwrappingTrackOutput(hlsSampleQueue, this.m);
        }
        return this.A;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        long j2;
        ArrayList arrayList = this.o;
        if (this.V) {
            return Long.MIN_VALUE;
        }
        if (F()) {
            return this.R;
        }
        long jMax = this.Q;
        HlsMediaChunk hlsMediaChunkD = D();
        if (!hlsMediaChunkD.I) {
            hlsMediaChunkD = arrayList.size() > 1 ? (HlsMediaChunk) cj.c(2, arrayList) : null;
        }
        if (hlsMediaChunkD != null) {
            jMax = Math.max(jMax, hlsMediaChunkD.f15653h);
        }
        if (this.D) {
            for (HlsSampleQueue hlsSampleQueue : this.w) {
                synchronized (hlsSampleQueue) {
                    j2 = hlsSampleQueue.w;
                }
                jMax = Math.max(jMax, j2);
            }
        }
        return jMax;
    }

    @Override // androidx.media3.exoplayer.source.SampleQueue.UpstreamFormatChangedListener
    public final void t() {
        this.s.post(this.q);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        boolean z;
        HlsChunkSource hlsChunkSource = this.f15178e;
        List list = this.p;
        Loader loader = this.f15183k;
        if (loader.f15836c == null && !F()) {
            boolean z2 = false;
            if (loader.b()) {
                this.v.getClass();
                if (hlsChunkSource.p == null ? hlsChunkSource.t.n(j2, this.v, list) : false) {
                    loader.a();
                    return;
                }
                return;
            }
            int size = list.size();
            while (size > 0 && hlsChunkSource.c((HlsMediaChunk) list.get(size - 1)) == 2) {
                size--;
            }
            if (size < list.size()) {
                C(size);
            }
            int size2 = (hlsChunkSource.p != null || hlsChunkSource.t.length() < 2) ? list.size() : hlsChunkSource.t.q(j2, list);
            if (size2 < this.o.size()) {
                C(size2);
            }
            if (this.D && this.W != Long.MIN_VALUE) {
                boolean z3 = true;
                int i2 = 0;
                while (true) {
                    HlsSampleQueue[] hlsSampleQueueArr = this.w;
                    if (i2 >= hlsSampleQueueArr.length) {
                        break;
                    }
                    if (this.O[i2] && (this.P[i2] || !this.N)) {
                        HlsSampleQueue hlsSampleQueue = hlsSampleQueueArr[i2];
                        synchronized (hlsSampleQueue) {
                            z = hlsSampleQueue.x != -1;
                        }
                        z3 &= z;
                    }
                    i2++;
                }
                z2 = z3;
            }
            if (z2) {
                this.V = true;
            }
        }
    }

    @Override // androidx.media3.exoplayer.upstream.Loader.Callback
    public final void w(Loader.Loadable loadable, long j2, long j3, boolean z) {
        Chunk chunk = (Chunk) loadable;
        this.v = null;
        long j4 = chunk.f15648a;
        DataSpec dataSpec = chunk.f15649b;
        StatsDataSource statsDataSource = chunk.f15654i;
        LoadEventInfo loadEventInfo = new LoadEventInfo(j4, dataSpec, statsDataSource.f14443c, statsDataSource.d, j2, j3, statsDataSource.f14442b);
        this.f15182j.getClass();
        this.l.b(loadEventInfo, chunk.f15650c, this.f15177c, chunk.d, chunk.f15651e, chunk.f15652f, chunk.g, chunk.f15653h);
        if (z) {
            return;
        }
        if (F() || this.F == 0) {
            J();
        }
        if (this.F > 0) {
            this.d.l(this);
        }
    }

    public final void x() {
        Preconditions.q(this.E);
        this.J.getClass();
        this.K.getClass();
    }

    public final boolean y(int i2) {
        int i3 = i2;
        while (true) {
            ArrayList arrayList = this.o;
            if (i3 >= arrayList.size()) {
                HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) arrayList.get(i2);
                for (int i4 = 0; i4 < this.w.length; i4++) {
                    if (this.w[i4].q() > hlsMediaChunk.e(i4)) {
                        return false;
                    }
                }
                return true;
            }
            if (((HlsMediaChunk) arrayList.get(i3)).M) {
                return false;
            }
            i3++;
        }
    }
}
