package androidx.media3.exoplayer.source;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.base.Strings;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public final class ClippingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaPeriod f15445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f15446c;
    public MediaPeriod.Callback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ClippingSampleStream[] f15447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f15448f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ClippingMediaSource.IllegalClippingException f15451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f15452k;

    public final class ClippingSampleStream implements SampleStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SampleStream f15453a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15454b;

        public ClippingSampleStream(SampleStream sampleStream) {
            this.f15453a = sampleStream;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final void a() {
            this.f15453a.a();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int b(long j2) {
            if (ClippingMediaPeriod.this.q()) {
                return -3;
            }
            return this.f15453a.b(j2);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            ClippingMediaPeriod clippingMediaPeriod = ClippingMediaPeriod.this;
            if (clippingMediaPeriod.q()) {
                return -3;
            }
            boolean z = clippingMediaPeriod.f15452k;
            SampleStream sampleStream = this.f15453a;
            if (z) {
                int iC = sampleStream.c(formatHolder, decoderInputBuffer, i2);
                if (iC != -5) {
                    return iC;
                }
                ClippingMediaPeriod.h(formatHolder, clippingMediaPeriod.f15449h, clippingMediaPeriod.f15450i);
                return -5;
            }
            if (this.f15454b) {
                decoderInputBuffer.f14531b = 4;
                return -4;
            }
            long jS = clippingMediaPeriod.s();
            int iC2 = sampleStream.c(formatHolder, decoderInputBuffer, i2);
            if (clippingMediaPeriod.g != -9223372036854775807L && iC2 != -3) {
                clippingMediaPeriod.g = -9223372036854775807L;
            }
            if (iC2 == -5) {
                ClippingMediaPeriod.h(formatHolder, clippingMediaPeriod.f15449h, clippingMediaPeriod.f15450i);
                return -5;
            }
            long j2 = clippingMediaPeriod.f15450i;
            if (j2 == Long.MIN_VALUE || ((iC2 != -4 || decoderInputBuffer.g < j2) && !(iC2 == -3 && jS == Long.MIN_VALUE && !decoderInputBuffer.f14544f))) {
                return iC2;
            }
            decoderInputBuffer.g();
            decoderInputBuffer.f14531b = 4;
            this.f15454b = true;
            return -4;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final boolean isReady() {
            return !ClippingMediaPeriod.this.q() && this.f15453a.isReady();
        }
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z, long j2, long j3, boolean z2) {
        this.f15445b = mediaPeriod;
        this.f15447e = new ClippingSampleStream[0];
        this.f15448f = z ? j2 : -9223372036854775807L;
        this.g = -9223372036854775807L;
        this.f15446c = z2;
        r(j2, j3);
    }

    public static void h(FormatHolder formatHolder, long j2, long j3) {
        Format format = formatHolder.f14697b;
        format.getClass();
        int i2 = format.K;
        int i3 = format.J;
        if (i3 == 0 && i2 == 0) {
            return;
        }
        if (j2 != 0) {
            i3 = 0;
        }
        if (j3 != Long.MIN_VALUE) {
            i2 = 0;
        }
        Format.Builder builderA = format.a();
        builderA.I = i3;
        builderA.J = i2;
        formatHolder.f14697b = new Format(builderA);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        return this.f15445b.a(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        long jC = this.f15445b.c();
        if (!this.f15452k) {
            if (jC != Long.MIN_VALUE) {
                long j2 = this.f15450i;
                if (j2 == Long.MIN_VALUE || jC < j2) {
                }
            }
            return Long.MIN_VALUE;
        }
        long j3 = this.f15450i;
        if (j3 != Long.MIN_VALUE && jC != Long.MIN_VALUE) {
            return Math.min(j3, jC);
        }
        return jC;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        long j3 = this.f15449h;
        if (j2 == j3) {
            return j3;
        }
        long jK = Util.k(seekParameters.f14796a, 0L, j2 - j3);
        long j4 = seekParameters.f14797b;
        long j5 = this.f15450i;
        long jK2 = Util.k(j4, 0L, j5 == Long.MIN_VALUE ? Long.MAX_VALUE : j5 - j2);
        if (jK != seekParameters.f14796a || jK2 != seekParameters.f14797b) {
            seekParameters = new SeekParameters(jK, jK2);
        }
        return this.f15445b.d(j2, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        this.f15448f = -9223372036854775807L;
        for (ClippingSampleStream clippingSampleStream : this.f15447e) {
            if (clippingSampleStream != null) {
                clippingSampleStream.f15454b = false;
            }
        }
        long jE = this.f15445b.e(j2);
        long j3 = this.f15449h;
        long j4 = this.f15450i;
        long jMax = Math.max(jE, j3);
        return j4 != Long.MIN_VALUE ? Math.min(jMax, j4) : jMax;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        long j3;
        this.f15447e = new ClippingSampleStream[sampleStreamArr.length];
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        for (int i2 = 0; i2 < sampleStreamArr.length; i2++) {
            ClippingSampleStream[] clippingSampleStreamArr = this.f15447e;
            ClippingSampleStream clippingSampleStream = (ClippingSampleStream) sampleStreamArr[i2];
            clippingSampleStreamArr[i2] = clippingSampleStream;
            sampleStreamArr2[i2] = clippingSampleStream != null ? clippingSampleStream.f15453a : null;
        }
        long jF = this.f15445b.f(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j2);
        long j4 = this.f15450i;
        long jMax = Math.max(jF, j2);
        if (j4 != Long.MIN_VALUE) {
            jMax = Math.min(jMax, j4);
        }
        if (q()) {
            if (jF >= j2) {
                if (jF != 0) {
                    int length = exoTrackSelectionArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 < length) {
                            ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i3];
                            if (exoTrackSelection != null) {
                                Format formatS = exoTrackSelection.s();
                                if (!MimeTypes.a(formatS.o, formatS.f13763k)) {
                                }
                            }
                            i3++;
                        }
                    }
                }
                j3 = -9223372036854775807L;
            }
            j3 = jMax;
        } else {
            j3 = -9223372036854775807L;
        }
        this.f15448f = j3;
        for (int i4 = 0; i4 < sampleStreamArr.length; i4++) {
            SampleStream sampleStream = sampleStreamArr2[i4];
            ClippingSampleStream[] clippingSampleStreamArr2 = this.f15447e;
            if (sampleStream == null) {
                clippingSampleStreamArr2[i4] = null;
            } else {
                ClippingSampleStream clippingSampleStream2 = clippingSampleStreamArr2[i4];
                if (clippingSampleStream2 == null || clippingSampleStream2.f15453a != sampleStream) {
                    clippingSampleStreamArr2[i4] = new ClippingSampleStream(sampleStream);
                }
            }
            sampleStreamArr[i4] = this.f15447e[i4];
        }
        return jMax;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        if (q()) {
            long j2 = this.f15448f;
            this.f15448f = -9223372036854775807L;
            this.g = j2;
            long jG = g();
            return jG != -9223372036854775807L ? jG : j2;
        }
        long jG2 = this.f15445b.g();
        if (jG2 != -9223372036854775807L) {
            long j3 = this.f15449h;
            long j4 = this.f15450i;
            long jMax = Math.max(jG2, j3);
            if (j4 != Long.MIN_VALUE) {
                jMax = Math.min(jMax, j4);
            }
            if (jMax != this.g) {
                this.g = jMax;
                return jMax;
            }
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void j(MediaPeriod mediaPeriod) {
        if (this.f15451j != null) {
            return;
        }
        MediaPeriod.Callback callback = this.d;
        callback.getClass();
        callback.j(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() throws ClippingMediaSource.IllegalClippingException {
        ClippingMediaSource.IllegalClippingException illegalClippingException = this.f15451j;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        this.f15445b.k();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        MediaPeriod.Callback callback = this.d;
        callback.getClass();
        callback.l(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.f15445b.m();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        this.d = callback;
        this.f15445b.o(this, j2);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        return this.f15445b.p();
    }

    public final boolean q() {
        return this.f15448f != -9223372036854775807L;
    }

    public final void r(long j2, long j3) {
        this.f15449h = j2;
        this.f15450i = j3;
        if (this.f15446c) {
            long jI = this.f15445b.i(j3);
            if (jI == Long.MIN_VALUE || jI == j3) {
                this.f15452k = jI == j3;
            } else {
                md.k(Strings.b("Period updating end positions not supported, %s!=%s", Long.valueOf(jI), Long.valueOf(j3)));
            }
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        long jS = this.f15445b.s();
        if (!this.f15452k) {
            if (jS != Long.MIN_VALUE) {
                long j2 = this.f15450i;
                if (j2 == Long.MIN_VALUE || jS < j2) {
                }
            }
            return Long.MIN_VALUE;
        }
        long j3 = this.f15450i;
        if (j3 != Long.MIN_VALUE && jS != Long.MIN_VALUE) {
            return Math.min(j3, jS);
        }
        return jS;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) {
        this.f15445b.u(j2, z);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        this.f15445b.v(j2);
    }

    public ClippingMediaPeriod(MediaPeriod mediaPeriod, boolean z, long j2, long j3) {
        this(mediaPeriod, z, j2, j3, false);
    }
}
