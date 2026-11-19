package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class MaskingMediaPeriod implements MediaPeriod, MediaPeriod.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaSource.MediaPeriodId f15501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15502c;
    public final Allocator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaSource f15503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MediaPeriod f15504f;
    public MediaPeriod.Callback g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f15505h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15506i = -9223372036854775807L;

    public interface PrepareListener {
        void a(MediaSource.MediaPeriodId mediaPeriodId, IOException iOException);

        void b(MediaSource.MediaPeriodId mediaPeriodId);
    }

    public MaskingMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j2) {
        this.f15501b = mediaPeriodId;
        this.d = allocator;
        this.f15502c = j2;
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean a(LoadingInfo loadingInfo) {
        MediaPeriod mediaPeriod = this.f15504f;
        return mediaPeriod != null && mediaPeriod.a(loadingInfo);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long c() {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.c();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long d(long j2, SeekParameters seekParameters) {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.d(j2, seekParameters);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long e(long j2) {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.e(j2);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2) {
        long j3 = this.f15506i;
        if (j3 != -9223372036854775807L && j2 == this.f15502c) {
            j2 = j3;
        }
        this.f15506i = -9223372036854775807L;
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.f(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j2);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long g() {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.g();
    }

    public final void h(MediaSource.MediaPeriodId mediaPeriodId) {
        long j2 = this.f15506i;
        if (j2 == -9223372036854775807L) {
            j2 = this.f15502c;
        }
        MediaSource mediaSource = this.f15503e;
        mediaSource.getClass();
        MediaPeriod mediaPeriodC = mediaSource.c(mediaPeriodId, this.d, j2);
        this.f15504f = mediaPeriodC;
        if (this.g != null) {
            mediaPeriodC.o(this, j2);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final long i(long j2) {
        MediaPeriod mediaPeriod = this.f15504f;
        if (mediaPeriod != null) {
            return mediaPeriod.i(j2);
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
    public final void j(MediaPeriod mediaPeriod) {
        MediaPeriod.Callback callback = this.g;
        String str = Util.f14242a;
        callback.j(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void k() throws IOException {
        try {
            MediaPeriod mediaPeriod = this.f15504f;
            if (mediaPeriod != null) {
                mediaPeriod.k();
                return;
            }
            MediaSource mediaSource = this.f15503e;
            if (mediaSource != null) {
                mediaSource.n();
            }
        } catch (IOException e2) {
            throw e2;
        }
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
    public final void l(SequenceableLoader sequenceableLoader) {
        MediaPeriod.Callback callback = this.g;
        String str = Util.f14242a;
        callback.l(this);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final boolean m() {
        MediaPeriod mediaPeriod = this.f15504f;
        return mediaPeriod != null && mediaPeriod.m();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void o(MediaPeriod.Callback callback, long j2) {
        this.g = callback;
        MediaPeriod mediaPeriod = this.f15504f;
        if (mediaPeriod != null) {
            long j3 = this.f15506i;
            if (j3 == -9223372036854775807L) {
                j3 = this.f15502c;
            }
            mediaPeriod.o(this, j3);
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final TrackGroupArray p() {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.p();
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final long s() {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        return mediaPeriod.s();
    }

    @Override // androidx.media3.exoplayer.source.MediaPeriod
    public final void u(long j2, boolean z) {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        mediaPeriod.u(j2, z);
    }

    @Override // androidx.media3.exoplayer.source.SequenceableLoader
    public final void v(long j2) {
        MediaPeriod mediaPeriod = this.f15504f;
        String str = Util.f14242a;
        mediaPeriod.v(j2);
    }
}
