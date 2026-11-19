package androidx.media3.exoplayer;

import android.os.SystemClock;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.TrackSelectorResult;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class PlaybackInfo {
    public static final MediaSource.MediaPeriodId u = new MediaSource.MediaPeriodId(new Object());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline f14754a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaSource.MediaPeriodId f14755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f14756c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExoPlaybackException f14758f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TrackGroupArray f14759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TrackSelectorResult f14760i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f14761j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaSource.MediaPeriodId f14762k;
    public final boolean l;
    public final int m;
    public final int n;
    public final PlaybackParameters o;
    public final boolean p;
    public volatile long q;
    public volatile long r;
    public volatile long s;
    public volatile long t;

    public PlaybackInfo(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, int i2, ExoPlaybackException exoPlaybackException, boolean z, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, List<Metadata> list, MediaSource.MediaPeriodId mediaPeriodId2, boolean z2, int i3, int i4, PlaybackParameters playbackParameters, long j4, long j5, long j6, long j7, boolean z3) {
        this.f14754a = timeline;
        this.f14755b = mediaPeriodId;
        this.f14756c = j2;
        this.d = j3;
        this.f14757e = i2;
        this.f14758f = exoPlaybackException;
        this.g = z;
        this.f14759h = trackGroupArray;
        this.f14760i = trackSelectorResult;
        this.f14761j = list;
        this.f14762k = mediaPeriodId2;
        this.l = z2;
        this.m = i3;
        this.n = i4;
        this.o = playbackParameters;
        this.q = j4;
        this.r = j5;
        this.s = j6;
        this.t = j7;
        this.p = z3;
    }

    public static PlaybackInfo k(TrackSelectorResult trackSelectorResult) {
        Timeline timeline = Timeline.f13952a;
        TrackGroupArray trackGroupArray = TrackGroupArray.d;
        ImmutableList immutableListX = ImmutableList.x();
        PlaybackParameters playbackParameters = PlaybackParameters.d;
        MediaSource.MediaPeriodId mediaPeriodId = u;
        return new PlaybackInfo(timeline, mediaPeriodId, -9223372036854775807L, 0L, 1, null, false, trackGroupArray, trackSelectorResult, immutableListX, mediaPeriodId, false, 1, 0, playbackParameters, 0L, 0L, 0L, 0L, false);
    }

    public final PlaybackInfo a() {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, l(), SystemClock.elapsedRealtime(), this.p);
    }

    public final PlaybackInfo b(boolean z) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, z, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo c(MediaSource.MediaPeriodId mediaPeriodId) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, mediaPeriodId, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo d(MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, long j4, long j5, TrackGroupArray trackGroupArray, TrackSelectorResult trackSelectorResult, List list) {
        return new PlaybackInfo(this.f14754a, mediaPeriodId, j3, j4, this.f14757e, this.f14758f, this.g, trackGroupArray, trackSelectorResult, list, this.f14762k, this.l, this.m, this.n, this.o, this.q, j5, j2, SystemClock.elapsedRealtime(), this.p);
    }

    public final PlaybackInfo e(int i2, int i3, boolean z) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, z, i2, i3, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo f(ExoPlaybackException exoPlaybackException) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, exoPlaybackException, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo g(PlaybackParameters playbackParameters) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, playbackParameters, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo h(int i2) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, i2, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final PlaybackInfo i(boolean z) {
        return new PlaybackInfo(this.f14754a, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, z);
    }

    public final PlaybackInfo j(Timeline timeline) {
        return new PlaybackInfo(timeline, this.f14755b, this.f14756c, this.d, this.f14757e, this.f14758f, this.g, this.f14759h, this.f14760i, this.f14761j, this.f14762k, this.l, this.m, this.n, this.o, this.q, this.r, this.s, this.t, this.p);
    }

    public final long l() {
        long j2;
        long j3;
        if (!m()) {
            return this.s;
        }
        do {
            j2 = this.t;
            j3 = this.s;
        } while (j2 != this.t);
        return Util.R(Util.f0(j3) + ((long) ((SystemClock.elapsedRealtime() - j2) * this.o.f13919a)));
    }

    public final boolean m() {
        return this.f14757e == 3 && this.l && this.n == 0;
    }
}
