package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;

/* JADX INFO: loaded from: classes.dex */
final class DefaultMediaClock implements MediaClock {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StandaloneMediaClock f14622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PlaybackParametersListener f14623c;
    public Renderer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MediaClock f14624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f14625f = true;
    public boolean g;

    public interface PlaybackParametersListener {
        void h(PlaybackParameters playbackParameters);
    }

    public DefaultMediaClock(PlaybackParametersListener playbackParametersListener, Clock clock) {
        this.f14623c = playbackParametersListener;
        this.f14622b = new StandaloneMediaClock(clock);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters a() {
        MediaClock mediaClock = this.f14624e;
        return mediaClock != null ? mediaClock.a() : this.f14622b.f14801f;
    }

    public final void b(Renderer renderer) throws ExoPlaybackException {
        MediaClock mediaClock;
        MediaClock mediaClockI = renderer.I();
        if (mediaClockI == null || mediaClockI == (mediaClock = this.f14624e)) {
            return;
        }
        if (mediaClock != null) {
            throw new ExoPlaybackException(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f14624e = mediaClockI;
        this.d = renderer;
        ((MediaCodecAudioRenderer) mediaClockI).d(this.f14622b.f14801f);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void d(PlaybackParameters playbackParameters) {
        MediaClock mediaClock = this.f14624e;
        if (mediaClock != null) {
            mediaClock.d(playbackParameters);
            playbackParameters = this.f14624e.a();
        }
        this.f14622b.d(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long i() {
        if (this.f14625f) {
            return this.f14622b.i();
        }
        MediaClock mediaClock = this.f14624e;
        mediaClock.getClass();
        return mediaClock.i();
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final boolean p() {
        if (this.f14625f) {
            this.f14622b.getClass();
            return false;
        }
        MediaClock mediaClock = this.f14624e;
        mediaClock.getClass();
        return mediaClock.p();
    }
}
