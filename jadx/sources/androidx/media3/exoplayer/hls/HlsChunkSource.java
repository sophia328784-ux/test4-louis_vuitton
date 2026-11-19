package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UriUtil;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.HlsRedundantGroup;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import androidx.media3.exoplayer.source.chunk.BaseMediaChunkIterator;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.DataChunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.trackselection.BaseTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import defpackage.b21;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class HlsChunkSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HlsExtractorFactory f15135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataSource f15136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataSource f15137c;
    public final TimestampAdjusterProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HlsRedundantGroup[] f15138e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Format[] f15139f;
    public final HlsPlaylistTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TrackGroup f15140h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f15141i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PlayerId f15143k;
    public final CmcdConfiguration l;
    public final long m;
    public boolean n;
    public BehindLiveWindowException p;
    public Uri q;
    public Uri r;
    public boolean s;
    public ExoTrackSelection t;
    public long v = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final FullSegmentEncryptionKeyCache f15142j = new FullSegmentEncryptionKeyCache(4);
    public byte[] o = Util.f14243b;
    public long u = -9223372036854775807L;

    public static final class EncryptionKeyChunk extends DataChunk {
        public byte[] l;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i2, Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i2, obj, bArr);
        }

        @Override // androidx.media3.exoplayer.source.chunk.DataChunk
        public final void b(int i2, byte[] bArr) {
            this.l = Arrays.copyOf(bArr, i2);
        }
    }

    public static final class HlsChunkHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Chunk f15144a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15145b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Uri f15146c = null;
    }

    public static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final List f15147e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f15148f;

        public HlsMediaPlaylistSegmentIterator(String str, long j2, List<HlsMediaPlaylist.SegmentBase> list) {
            super(0L, list.size() - 1);
            this.f15148f = j2;
            this.f15147e = list;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public final long a() {
            long j2 = this.d;
            if (j2 < this.f15646b || j2 > this.f15647c) {
                b21.x();
                return 0L;
            }
            return this.f15148f + ((HlsMediaPlaylist.SegmentBase) this.f15147e.get((int) j2)).f15266f;
        }

        @Override // androidx.media3.exoplayer.source.chunk.MediaChunkIterator
        public final long b() {
            long j2 = this.d;
            if (j2 < this.f15646b || j2 > this.f15647c) {
                b21.x();
                return 0L;
            }
            HlsMediaPlaylist.SegmentBase segmentBase = (HlsMediaPlaylist.SegmentBase) this.f15147e.get((int) j2);
            return this.f15148f + segmentBase.f15266f + segmentBase.d;
        }
    }

    public static final class InitializationTrackSelection extends BaseTrackSelection {
        public int g;

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            int i2 = 0;
            Format format = trackGroup.d[iArr[0]];
            while (i2 < this.f15683b) {
                if (this.d[i2] == format) {
                    this.g = i2;
                }
                i2++;
            }
            i2 = -1;
            this.g = i2;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public final int d() {
            return this.g;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public final void g(long j2, long j3, long j4, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (b(this.g, jElapsedRealtime)) {
                for (int i2 = this.f15683b - 1; i2 >= 0; i2--) {
                    if (!b(i2, jElapsedRealtime)) {
                        this.g = i2;
                        return;
                    }
                }
                r81.b();
            }
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public final Object j() {
            return null;
        }

        @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
        public final int t() {
            return 0;
        }
    }

    public static final class SegmentBaseHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HlsMediaPlaylist.SegmentBase f15149a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15151c;
        public final boolean d;

        public SegmentBaseHolder(HlsMediaPlaylist.SegmentBase segmentBase, long j2, int i2) {
            this.f15149a = segmentBase;
            this.f15150b = j2;
            this.f15151c = i2;
            this.d = (segmentBase instanceof HlsMediaPlaylist.Part) && ((HlsMediaPlaylist.Part) segmentBase).n;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsRedundantGroup[] hlsRedundantGroupArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, long j2, List<Format> list, PlayerId playerId, CmcdConfiguration cmcdConfiguration) {
        this.f15135a = hlsExtractorFactory;
        this.g = hlsPlaylistTracker;
        this.f15138e = hlsRedundantGroupArr;
        this.f15139f = formatArr;
        this.d = timestampAdjusterProvider;
        this.m = j2;
        this.f15141i = list;
        this.f15143k = playerId;
        this.l = cmcdConfiguration;
        DataSource dataSourceA = hlsDataSourceFactory.a();
        this.f15136b = dataSourceA;
        if (transferListener != null) {
            dataSourceA.c(transferListener);
        }
        this.f15137c = hlsDataSourceFactory.a();
        this.f15140h = new TrackGroup(formatArr);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < hlsRedundantGroupArr.length; i2++) {
            if ((formatArr[i2].f13759f & 16384) == 0) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        this.t = new InitializationTrackSelection(this.f15140h, Ints.g(arrayList));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SegmentBaseHolder f(HlsMediaPlaylist hlsMediaPlaylist, long j2, int i2) {
        long j3 = hlsMediaPlaylist.f15238k;
        ImmutableList immutableList = hlsMediaPlaylist.s;
        int i3 = (int) (j2 - j3);
        ImmutableList immutableList2 = hlsMediaPlaylist.r;
        if (i3 == immutableList2.size()) {
            if (i2 == -1) {
                i2 = 0;
            }
            if (i2 < immutableList.size()) {
                return new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) immutableList.get(i2), j2, i2);
            }
            return null;
        }
        HlsMediaPlaylist.Segment segment = (HlsMediaPlaylist.Segment) immutableList2.get(i3);
        if (i2 == -1) {
            return new SegmentBaseHolder(segment, j2, -1);
        }
        if (i2 < segment.n.size()) {
            return new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) segment.n.get(i2), j2, i2);
        }
        int i4 = i3 + 1;
        if (i4 < immutableList2.size()) {
            return new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) immutableList2.get(i4), j2 + 1, -1);
        }
        if (immutableList.isEmpty()) {
            return null;
        }
        return new SegmentBaseHolder((HlsMediaPlaylist.SegmentBase) immutableList.get(0), j2 + 1, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LoadErrorHandlingPolicy.FallbackOptions a(Uri uri) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        HlsPlaylistTracker hlsPlaylistTracker = this.g;
        HlsRedundantGroup hlsRedundantGroupP = hlsPlaylistTracker.p(uri);
        hlsRedundantGroupP.getClass();
        HashMap map = hlsRedundantGroupP.f15306b;
        int size = map.size();
        UnmodifiableIterator it = ImmutableSet.s(map.values()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (hlsPlaylistTracker.a((Uri) it.next(), jElapsedRealtime)) {
                i2++;
            }
        }
        return new LoadErrorHandlingPolicy.FallbackOptions(size, i2, this.t.length(), d(jElapsedRealtime));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final MediaChunkIterator[] b(HlsMediaChunk hlsMediaChunk, long j2) {
        List listX;
        HlsChunkSource hlsChunkSource = this;
        HlsMediaChunk hlsMediaChunk2 = hlsMediaChunk;
        int iB = hlsMediaChunk2 == null ? -1 : hlsChunkSource.f15140h.b(hlsMediaChunk2.d);
        int length = hlsChunkSource.t.length();
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[length];
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            int iF = hlsChunkSource.t.f(i2);
            Uri uriC = hlsChunkSource.f15138e[iF].c();
            HlsPlaylistTracker hlsPlaylistTracker = hlsChunkSource.g;
            if (hlsPlaylistTracker.i(uriC)) {
                HlsMediaPlaylist hlsMediaPlaylistR = hlsPlaylistTracker.r(uriC, z);
                hlsMediaPlaylistR.getClass();
                long jF = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker.f();
                Pair pairE = hlsChunkSource.e(hlsMediaChunk2, iF != iB ? true : z, hlsMediaPlaylistR, jF, j2);
                long jLongValue = ((Long) pairE.first).longValue();
                int iIntValue = ((Integer) pairE.second).intValue();
                String str = hlsMediaPlaylistR.f15290a;
                long j3 = hlsMediaPlaylistR.f15238k;
                ImmutableList immutableList = hlsMediaPlaylistR.s;
                ImmutableList immutableList2 = hlsMediaPlaylistR.r;
                int i3 = (int) (jLongValue - j3);
                if (i3 < 0 || immutableList2.size() < i3) {
                    listX = ImmutableList.x();
                } else {
                    ArrayList arrayList = new ArrayList();
                    if (i3 < immutableList2.size()) {
                        if (iIntValue != -1) {
                            HlsMediaPlaylist.Segment segment = (HlsMediaPlaylist.Segment) immutableList2.get(i3);
                            if (iIntValue == 0) {
                                arrayList.add(segment);
                            } else if (iIntValue < segment.n.size()) {
                                ImmutableList immutableList3 = segment.n;
                                arrayList.addAll(immutableList3.subList(iIntValue, immutableList3.size()));
                            }
                            i3++;
                        }
                        arrayList.addAll(immutableList2.subList(i3, immutableList2.size()));
                        iIntValue = 0;
                    }
                    if (hlsMediaPlaylistR.n != -9223372036854775807L) {
                        if (iIntValue == -1) {
                            iIntValue = 0;
                        }
                        if (iIntValue < immutableList.size()) {
                            arrayList.addAll(immutableList.subList(iIntValue, immutableList.size()));
                        }
                    }
                    listX = Collections.unmodifiableList(arrayList);
                }
                mediaChunkIteratorArr[i2] = new HlsMediaPlaylistSegmentIterator(str, jF, listX);
            } else {
                mediaChunkIteratorArr[i2] = MediaChunkIterator.f15658a;
            }
            i2++;
            hlsChunkSource = this;
            hlsMediaChunk2 = hlsMediaChunk;
            z = false;
        }
        return mediaChunkIteratorArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int c(HlsMediaChunk hlsMediaChunk) {
        int i2 = hlsMediaChunk.o;
        if (i2 == -1) {
            return 1;
        }
        HlsMediaPlaylist hlsMediaPlaylistR = this.g.r(hlsMediaChunk.m, false);
        hlsMediaPlaylistR.getClass();
        ImmutableList immutableList = hlsMediaPlaylistR.r;
        int i3 = (int) (hlsMediaChunk.f15657j - hlsMediaPlaylistR.f15238k);
        if (i3 < 0) {
            return 1;
        }
        ImmutableList immutableList2 = i3 < immutableList.size() ? ((HlsMediaPlaylist.Segment) immutableList.get(i3)).n : hlsMediaPlaylistR.s;
        if (i2 >= immutableList2.size()) {
            return 2;
        }
        HlsMediaPlaylist.Part part = (HlsMediaPlaylist.Part) immutableList2.get(i2);
        if (part.n) {
            return 0;
        }
        Uri uri = Uri.parse(UriUtil.c(hlsMediaPlaylistR.f15290a, part.f15263b));
        Uri uriBuild = hlsMediaChunk.f15649b.f14390a;
        if (this.l != null) {
            Joiner joiner = CmcdData.f15758f;
            if (uriBuild.isHierarchical() && uriBuild.getQueryParameter("CMCD") != null) {
                Uri.Builder builderBuildUpon = uriBuild.buildUpon();
                builderBuildUpon.clearQuery();
                for (String str : uriBuild.getQueryParameterNames()) {
                    if (!str.equals("CMCD")) {
                        Iterator<String> it = uriBuild.getQueryParameters(str).iterator();
                        while (it.hasNext()) {
                            builderBuildUpon.appendQueryParameter(str, it.next());
                        }
                    }
                }
                uriBuild = builderBuildUpon.build();
            }
        }
        return Objects.equals(uri, uriBuild) ? 1 : 2;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0020  */
    public final int d(long j2) {
        ExoTrackSelection exoTrackSelection = this.t;
        int length = exoTrackSelection.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int iF = exoTrackSelection.f(i3);
            if (exoTrackSelection.b(i3, j2)) {
                i2++;
            } else {
                if (this.g.o(this.f15138e[iF], j2)) {
                    i2++;
                }
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00b8  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Pair e(HlsMediaChunk hlsMediaChunk, boolean z, HlsMediaPlaylist hlsMediaPlaylist, long j2, long j3) {
        int i2;
        ImmutableList immutableList;
        boolean z2 = true;
        if (hlsMediaChunk != null) {
            long j4 = hlsMediaChunk.f15657j;
            int i3 = hlsMediaChunk.o;
            if (!z) {
                if (!hlsMediaChunk.I) {
                    return new Pair(Long.valueOf(j4), Integer.valueOf(i3));
                }
                if (i3 == -1) {
                    j4 = j4 != -1 ? j4 + 1 : -1L;
                }
                return new Pair(Long.valueOf(j4), Integer.valueOf(i3 != -1 ? i3 + 1 : -1));
            }
        }
        long j5 = hlsMediaPlaylist.u;
        long j6 = hlsMediaPlaylist.f15238k;
        ImmutableList immutableList2 = hlsMediaPlaylist.s;
        ImmutableList immutableList3 = hlsMediaPlaylist.r;
        long j7 = j2 + j5;
        long j8 = (hlsMediaChunk == null || this.s) ? j3 : hlsMediaChunk.g;
        if (!hlsMediaPlaylist.o && j8 >= j7) {
            return new Pair(Long.valueOf(j6 + ((long) immutableList3.size())), -1);
        }
        long j9 = j8 - j2;
        Long lValueOf = Long.valueOf(j9);
        HlsPlaylistTracker hlsPlaylistTracker = this.g;
        if (hlsPlaylistTracker.m() && hlsMediaChunk != null) {
            z2 = false;
        }
        int iD = Util.d(immutableList3, lValueOf, z2);
        long j10 = ((long) iD) + j6;
        if (!hlsPlaylistTracker.m()) {
            return new Pair(Long.valueOf(j10), -1);
        }
        if (iD < 0) {
            i2 = -1;
        } else {
            if (immutableList3.isEmpty()) {
                immutableList = immutableList2;
            } else {
                HlsMediaPlaylist.Segment segment = (HlsMediaPlaylist.Segment) immutableList3.get(iD);
                if (j9 < segment.f15266f + segment.d) {
                    immutableList = segment.n;
                } else {
                    immutableList = immutableList2;
                }
            }
            for (int i4 = 0; i4 < immutableList.size(); i4++) {
                HlsMediaPlaylist.Part part = (HlsMediaPlaylist.Part) immutableList.get(i4);
                if (j9 < part.f15266f + part.d) {
                    if (part.m) {
                        j10 += (immutableList != immutableList2 || immutableList3.isEmpty()) ? 0L : 1L;
                        i2 = i4;
                    }
                }
            }
            i2 = -1;
        }
        return new Pair(Long.valueOf(j10), Integer.valueOf(i2));
    }

    public final Chunk g(Uri uri, int i2, boolean z, CmcdData.Factory factory) {
        if (uri == null) {
            return null;
        }
        FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache = this.f15142j;
        byte[] bArr = (byte[]) fullSegmentEncryptionKeyCache.f15133a.remove(uri);
        if (bArr != null) {
            return null;
        }
        DataSpec.Builder builder = new DataSpec.Builder();
        builder.f14397a = uri;
        builder.f14403i = 1;
        DataSpec dataSpecA = builder.a();
        if (factory != null) {
            if (z) {
                factory.f15804j = "i";
            }
            dataSpecA = factory.a().a(dataSpecA);
        }
        return new EncryptionKeyChunk(this.f15137c, dataSpecA, this.f15139f[i2], this.t.t(), this.t.j(), this.o);
    }
}
