package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;

/* JADX INFO: loaded from: classes.dex */
public interface MediaPeriod extends SequenceableLoader {

    public interface Callback extends SequenceableLoader.Callback<MediaPeriod> {
        void j(MediaPeriod mediaPeriod);
    }

    long d(long j2, SeekParameters seekParameters);

    long e(long j2);

    long f(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j2);

    long g();

    default long i(long j2) {
        return Long.MIN_VALUE;
    }

    void k();

    void o(Callback callback, long j2);

    TrackGroupArray p();

    void u(long j2, boolean z);
}
