package androidx.media3.exoplayer.source;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;

/* JADX INFO: loaded from: classes.dex */
final class TimeOffsetMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaPeriod f15630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15631c;
    public MediaPeriod.Callback d;

    public static final class TimeOffsetSampleStream implements SampleStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SampleStream f15632a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15633b;

        public TimeOffsetSampleStream(SampleStream sampleStream, long j2) {
            this.f15632a = sampleStream;
            this.f15633b = j2;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final void a() {
            this.f15632a.a();
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int b(long j2) {
            return this.f15632a.b(j2 - this.f15633b);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final int c(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            int iC = this.f15632a.c(formatHolder, decoderInputBuffer, i2);
            if (iC == -4) {
                decoderInputBuffer.g += this.f15633b;
            }
            return iC;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public final boolean isReady() {
            return this.f15632a.isReady();
        }
    }

    public TimeOffsetMediaPeriod(MediaPeriod mediaPeriod, long j2) {
        this.f15630b = mediaPeriod;
        this.f15631c = j2;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        LoadingInfo.Builder builder = new LoadingInfo.Builder();
        long j2 = loadingInfo.f14703a;
        builder.f14707b = loadingInfo.f14704b;
        builder.f14708c = loadingInfo.f14705c;
        builder.f14706a = j2 - this.f15631c;
        return this.f15630b.a(new LoadingInfo(builder));
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        long jC = this.f15630b.c();
        if (jC == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jC + this.f15631c;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        long j3 = this.f15631c;
        return this.f15630b.d(j2 - j3, seekParameters) + j3;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        long j3 = this.f15631c;
        return this.f15630b.e(j2 - j3) + j3;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        SampleStream[] sampleStreamArr2 = new SampleStream[sampleStreamArr.length];
        int i2 = 0;
        while (true) {
            SampleStream sampleStream = null;
            if (i2 >= sampleStreamArr.length) {
                break;
            }
            TimeOffsetSampleStream timeOffsetSampleStream = (TimeOffsetSampleStream) sampleStreamArr[i2];
            if (timeOffsetSampleStream != null) {
                sampleStream = timeOffsetSampleStream.f15632a;
            }
            sampleStreamArr2[i2] = sampleStream;
            i2++;
        }
        MediaPeriod mediaPeriod = this.f15630b;
        long j3 = this.f15631c;
        long jF = mediaPeriod.f(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j2 - j3);
        for (int i3 = 0; i3 < sampleStreamArr.length; i3++) {
            SampleStream sampleStream2 = sampleStreamArr2[i3];
            if (sampleStream2 == null) {
                sampleStreamArr[i3] = null;
            } else {
                SampleStream sampleStream3 = sampleStreamArr[i3];
                if (sampleStream3 == null || ((TimeOffsetSampleStream) sampleStream3).f15632a != sampleStream2) {
                    sampleStreamArr[i3] = new TimeOffsetSampleStream(sampleStream2, j3);
                }
            }
        }
        return jF + j3;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        long jG = this.f15630b.g();
        if (jG == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return jG + this.f15631c;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j2) {
        long j3 = this.f15631c;
        long jI = this.f15630b.i(j2 == Long.MIN_VALUE ? Long.MIN_VALUE : j2 - j3);
        if (jI == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jI + j3;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void j(MediaPeriod mediaPeriod) {
        MediaPeriod.Callback callback = this.d;
        callback.getClass();
        callback.j(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() {
        this.f15630b.k();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        MediaPeriod.Callback callback = this.d;
        callback.getClass();
        callback.l(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        return this.f15630b.m();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        this.d = callback;
        this.f15630b.o(this, j2 - this.f15631c);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        return this.f15630b.p();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        long jS = this.f15630b.s();
        if (jS == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return jS + this.f15631c;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) {
        this.f15630b.u(j2 - this.f15631c, z);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        this.f15630b.v(j2 - this.f15631c);
    }
}
