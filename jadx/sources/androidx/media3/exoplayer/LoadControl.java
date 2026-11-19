package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;

/* JADX INFO: loaded from: classes.dex */
public interface LoadControl {

    public static final class Parameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlayerId f14698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Timeline f14699b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f14700c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f14701e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f14702f;
        public final long g;

        public Parameters(PlayerId playerId, Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long j2, long j3, float f2, boolean z, boolean z2, long j4, long j5) {
            this.f14698a = playerId;
            this.f14699b = timeline;
            this.f14700c = mediaPeriodId;
            this.d = j3;
            this.f14701e = f2;
            this.f14702f = z2;
            this.g = j4;
        }
    }

    static {
        new MediaSource.MediaPeriodId(new Object());
    }

    default boolean a(Parameters parameters) {
        throw new IllegalStateException("shouldStartPlayback not implemented");
    }

    default boolean b() {
        throw new IllegalStateException("retainBackBufferFromKeyframe not implemented");
    }

    default void c(Parameters parameters, ExoTrackSelection[] exoTrackSelectionArr) {
        throw new IllegalStateException("onTracksSelected not implemented");
    }

    default long d() {
        throw new IllegalStateException("getBackBufferDurationUs not implemented");
    }

    default void e(PlayerId playerId) {
        throw new IllegalStateException("onPrepared not implemented");
    }

    default void f(PlayerId playerId) {
        throw new IllegalStateException("onReleased not implemented");
    }

    default boolean g(Parameters parameters) {
        throw new IllegalStateException("shouldContinueLoading not implemented");
    }

    default boolean h() {
        Log.g("shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }

    default void i(PlayerId playerId) {
        throw new IllegalStateException("onStopped not implemented");
    }

    Allocator j(PlayerId playerId);
}
