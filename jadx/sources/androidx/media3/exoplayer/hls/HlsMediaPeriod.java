package androidx.media3.exoplayer.hls;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsMultivariantPlaylist;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker;
import androidx.media3.exoplayer.hls.playlist.HlsRedundantGroup;
import androidx.media3.exoplayer.source.CompositeSequenceableLoaderFactory;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.primitives.Ints;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class HlsMediaPeriod implements MediaPeriod, HlsPlaylistTracker.PlaylistEventListener {
    public int A;
    public SequenceableLoader B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HlsExtractorFactory f15153b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HlsPlaylistTracker f15154c;
    public final HlsDataSourceFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TransferListener f15155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CmcdConfiguration f15156f;
    public final DrmSessionManager g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DrmSessionEventListener.EventDispatcher f15157h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15158i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MediaSourceEventListener.EventDispatcher f15159j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Allocator f15160k;
    public final CompositeSequenceableLoaderFactory n;
    public final boolean o;
    public final int p;
    public final boolean q;
    public final PlayerId r;
    public final long t;
    public final Supplier u;
    public MediaPeriod.Callback v;
    public int w;
    public TrackGroupArray x;
    public final HlsSampleStreamWrapper.Callback s = new SampleStreamWrapperCallback();
    public final IdentityHashMap l = new IdentityHashMap();
    public final TimestampAdjusterProvider m = new TimestampAdjusterProvider();
    public HlsSampleStreamWrapper[] y = new HlsSampleStreamWrapper[0];
    public HlsSampleStreamWrapper[] z = new HlsSampleStreamWrapper[0];
    public long C = Long.MIN_VALUE;

    public class SampleStreamWrapperCallback implements HlsSampleStreamWrapper.Callback {
        public SampleStreamWrapperCallback() {
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public final void b() {
            HlsMediaPeriod hlsMediaPeriod = HlsMediaPeriod.this;
            int i2 = hlsMediaPeriod.w - 1;
            hlsMediaPeriod.w = i2;
            if (i2 > 0) {
                return;
            }
            int i3 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper : hlsMediaPeriod.y) {
                hlsSampleStreamWrapper.x();
                i3 += hlsSampleStreamWrapper.J.f15636a;
            }
            TrackGroup[] trackGroupArr = new TrackGroup[i3];
            int i4 = 0;
            for (HlsSampleStreamWrapper hlsSampleStreamWrapper2 : hlsMediaPeriod.y) {
                hlsSampleStreamWrapper2.x();
                int i5 = hlsSampleStreamWrapper2.J.f15636a;
                int i6 = 0;
                while (i6 < i5) {
                    hlsSampleStreamWrapper2.x();
                    trackGroupArr[i4] = hlsSampleStreamWrapper2.J.a(i6);
                    i6++;
                    i4++;
                }
            }
            hlsMediaPeriod.x = new TrackGroupArray(trackGroupArr);
            hlsMediaPeriod.v.j(hlsMediaPeriod);
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public final void l(SequenceableLoader sequenceableLoader) {
            HlsMediaPeriod hlsMediaPeriod = HlsMediaPeriod.this;
            hlsMediaPeriod.v.l(hlsMediaPeriod);
        }

        @Override // androidx.media3.exoplayer.hls.HlsSampleStreamWrapper.Callback
        public final void n(Uri uri) {
            HlsMediaPeriod.this.f15154c.h(uri);
        }
    }

    public HlsMediaPeriod(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsDataSourceFactory hlsDataSourceFactory, TransferListener transferListener, CmcdConfiguration cmcdConfiguration, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher, LoadErrorHandlingPolicy loadErrorHandlingPolicy, MediaSourceEventListener.EventDispatcher eventDispatcher2, Allocator allocator, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, boolean z, int i2, boolean z2, PlayerId playerId, long j2, Supplier<ReleasableExecutor> supplier) {
        this.f15153b = hlsExtractorFactory;
        this.f15154c = hlsPlaylistTracker;
        this.d = hlsDataSourceFactory;
        this.f15155e = transferListener;
        this.f15156f = cmcdConfiguration;
        this.g = drmSessionManager;
        this.f15157h = eventDispatcher;
        this.f15158i = loadErrorHandlingPolicy;
        this.f15159j = eventDispatcher2;
        this.f15160k = allocator;
        this.n = compositeSequenceableLoaderFactory;
        this.o = z;
        this.p = i2;
        this.q = z2;
        this.r = playerId;
        this.t = j2;
        this.u = supplier;
        this.B = compositeSequenceableLoaderFactory.empty();
    }

    public static Format l(Format format, Format format2, boolean z) {
        Metadata metadata;
        int i2;
        String str;
        String str2;
        ImmutableList immutableList;
        int i3;
        int i4;
        String str3;
        ImmutableList immutableListX = ImmutableList.x();
        if (format2 != null) {
            str2 = format2.f13763k;
            metadata = format2.l;
            i3 = format2.G;
            i2 = format2.f13758e;
            i4 = format2.f13759f;
            str = format2.d;
            str3 = format2.f13756b;
            immutableList = format2.f13757c;
        } else {
            String strW = Util.w(1, format.f13763k);
            metadata = format.l;
            if (z) {
                i3 = format.G;
                i2 = format.f13758e;
                i4 = format.f13759f;
                str = format.d;
                str3 = format.f13756b;
                str2 = strW;
                immutableList = format.f13757c;
            } else {
                i2 = 0;
                str = null;
                str2 = strW;
                immutableList = immutableListX;
                i3 = -1;
                i4 = 0;
                str3 = null;
            }
        }
        String strE = MimeTypes.e(str2);
        int i5 = z ? format.f13760h : -1;
        int i6 = z ? format.f13761i : -1;
        Format.Builder builder = new Format.Builder();
        builder.f13764a = format.f13755a;
        builder.f13765b = str3;
        builder.f13766c = ImmutableList.t(immutableList);
        builder.m = MimeTypes.p(format.n);
        builder.n = MimeTypes.p(strE);
        builder.f13771j = str2;
        builder.f13772k = metadata;
        builder.f13769h = i5;
        builder.f13770i = i6;
        builder.F = i3;
        builder.f13767e = i2;
        builder.f13768f = i4;
        builder.d = str;
        return new Format(builder);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        if (this.x != null) {
            return this.B.a(loadingInfo);
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.y) {
            if (!hlsSampleStreamWrapper.E) {
                LoadingInfo.Builder builder = new LoadingInfo.Builder();
                builder.f14706a = hlsSampleStreamWrapper.Q;
                hlsSampleStreamWrapper.a(new LoadingInfo(builder));
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public final boolean b(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        boolean z2;
        boolean zN;
        int iL;
        boolean z3 = false;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.y) {
            HlsChunkSource hlsChunkSource = hlsSampleStreamWrapper.f15178e;
            HlsRedundantGroup[] hlsRedundantGroupArr = hlsChunkSource.f15138e;
            HlsPlaylistTracker hlsPlaylistTracker = hlsChunkSource.g;
            int length = hlsRedundantGroupArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    if (hlsRedundantGroupArr[i2].equals(hlsPlaylistTracker.p(uri))) {
                        LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionC = !z ? hlsSampleStreamWrapper.f15182j.c(hlsChunkSource.a(uri), loadErrorInfo) : null;
                        hlsChunkSource.q = uri;
                        if (fallbackSelectionC != null) {
                            int i3 = fallbackSelectionC.f15828a;
                            long j2 = fallbackSelectionC.f15829b;
                            zN = true;
                            if (i3 == 1) {
                                zN = hlsPlaylistTracker.n(uri, j2);
                            } else {
                                if (i3 != 2) {
                                    md.k(pq0.k(i3, "Invalid fallback selection type: "));
                                    return false;
                                }
                                int i4 = 0;
                                while (true) {
                                    HlsRedundantGroup[] hlsRedundantGroupArr2 = hlsChunkSource.f15138e;
                                    z2 = false;
                                    if (i4 >= hlsRedundantGroupArr2.length) {
                                        i4 = -1;
                                        break;
                                    }
                                    if (hlsRedundantGroupArr2[i4].equals(hlsPlaylistTracker.p(uri))) {
                                        break;
                                    }
                                    i4++;
                                }
                                if (i4 != -1 && (iL = hlsChunkSource.t.l(i4)) != -1 && hlsChunkSource.t.h(iL, j2) && hlsPlaylistTracker.n(uri, j2)) {
                                }
                            }
                            z3 |= zN;
                        }
                        zN = z2;
                        z3 |= zN;
                    } else {
                        i2++;
                    }
                }
                z2 = false;
                zN = z2;
                z3 |= zN;
            }
        }
        this.v.l(this);
        return z3;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        return this.B.c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.z) {
            if (hlsSampleStreamWrapper.B == 2) {
                HlsChunkSource hlsChunkSource = hlsSampleStreamWrapper.f15178e;
                HlsPlaylistTracker hlsPlaylistTracker = hlsChunkSource.g;
                int iD = hlsChunkSource.t.d();
                HlsRedundantGroup[] hlsRedundantGroupArr = hlsChunkSource.f15138e;
                HlsMediaPlaylist hlsMediaPlaylistR = (iD >= hlsRedundantGroupArr.length || iD == -1) ? null : hlsPlaylistTracker.r(hlsRedundantGroupArr[hlsChunkSource.t.r()].c(), true);
                if (hlsMediaPlaylistR == null) {
                    break;
                }
                ImmutableList immutableList = hlsMediaPlaylistR.r;
                if (immutableList.isEmpty()) {
                    break;
                }
                long jF = hlsMediaPlaylistR.f15235h - hlsPlaylistTracker.f();
                long j3 = j2 - jF;
                int iD2 = Util.d(immutableList, Long.valueOf(j3), true);
                long j4 = ((HlsMediaPlaylist.Segment) immutableList.get(iD2)).f15266f;
                return seekParameters.a(j3, j4, (!hlsMediaPlaylistR.f15292c || iD2 == immutableList.size() - 1) ? j4 : ((HlsMediaPlaylist.Segment) immutableList.get(iD2 + 1)).f15266f) + jF;
            }
        }
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) throws Throwable {
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr = this.z;
        if (hlsSampleStreamWrapperArr.length > 0) {
            boolean zK = hlsSampleStreamWrapperArr[0].K(j2, false);
            int i2 = 1;
            while (true) {
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.z;
                if (i2 >= hlsSampleStreamWrapperArr2.length) {
                    break;
                }
                hlsSampleStreamWrapperArr2[i2].K(j2, zK);
                i2++;
            }
            if (zK) {
                this.m.f15198a.clear();
            }
        }
        return j2;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x027b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0284  */
    /* JADX WARN: Code duplicated, block: B:121:0x0288  */
    /* JADX WARN: Code duplicated, block: B:123:0x028e  */
    /* JADX WARN: Code duplicated, block: B:154:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:196:0x028a A[SYNTHETIC] */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) throws Throwable {
        IdentityHashMap identityHashMap;
        SampleStream[] sampleStreamArr2;
        HlsChunkSource hlsChunkSource;
        HlsChunkSource hlsChunkSource2;
        boolean z;
        int[] iArr;
        int i2;
        int i3;
        SampleStream[] sampleStreamArr3;
        int i4;
        HlsChunkSource hlsChunkSource3;
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr;
        HlsSampleStreamWrapper hlsSampleStreamWrapper;
        boolean z2;
        boolean z3;
        int i5;
        int i6;
        SampleStream[] sampleStreamArr4;
        int i7;
        int[] iArr2;
        int i8;
        int[] iArr3 = new int[exoTrackSelectionArr.length];
        int[] iArr4 = new int[exoTrackSelectionArr.length];
        int i9 = 0;
        while (true) {
            int length = exoTrackSelectionArr.length;
            identityHashMap = this.l;
            if (i9 >= length) {
                break;
            }
            SampleStream sampleStream = sampleStreamArr[i9];
            iArr3[i9] = sampleStream == null ? -1 : ((Integer) identityHashMap.get(sampleStream)).intValue();
            iArr4[i9] = -1;
            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i9];
            if (exoTrackSelection != null) {
                TrackGroup trackGroupM = exoTrackSelection.m();
                int i10 = 0;
                while (true) {
                    HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr2 = this.y;
                    if (i10 >= hlsSampleStreamWrapperArr2.length) {
                        break;
                    }
                    HlsSampleStreamWrapper hlsSampleStreamWrapper2 = hlsSampleStreamWrapperArr2[i10];
                    hlsSampleStreamWrapper2.x();
                    if (hlsSampleStreamWrapper2.J.b(trackGroupM) != -1) {
                        iArr4[i9] = i10;
                        break;
                    }
                    i10++;
                }
            }
            i9++;
        }
        identityHashMap.clear();
        int length2 = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr5 = new SampleStream[length2];
        int length3 = exoTrackSelectionArr.length;
        SampleStream[] sampleStreamArr6 = new SampleStream[length3];
        int length4 = exoTrackSelectionArr.length;
        ExoTrackSelection[] exoTrackSelectionArr2 = new ExoTrackSelection[length4];
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr3 = new HlsSampleStreamWrapper[this.y.length];
        int i11 = length3;
        int i12 = 0;
        int i13 = 0;
        boolean z4 = false;
        while (i12 < this.y.length) {
            int i14 = length2;
            int i15 = 0;
            while (true) {
                sampleStreamArr2 = sampleStreamArr5;
                if (i15 >= exoTrackSelectionArr.length) {
                    break;
                }
                sampleStreamArr6[i15] = iArr3[i15] == i12 ? sampleStreamArr[i15] : null;
                exoTrackSelectionArr2[i15] = iArr4[i15] == i12 ? exoTrackSelectionArr[i15] : null;
                i15++;
                sampleStreamArr5 = sampleStreamArr2;
            }
            HlsSampleStreamWrapper hlsSampleStreamWrapper3 = this.y[i12];
            Loader loader = hlsSampleStreamWrapper3.f15183k;
            int i16 = i12;
            HlsChunkSource hlsChunkSource4 = hlsSampleStreamWrapper3.f15178e;
            ArrayList arrayList = hlsSampleStreamWrapper3.o;
            hlsSampleStreamWrapper3.x();
            int i17 = hlsSampleStreamWrapper3.F;
            SampleStream[] sampleStreamArr7 = sampleStreamArr6;
            int i18 = 0;
            while (i18 < length4) {
                HlsSampleStream hlsSampleStream = (HlsSampleStream) sampleStreamArr7[i18];
                if (hlsSampleStream == null || (exoTrackSelectionArr2[i18] != null && zArr[i18])) {
                    i8 = i18;
                } else {
                    i8 = i18;
                    hlsSampleStreamWrapper3.F--;
                    if (hlsSampleStream.f15175c != -1) {
                        HlsSampleStreamWrapper hlsSampleStreamWrapper4 = hlsSampleStream.f15174b;
                        int i19 = hlsSampleStream.f15173a;
                        hlsSampleStreamWrapper4.x();
                        hlsSampleStreamWrapper4.L.getClass();
                        int i20 = hlsSampleStreamWrapper4.L[i19];
                        if (i20 >= 0) {
                            Preconditions.q(hlsSampleStreamWrapper4.O[i20]);
                            hlsSampleStreamWrapper4.O[i20] = false;
                        }
                        hlsSampleStream.f15175c = -1;
                    }
                    sampleStreamArr7[i8] = null;
                }
                i18 = i8 + 1;
                loader = loader;
            }
            Loader loader2 = loader;
            boolean z5 = true;
            if (z4) {
                hlsChunkSource = hlsChunkSource4;
                hlsChunkSource2 = hlsChunkSource;
                z = true;
            } else {
                if (hlsSampleStreamWrapper3.T) {
                    if (i17 != 0) {
                        hlsChunkSource = hlsChunkSource4;
                    }
                    hlsChunkSource = hlsChunkSource4;
                    hlsChunkSource2 = hlsChunkSource;
                    z = true;
                } else {
                    hlsChunkSource = hlsChunkSource4;
                    if (j2 != hlsSampleStreamWrapper3.Q) {
                        hlsChunkSource2 = hlsChunkSource;
                        z = true;
                    }
                }
                hlsChunkSource2 = hlsChunkSource;
                z = false;
            }
            ExoTrackSelection exoTrackSelection2 = hlsChunkSource2.t;
            HlsRedundantGroup[] hlsRedundantGroupArr = hlsChunkSource2.f15138e;
            boolean z6 = z;
            HlsPlaylistTracker hlsPlaylistTracker = hlsChunkSource2.g;
            ExoTrackSelection[] exoTrackSelectionArr3 = exoTrackSelectionArr2;
            int i21 = 0;
            ExoTrackSelection exoTrackSelection3 = exoTrackSelection2;
            while (i21 < length4) {
                int i22 = i21;
                ExoTrackSelection exoTrackSelection4 = exoTrackSelectionArr3[i22];
                if (exoTrackSelection4 == null) {
                    i7 = length4;
                    iArr2 = iArr3;
                } else {
                    i7 = length4;
                    iArr2 = iArr3;
                    int iB = hlsSampleStreamWrapper3.J.b(exoTrackSelection4.m());
                    if (iB == hlsSampleStreamWrapper3.M) {
                        hlsPlaylistTracker.c(hlsRedundantGroupArr[hlsChunkSource2.t.r()].c());
                        hlsChunkSource2.t = exoTrackSelection4;
                        exoTrackSelection3 = exoTrackSelection4;
                    }
                    if (sampleStreamArr7[i22] == null) {
                        hlsSampleStreamWrapper3.F++;
                        HlsSampleStream hlsSampleStream2 = new HlsSampleStream(hlsSampleStreamWrapper3, iB);
                        sampleStreamArr7[i22] = hlsSampleStream2;
                        zArr2[i22] = z5;
                        if (hlsSampleStreamWrapper3.L != null) {
                            hlsSampleStream2.d();
                            int i23 = hlsSampleStreamWrapper3.L[iB];
                            if (!z6 && i23 >= 0) {
                                HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue = hlsSampleStreamWrapper3.w[i23];
                                z6 = (hlsSampleQueue.q() == 0 || hlsSampleQueue.B(j2, z5)) ? false : true;
                            }
                        }
                    }
                }
                i21 = i22 + 1;
                length4 = i7;
                iArr3 = iArr2;
                z5 = true;
            }
            int i24 = length4;
            int[] iArr5 = iArr3;
            if (hlsSampleStreamWrapper3.F == 0) {
                hlsPlaylistTracker.c(hlsRedundantGroupArr[hlsChunkSource2.t.r()].c());
                hlsChunkSource2.p = null;
                hlsSampleStreamWrapper3.H = null;
                hlsSampleStreamWrapper3.S = true;
                arrayList.clear();
                if (loader2.b()) {
                    if (hlsSampleStreamWrapper3.D) {
                        for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue2 : hlsSampleStreamWrapper3.w) {
                            hlsSampleQueue2.j();
                        }
                    }
                    loader2.a();
                } else {
                    hlsSampleStreamWrapper3.J();
                }
                HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr4 = hlsSampleStreamWrapperArr3;
                hlsSampleStreamWrapper = hlsSampleStreamWrapper3;
                i5 = i11;
                hlsSampleStreamWrapperArr = hlsSampleStreamWrapperArr4;
                iArr = iArr4;
                i3 = i14;
                sampleStreamArr3 = sampleStreamArr2;
                i4 = i16;
                hlsChunkSource3 = hlsChunkSource2;
            } else {
                boolean z7 = true;
                if (arrayList.isEmpty() || Objects.equals(exoTrackSelection3, exoTrackSelection2)) {
                    iArr = iArr4;
                    i2 = i11;
                    i3 = i14;
                    sampleStreamArr3 = sampleStreamArr2;
                    i4 = i16;
                    hlsChunkSource3 = hlsChunkSource2;
                    hlsSampleStreamWrapperArr = hlsSampleStreamWrapperArr3;
                    hlsSampleStreamWrapper = hlsSampleStreamWrapper3;
                } else {
                    if (hlsSampleStreamWrapper3.T) {
                        iArr = iArr4;
                        i2 = i11;
                        i3 = i14;
                        sampleStreamArr3 = sampleStreamArr2;
                        i4 = i16;
                        hlsChunkSource3 = hlsChunkSource2;
                        hlsSampleStreamWrapperArr = hlsSampleStreamWrapperArr3;
                        hlsSampleStreamWrapper = hlsSampleStreamWrapper3;
                    } else {
                        long j3 = j2 < 0 ? -j2 : 0L;
                        HlsMediaChunk hlsMediaChunkD = hlsSampleStreamWrapper3.D();
                        ExoTrackSelection exoTrackSelection5 = exoTrackSelection3;
                        iArr = iArr4;
                        i2 = i11;
                        i3 = i14;
                        sampleStreamArr3 = sampleStreamArr2;
                        i4 = i16;
                        hlsChunkSource3 = hlsChunkSource2;
                        hlsSampleStreamWrapperArr = hlsSampleStreamWrapperArr3;
                        hlsSampleStreamWrapper = hlsSampleStreamWrapper3;
                        exoTrackSelection5.g(j2, j3, -9223372036854775807L, hlsSampleStreamWrapper3.p, hlsChunkSource2.b(hlsMediaChunkD, j2));
                        if (exoTrackSelection5.r() != hlsChunkSource3.f15140h.b(hlsMediaChunkD.d)) {
                            z7 = true;
                        } else {
                            z7 = true;
                        }
                    }
                    hlsSampleStreamWrapper.S = z7;
                    z2 = z7;
                    z3 = z2;
                    if (z3) {
                        hlsSampleStreamWrapper.K(j2, z2);
                        i6 = 0;
                        i5 = i2;
                        while (i6 < i5) {
                            if (sampleStreamArr7[i6] != null) {
                                zArr2[i6] = z7;
                            }
                            i6++;
                            z7 = true;
                        }
                    } else {
                        i5 = i2;
                    }
                    z6 = z3;
                }
                z2 = z4;
                z3 = z6;
                if (z3) {
                    hlsSampleStreamWrapper.K(j2, z2);
                    i6 = 0;
                    i5 = i2;
                    while (i6 < i5) {
                        if (sampleStreamArr7[i6] != null) {
                            zArr2[i6] = z7;
                        }
                        i6++;
                        z7 = true;
                    }
                } else {
                    i5 = i2;
                }
                z6 = z3;
            }
            ArrayList arrayList2 = hlsSampleStreamWrapper.t;
            arrayList2.clear();
            for (int i25 = 0; i25 < i5; i25++) {
                SampleStream sampleStream2 = sampleStreamArr7[i25];
                if (sampleStream2 != null) {
                    arrayList2.add((HlsSampleStream) sampleStream2);
                }
            }
            hlsSampleStreamWrapper.T = true;
            int i26 = 0;
            boolean z8 = false;
            while (i26 < exoTrackSelectionArr.length) {
                SampleStream sampleStream3 = sampleStreamArr7[i26];
                int i27 = i4;
                if (iArr[i26] == i27) {
                    sampleStream3.getClass();
                    sampleStreamArr4 = sampleStreamArr3;
                    sampleStreamArr4[i26] = sampleStream3;
                    identityHashMap.put(sampleStream3, Integer.valueOf(i27));
                    z8 = true;
                } else {
                    sampleStreamArr4 = sampleStreamArr3;
                    if (iArr5[i26] == i27) {
                        Preconditions.q(sampleStream3 == null);
                    }
                }
                i26++;
                sampleStreamArr3 = sampleStreamArr4;
                i4 = i27;
            }
            SampleStream[] sampleStreamArr8 = sampleStreamArr3;
            int i28 = i4;
            int i29 = i13;
            if (z8) {
                hlsSampleStreamWrapperArr[i29] = hlsSampleStreamWrapper;
                i13 = i29 + 1;
                if (i29 == 0) {
                    hlsChunkSource3.n = true;
                    if (z6) {
                        this.m.f15198a.clear();
                        z4 = true;
                    } else {
                        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr5 = this.z;
                        if (hlsSampleStreamWrapperArr5.length == 0 || hlsSampleStreamWrapper != hlsSampleStreamWrapperArr5[0]) {
                            this.m.f15198a.clear();
                            z4 = true;
                        }
                    }
                } else {
                    hlsChunkSource3.n = i28 < this.A;
                }
            }
            i12 = i28 + 1;
            sampleStreamArr5 = sampleStreamArr8;
            hlsSampleStreamWrapperArr3 = hlsSampleStreamWrapperArr;
            sampleStreamArr6 = sampleStreamArr7;
            iArr4 = iArr;
            exoTrackSelectionArr2 = exoTrackSelectionArr3;
            length4 = i24;
            iArr3 = iArr5;
            i11 = i5;
            length2 = i3;
        }
        System.arraycopy(sampleStreamArr5, 0, sampleStreamArr, 0, length2);
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr6 = (HlsSampleStreamWrapper[]) Util.T(i13, hlsSampleStreamWrapperArr3);
        this.z = hlsSampleStreamWrapperArr6;
        ImmutableList immutableListU = ImmutableList.u(hlsSampleStreamWrapperArr6);
        this.B = this.n.a(immutableListU, Lists.d(new a(), immutableListU));
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker.PlaylistEventListener
    public final void h() {
        for (final HlsSampleStreamWrapper hlsSampleStreamWrapper : this.y) {
            Loader loader = hlsSampleStreamWrapper.f15183k;
            HlsChunkSource hlsChunkSource = hlsSampleStreamWrapper.f15178e;
            ArrayList arrayList = hlsSampleStreamWrapper.o;
            if (!arrayList.isEmpty()) {
                final HlsMediaChunk hlsMediaChunk = (HlsMediaChunk) Iterables.b(arrayList);
                int iC = hlsChunkSource.c(hlsMediaChunk);
                int i2 = hlsMediaChunk.o;
                if (iC == 1) {
                    if (!hlsMediaChunk.f()) {
                        Preconditions.q(i2 != -1);
                        HlsMediaPlaylist hlsMediaPlaylistR = hlsChunkSource.g.r(hlsMediaChunk.m, false);
                        hlsMediaPlaylistR.getClass();
                        ImmutableList immutableList = hlsMediaPlaylistR.r;
                        int i3 = (int) (hlsMediaChunk.f15657j - hlsMediaPlaylistR.f15238k);
                        hlsMediaChunk.L = i3 < 0 ? 0L : ((HlsMediaPlaylist.Part) (i3 < immutableList.size() ? ((HlsMediaPlaylist.Segment) immutableList.get(i3)).n : hlsMediaPlaylistR.s).get(i2)).d;
                    }
                } else if (iC == 0) {
                    hlsSampleStreamWrapper.s.post(new Runnable() { // from class: androidx.media3.exoplayer.hls.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            hlsSampleStreamWrapper.d.n(hlsMediaChunk.m);
                        }
                    });
                } else if (iC == 2 && !hlsSampleStreamWrapper.V && loader.b()) {
                    loader.a();
                }
            }
        }
        this.v.l(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j2) throws Throwable {
        this.C = j2;
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.y) {
            hlsSampleStreamWrapper.W = j2;
            if (hlsSampleStreamWrapper.D) {
                for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                    hlsSampleQueue.C(j2);
                }
            }
        }
        return j2;
    }

    public final HlsSampleStreamWrapper j(String str, int i2, HlsRedundantGroup[] hlsRedundantGroupArr, Format[] formatArr, Format format, List list, Map map, long j2) throws Throwable {
        HlsChunkSource hlsChunkSource = new HlsChunkSource(this.f15153b, this.f15154c, hlsRedundantGroupArr, formatArr, this.d, this.f15155e, this.m, this.t, list, this.r, this.f15156f);
        Supplier supplier = this.u;
        HlsSampleStreamWrapper hlsSampleStreamWrapper = new HlsSampleStreamWrapper(str, i2, this.s, hlsChunkSource, map, this.f15160k, j2, format, this.g, this.f15157h, this.f15158i, this.f15159j, this.p, supplier != null ? (ReleasableExecutor) supplier.get() : null);
        long j3 = this.C;
        hlsSampleStreamWrapper.W = j3;
        if (hlsSampleStreamWrapper.D) {
            for (HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : hlsSampleStreamWrapper.w) {
                hlsSampleQueue.C(j3);
            }
        }
        return hlsSampleStreamWrapper;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() throws ParserException {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.y) {
            hlsSampleStreamWrapper.H();
            if (hlsSampleStreamWrapper.V && !hlsSampleStreamWrapper.E) {
                throw ParserException.a(null, "Loading finished before preparation is complete.");
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.B.m();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v10 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Type inference failed for: r26v0, types: [androidx.media3.exoplayer.hls.HlsMediaPeriod, androidx.media3.exoplayer.hls.playlist.HlsPlaylistTracker$PlaylistEventListener] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v37, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.util.Map] */
    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) throws Throwable {
        ?? map;
        ArrayList arrayList;
        ?? r25;
        boolean z;
        ImmutableList immutableList;
        ImmutableList immutableList2;
        String str;
        HlsExtractorFactory hlsExtractorFactory;
        HlsSampleStreamWrapper[] hlsSampleStreamWrapperArr;
        HashSet hashSet;
        int i2;
        ArrayList arrayList2;
        HashSet hashSet2;
        int i3;
        ?? r7;
        boolean z2;
        int i4;
        boolean z3;
        ?? r26;
        ?? r8;
        List list;
        this.v = callback;
        HlsPlaylistTracker hlsPlaylistTracker = this.f15154c;
        hlsPlaylistTracker.k(this);
        HlsMultivariantPlaylist hlsMultivariantPlaylistG = hlsPlaylistTracker.g();
        hlsMultivariantPlaylistG.getClass();
        if (this.q) {
            List list2 = hlsMultivariantPlaylistG.m;
            ArrayList arrayList3 = new ArrayList(list2);
            map = new HashMap();
            int i5 = 0;
            while (i5 < arrayList3.size()) {
                DrmInitData drmInitData = (DrmInitData) list2.get(i5);
                String str2 = drmInitData.d;
                i5++;
                int i6 = i5;
                while (i6 < arrayList3.size()) {
                    DrmInitData drmInitData2 = (DrmInitData) arrayList3.get(i6);
                    String str3 = drmInitData2.d;
                    if (TextUtils.equals(str3, str2)) {
                        String str4 = drmInitData.d;
                        Preconditions.q(str4 == null || str3 == null || TextUtils.equals(str4, str3));
                        if (str4 != null) {
                            str3 = str4;
                        }
                        DrmInitData.SchemeData[] schemeDataArr = drmInitData.f13745b;
                        DrmInitData.SchemeData[] schemeDataArr2 = drmInitData2.f13745b;
                        String str5 = Util.f14242a;
                        Object[] objArrCopyOf = Arrays.copyOf(schemeDataArr, schemeDataArr.length + schemeDataArr2.length);
                        System.arraycopy(schemeDataArr2, 0, objArrCopyOf, schemeDataArr.length, schemeDataArr2.length);
                        drmInitData = new DrmInitData(str3, (DrmInitData.SchemeData[]) objArrCopyOf);
                        arrayList3.remove(i6);
                    } else {
                        i6++;
                    }
                }
                map.put(str2, drmInitData);
            }
        } else {
            map = Collections.EMPTY_MAP;
        }
        ?? r9 = map;
        ImmutableList immutableListE = hlsPlaylistTracker.e(0);
        immutableListE.getClass();
        ImmutableList immutableListE2 = hlsPlaylistTracker.e(2);
        immutableListE2.getClass();
        ImmutableList immutableListE3 = hlsPlaylistTracker.e(3);
        immutableListE3.getClass();
        boolean zIsEmpty = immutableListE.isEmpty();
        this.w = 0;
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        HlsExtractorFactory hlsExtractorFactory2 = this.f15153b;
        boolean z4 = this.o;
        if (zIsEmpty) {
            arrayList = arrayList5;
            r25 = r9;
            z = z4;
            immutableList = immutableListE2;
            immutableList2 = immutableListE3;
            str = "ID3";
            hlsExtractorFactory = hlsExtractorFactory2;
        } else {
            Format format = hlsMultivariantPlaylistG.f15279j;
            List list3 = hlsMultivariantPlaylistG.f15280k;
            int size = immutableListE.size();
            int[] iArr = new int[size];
            int i7 = 0;
            int i8 = 0;
            for (int i9 = 0; i9 < immutableListE.size(); i9++) {
                Format format2 = ((HlsRedundantGroup) immutableListE.get(i9)).f15305a.f15308a;
                int i10 = format2.w;
                String str6 = format2.f13763k;
                if (i10 > 0 || Util.w(2, str6) != null) {
                    int i11 = i8;
                    iArr[i9] = 2;
                    i7++;
                    i8 = i11;
                } else if (Util.w(1, str6) != null) {
                    iArr[i9] = 1;
                    i8++;
                } else {
                    iArr[i9] = -1;
                }
            }
            int i12 = i8;
            if (i7 > 0) {
                z3 = false;
                i4 = i7;
                z2 = true;
            } else if (i12 < size) {
                int i13 = size - i12;
                z2 = false;
                i4 = i13;
                z3 = true;
            } else {
                z2 = false;
                i4 = size;
                z3 = false;
            }
            HlsRedundantGroup[] hlsRedundantGroupArr = new HlsRedundantGroup[i4];
            Format[] formatArr = new Format[i4];
            int[] iArr2 = new int[i4];
            int i14 = 0;
            boolean z5 = z2;
            int i15 = 0;
            while (i15 < immutableListE.size()) {
                if (z5) {
                    list = list3;
                    if (iArr[i15] == 2) {
                    }
                    i15++;
                    list3 = list;
                } else {
                    list = list3;
                }
                if (!z3 || iArr[i15] != 1) {
                    HlsRedundantGroup hlsRedundantGroup = (HlsRedundantGroup) immutableListE.get(i15);
                    hlsRedundantGroupArr[i14] = hlsRedundantGroup;
                    formatArr[i14] = hlsRedundantGroup.f15305a.f15308a;
                    iArr2[i14] = i15;
                    i14++;
                }
                i15++;
                list3 = list;
            }
            List list4 = list3;
            String str7 = formatArr[0].f13763k;
            int iV = Util.v(2, str7);
            int iV2 = Util.v(1, str7);
            boolean z6 = (iV2 == 1 || (iV2 == 0 && immutableListE2.isEmpty())) && iV <= 1 && iV2 + iV > 0;
            arrayList = arrayList5;
            immutableList2 = immutableListE3;
            str = "ID3";
            immutableList = immutableListE2;
            hlsExtractorFactory = hlsExtractorFactory2;
            z = z4;
            HlsSampleStreamWrapper hlsSampleStreamWrapperJ = j("main", (z5 || iV2 <= 0) ? 0 : 1, hlsRedundantGroupArr, formatArr, format, list4, r9, j2);
            arrayList4.add(hlsSampleStreamWrapperJ);
            arrayList.add(iArr2);
            if (z && z6) {
                ArrayList arrayList6 = new ArrayList();
                if (iV > 0) {
                    Format[] formatArr2 = new Format[i4];
                    int i16 = 0;
                    while (i16 < i4) {
                        r8 = r9;
                        Format format3 = formatArr[i16];
                        Format[] formatArr3 = formatArr;
                        String strW = Util.w(2, format3.f13763k);
                        String strE = MimeTypes.e(strW);
                        Format.Builder builder = new Format.Builder();
                        builder.f13764a = format3.f13755a;
                        builder.f13765b = format3.f13756b;
                        builder.f13766c = ImmutableList.t(format3.f13757c);
                        builder.m = MimeTypes.p(format3.n);
                        builder.n = MimeTypes.p(strE);
                        builder.f13771j = strW;
                        builder.f13772k = format3.l;
                        builder.f13769h = format3.f13760h;
                        builder.f13770i = format3.f13761i;
                        builder.u = format3.v;
                        builder.v = format3.w;
                        builder.y = format3.z;
                        builder.f13767e = format3.f13758e;
                        builder.f13768f = format3.f13759f;
                        builder.D = format3.E;
                        formatArr2[i16] = new Format(builder);
                        i16++;
                        formatArr = formatArr3;
                        r8 = r8;
                    }
                    r8 = r9;
                    Format[] formatArr4 = formatArr;
                    r26 = r8;
                    arrayList6.add(new TrackGroup("main", formatArr2));
                    if (iV2 > 0 && (format != null || immutableList.isEmpty())) {
                        Format.Builder builderA = l(formatArr4[0], format, false).a();
                        builderA.l = "main";
                        arrayList6.add(new TrackGroup("main:audio", new Format(builderA)));
                    }
                    if (list4 != null) {
                        for (int i17 = 0; i17 < list4.size(); i17++) {
                            String strK = pq0.k(i17, "main:cc:");
                            Format.Builder builderA2 = hlsExtractorFactory.a((Format) list4.get(i17)).a();
                            builderA2.l = "main";
                            arrayList6.add(new TrackGroup(strK, new Format(builderA2)));
                        }
                    }
                } else {
                    r26 = r9;
                    Format[] formatArr5 = new Format[i4];
                    for (int i18 = 0; i18 < i4; i18++) {
                        formatArr5[i18] = l(formatArr[i18], format, true);
                    }
                    arrayList6.add(new TrackGroup("main", formatArr5));
                }
                Format.Builder builder2 = new Format.Builder();
                builder2.f13764a = str;
                builder2.n = MimeTypes.p("application/id3");
                builder2.l = "main";
                TrackGroup trackGroup = new TrackGroup("main:id3", new Format(builder2));
                arrayList6.add(trackGroup);
                hlsSampleStreamWrapperJ.I((TrackGroup[]) arrayList6.toArray(new TrackGroup[0]), arrayList6.indexOf(trackGroup));
                r25 = r26;
            } else {
                r25 = r9;
            }
        }
        ArrayList arrayList7 = new ArrayList(immutableList.size());
        ArrayList arrayList8 = new ArrayList(immutableList.size());
        ArrayList arrayList9 = new ArrayList(immutableList.size());
        HashSet hashSet3 = new HashSet();
        int i19 = 0;
        ?? r27 = r25;
        while (i19 < immutableList.size()) {
            ImmutableList immutableList3 = immutableList;
            String str8 = ((HlsRedundantGroup) immutableList3.get(i19)).f15305a.f15310c;
            str8.getClass();
            if (hashSet3.add(str8)) {
                arrayList7.clear();
                arrayList8.clear();
                arrayList9.clear();
                boolean z7 = true;
                for (int i20 = 0; i20 < immutableList3.size(); i20++) {
                    if (str8.equals(((HlsRedundantGroup) immutableList3.get(i20)).f15305a.f15310c)) {
                        HlsRedundantGroup hlsRedundantGroup2 = (HlsRedundantGroup) immutableList3.get(i20);
                        Format format4 = hlsRedundantGroup2.f15305a.f15308a;
                        arrayList9.add(Integer.valueOf(i20));
                        arrayList7.add(hlsRedundantGroup2);
                        arrayList8.add(format4);
                        z7 &= Util.v(1, format4.f13763k) == 1;
                    }
                }
                String strConcat = "audio:".concat(str8);
                String str9 = Util.f14242a;
                immutableList = immutableList3;
                arrayList2 = arrayList9;
                hashSet2 = hashSet3;
                i3 = i19;
                r7 = r27;
                HlsSampleStreamWrapper hlsSampleStreamWrapperJ2 = j(strConcat, 1, (HlsRedundantGroup[]) arrayList7.toArray(new HlsRedundantGroup[0]), (Format[]) arrayList8.toArray(new Format[0]), null, Collections.EMPTY_LIST, r7, j2);
                arrayList.add(Ints.g(arrayList2));
                arrayList4.add(hlsSampleStreamWrapperJ2);
                if (z && z7) {
                    String strConcat2 = strConcat.concat(":id3");
                    Format.Builder builder3 = new Format.Builder();
                    builder3.f13764a = str;
                    builder3.n = MimeTypes.p("application/id3");
                    builder3.l = strConcat;
                    hlsSampleStreamWrapperJ2.I(new TrackGroup[]{new TrackGroup(strConcat, (Format[]) arrayList8.toArray(new Format[0])), new TrackGroup(strConcat2, new Format(builder3))}, 1);
                }
            } else {
                arrayList2 = arrayList9;
                hashSet2 = hashSet3;
                i3 = i19;
                immutableList = immutableList3;
                r7 = r27;
            }
            i19 = i3 + 1;
            r27 = r7;
            arrayList9 = arrayList2;
            hashSet3 = hashSet2;
        }
        ?? r10 = r27;
        this.A = arrayList4.size();
        ArrayList arrayList10 = new ArrayList(immutableList2.size());
        ArrayList arrayList11 = new ArrayList(immutableList2.size());
        ArrayList arrayList12 = new ArrayList(immutableList2.size());
        HashSet hashSet4 = new HashSet();
        int i21 = 0;
        while (i21 < immutableList2.size()) {
            immutableList2 = immutableList2;
            String str10 = ((HlsRedundantGroup) immutableList2.get(i21)).f15305a.f15310c;
            str10.getClass();
            if (hashSet4.add(str10)) {
                arrayList10.clear();
                arrayList11.clear();
                arrayList12.clear();
                for (int i22 = 0; i22 < immutableList2.size(); i22++) {
                    if (str10.equals(((HlsRedundantGroup) immutableList2.get(i22)).f15305a.f15310c)) {
                        HlsRedundantGroup hlsRedundantGroup3 = (HlsRedundantGroup) immutableList2.get(i22);
                        arrayList12.add(Integer.valueOf(i22));
                        arrayList10.add(hlsRedundantGroup3);
                        arrayList11.add(hlsRedundantGroup3.f15305a.f15308a);
                    }
                }
                String strConcat3 = "subtitle:".concat(str10);
                Format[] formatArr6 = (Format[]) arrayList11.toArray(new Format[0]);
                String str11 = Util.f14242a;
                hashSet = hashSet4;
                i2 = i21;
                HlsSampleStreamWrapper hlsSampleStreamWrapperJ3 = j(strConcat3, 3, (HlsRedundantGroup[]) arrayList10.toArray(new HlsRedundantGroup[0]), formatArr6, null, ImmutableList.x(), r10, j2);
                arrayList.add(Ints.g(arrayList12));
                arrayList4.add(hlsSampleStreamWrapperJ3);
                int length = formatArr6.length;
                Format[] formatArr7 = new Format[length];
                for (int i23 = 0; i23 < length; i23++) {
                    formatArr7[i23] = hlsExtractorFactory.a(formatArr6[i23]);
                }
                hlsSampleStreamWrapperJ3.I(new TrackGroup[]{new TrackGroup(strConcat3, formatArr7)}, new int[0]);
            } else {
                hashSet = hashSet4;
                i2 = i21;
            }
            i21 = i2 + 1;
            hashSet4 = hashSet;
        }
        this.y = (HlsSampleStreamWrapper[]) arrayList4.toArray(new HlsSampleStreamWrapper[0]);
        this.w = this.y.length;
        int i24 = 0;
        while (true) {
            int i25 = this.A;
            hlsSampleStreamWrapperArr = this.y;
            if (i24 >= i25) {
                break;
            }
            hlsSampleStreamWrapperArr[i24].f15178e.n = true;
            i24++;
        }
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : hlsSampleStreamWrapperArr) {
            if (!hlsSampleStreamWrapper.E) {
                LoadingInfo.Builder builder4 = new LoadingInfo.Builder();
                builder4.f14706a = hlsSampleStreamWrapper.Q;
                hlsSampleStreamWrapper.a(new LoadingInfo(builder4));
            }
        }
        this.z = this.y;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        TrackGroupArray trackGroupArray = this.x;
        trackGroupArray.getClass();
        return trackGroupArray;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        return this.B.s();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) throws Throwable {
        for (HlsSampleStreamWrapper hlsSampleStreamWrapper : this.z) {
            if (hlsSampleStreamWrapper.D && !hlsSampleStreamWrapper.F()) {
                int length = hlsSampleStreamWrapper.w.length;
                for (int i2 = 0; i2 < length; i2++) {
                    hlsSampleStreamWrapper.w[i2].i(z, hlsSampleStreamWrapper.O[i2], j2);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        this.B.v(j2);
    }
}
