package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class StandaloneMediaClock implements MediaClock {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f14798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f14799c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PlaybackParameters f14801f = PlaybackParameters.d;

    public StandaloneMediaClock(Clock clock) {
        this.f14798b = clock;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters a() {
        return this.f14801f;
    }

    public final void b(long j2) {
        this.d = j2;
        if (this.f14799c) {
            this.f14800e = this.f14798b.b();
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void d(PlaybackParameters playbackParameters) {
        if (this.f14799c) {
            b(i());
        }
        this.f14801f = playbackParameters;
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long i() {
        long j2 = this.d;
        if (!this.f14799c) {
            return j2;
        }
        long jB = this.f14798b.b() - this.f14800e;
        PlaybackParameters playbackParameters = this.f14801f;
        return (playbackParameters.f13919a == 1.0f ? Util.R(jB) : jB * ((long) playbackParameters.f13921c)) + j2;
    }
}
