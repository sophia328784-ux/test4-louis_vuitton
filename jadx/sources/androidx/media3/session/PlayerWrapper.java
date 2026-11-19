package androidx.media3.session;

import android.os.Looper;
import android.os.SystemClock;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.ForwardingPlayer;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class PlayerWrapper extends ForwardingPlayer {

    public static final class CurrentMediaItemOnlyTimeline extends Timeline {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Object f17518j = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaItem f17519e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f17520f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MediaItem.LiveConfiguration f17521h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f17522i;

        public CurrentMediaItemOnlyTimeline(PlayerWrapper playerWrapper) {
            this.f17519e = playerWrapper.O0();
            this.f17520f = playerWrapper.U0();
            this.g = playerWrapper.S0();
            this.f17521h = playerWrapper.V0() ? MediaItem.LiveConfiguration.f13833f : null;
            this.f17522i = Util.R(playerWrapper.m0());
        }

        @Override // androidx.media3.common.Timeline
        public final int b(Object obj) {
            return f17518j != obj ? -1 : 0;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
            period.getClass();
            AdPlaybackState adPlaybackState = AdPlaybackState.g;
            Object obj = f17518j;
            period.i(obj, obj, 0, this.f17522i, 0L, adPlaybackState, false);
            period.f13963f = false;
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public final int h() {
            return 1;
        }

        @Override // androidx.media3.common.Timeline
        public final Object l(int i2) {
            return f17518j;
        }

        @Override // androidx.media3.common.Timeline
        public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
            window.b(f17518j, this.f17519e, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.f17520f, this.g, this.f17521h, 0L, this.f17522i, 0, 0, 0L);
            window.f13975k = false;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public final int o() {
            return 1;
        }
    }

    public PlayerWrapper(Player player) {
        super(player);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final MediaMetadata A() {
        c1();
        return this.f13773a.A();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void A0(int i2, List list) {
        c1();
        super.A0(i2, list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void B(Surface surface) {
        c1();
        super.B(surface);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long B0() {
        c1();
        return super.B0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long C() {
        c1();
        return super.C();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final MediaMetadata C0() {
        c1();
        return this.f13773a.C0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void D() {
        c1();
        super.D();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void D0(MediaItem mediaItem, long j2) {
        c1();
        super.D0(mediaItem, j2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int E() {
        c1();
        return this.f13773a.E();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void E0(int i2) {
        c1();
        super.E0(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void F() {
        c1();
        super.F();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void F0(TrackSelectionParameters trackSelectionParameters) {
        c1();
        super.F0(trackSelectionParameters);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void G(int i2, boolean z) {
        c1();
        super.G(i2, z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void G0(SurfaceView surfaceView) {
        c1();
        super.G0(surfaceView);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void H() {
        c1();
        super.H();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void H0(int i2, int i3) {
        c1();
        super.H0(i2, i3);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void I(int i2) {
        c1();
        super.I(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void I0(int i2, int i3, int i4) {
        c1();
        super.I0(i2, i3, i4);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void J(SurfaceView surfaceView) {
        c1();
        super.J(surfaceView);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void J0(List list) {
        c1();
        super.J0(list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void K(int i2, int i3, List list) {
        c1();
        super.K(i2, i3, list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean K0() {
        c1();
        return super.K0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void L(MediaMetadata mediaMetadata) {
        c1();
        super.L(mediaMetadata);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void L0(int i2) {
        c1();
        super.L0(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void M(int i2) {
        c1();
        super.M(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void M0(List list) {
        c1();
        super.M0(list);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void N(int i2, int i3) {
        c1();
        super.N(i2, i3);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long N0() {
        c1();
        return super.N0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void O(SurfaceHolder surfaceHolder) {
        c1();
        super.O(surfaceHolder);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final MediaItem O0() {
        c1();
        return this.f13773a.O0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void P(boolean z) {
        c1();
        super.P(z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void Q() {
        c1();
        super.Q();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void R(MediaItem mediaItem) {
        c1();
        super.R(mediaItem);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean R0(int i2) {
        c1();
        return this.f13773a.R0(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void S() {
        c1();
        super.S();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean S0() {
        c1();
        return this.f13773a.S0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void T(int i2) {
        c1();
        super.T(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean U() {
        c1();
        return super.U();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean U0() {
        c1();
        return this.f13773a.U0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void V(Player.Listener listener) {
        c1();
        super.V(listener);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean V0() {
        c1();
        return this.f13773a.V0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int W() {
        c1();
        return super.W();
    }

    public final Player.PositionInfo W0() {
        boolean zR0 = R0(16);
        boolean zR1 = R0(17);
        int iV = zR1 ? v() : 0;
        Preconditions.q(iV >= 0);
        int iN0 = zR1 ? n0() : 0;
        Preconditions.q(iN0 >= 0);
        if (zR1) {
            Timeline timelineP = p();
            if (!timelineP.p()) {
                Preconditions.q(iV < timelineP.o());
                Timeline.Window windowM = timelineP.m(iV, new Timeline.Window(), 0L);
                Preconditions.q(iN0 == Util.j(iN0, windowM.n, windowM.o));
            }
        }
        long jU = 0;
        MediaItem mediaItemO0 = zR0 ? O0() : null;
        long currentPosition = zR0 ? getCurrentPosition() : 0L;
        if (zR0) {
            jU = u();
        }
        return new Player.PositionInfo(null, iV, mediaItemO0, null, iN0, currentPosition, jU, zR0 ? W() : -1, zR0 ? v0() : -1);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void X(boolean z) {
        c1();
        super.X(z);
    }

    public final SessionPositionInfo X0() {
        boolean zR0 = R0(16);
        return new SessionPositionInfo(W0(), zR0 && j(), SystemClock.elapsedRealtime(), zR0 ? getDuration() : -9223372036854775807L, zR0 ? B0() : 0L, zR0 ? E() : 0, zR0 ? C() : 0L, zR0 ? g0() : -9223372036854775807L, zR0 ? m0() : -9223372036854775807L, zR0 ? x() : 0L);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void Y(Player.Listener listener) {
        c1();
        super.Y(listener);
    }

    public final MediaItem Y0() {
        if (R0(16)) {
            return O0();
        }
        return null;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int Z() {
        c1();
        return super.Z();
    }

    public final Timeline Z0() {
        if (R0(17)) {
            return p();
        }
        return Y0() != null ? new CurrentMediaItemOnlyTimeline(this) : Timeline.f13952a;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final PlaybackParameters a() {
        c1();
        return super.a();
    }

    public final MediaMetadata a1() {
        return R0(18) ? A() : MediaMetadata.L;
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void b0() {
        c1();
        super.b0();
    }

    public final boolean b1() {
        return R0(23) && K0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void c() {
        c1();
        super.c();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void c0() {
        c1();
        super.c0();
    }

    public final void c1() {
        Preconditions.q(Looper.myLooper() == this.f13773a.a0());
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void d(PlaybackParameters playbackParameters) {
        c1();
        super.d(playbackParameters);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final TrackSelectionParameters d0() {
        c1();
        return super.d0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final PlaybackException e() {
        c1();
        return super.e();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void e0(TextureView textureView) {
        c1();
        super.e0(textureView);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void f() {
        c1();
        super.f();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int f0() {
        c1();
        return this.f13773a.f0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void g(float f2) {
        c1();
        super.g(f2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long g0() {
        c1();
        return this.f13773a.g0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long getCurrentPosition() {
        c1();
        return super.getCurrentPosition();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long getDuration() {
        c1();
        return super.getDuration();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int h() {
        c1();
        return super.h();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void h0(int i2, long j2) {
        c1();
        super.h0(i2, j2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int i() {
        c1();
        return super.i();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final Player.Commands i0() {
        c1();
        return super.i0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean isPlaying() {
        c1();
        return super.isPlaying();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean j() {
        c1();
        return super.j();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void j0(boolean z) {
        c1();
        super.j0(z);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void k() {
        c1();
        super.k();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long k0() {
        c1();
        return super.k0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void l() {
        c1();
        super.l();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void l0(int i2, MediaItem mediaItem) {
        c1();
        super.l0(i2, mediaItem);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean m() {
        c1();
        return this.f13773a.m();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long m0() {
        c1();
        return this.f13773a.m0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final Tracks n() {
        c1();
        return super.n();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int n0() {
        c1();
        return super.n0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final CueGroup o() {
        c1();
        return super.o();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void o0(TextureView textureView) {
        c1();
        super.o0(textureView);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final Timeline p() {
        c1();
        return super.p();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void pause() {
        c1();
        super.pause();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void q() {
        c1();
        super.q();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final float q0() {
        c1();
        return super.q0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean r() {
        c1();
        return super.r();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final AudioAttributes r0() {
        c1();
        return this.f13773a.r0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void release() {
        c1();
        super.release();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final VideoSize s() {
        c1();
        return super.s();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final DeviceInfo s0() {
        c1();
        return this.f13773a.s0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void seekTo(long j2) {
        c1();
        super.seekTo(j2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void stop() {
        c1();
        super.stop();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void t(float f2) {
        c1();
        super.t(f2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void t0(int i2, int i3) {
        c1();
        super.t0(i2, i3);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long u() {
        c1();
        return super.u();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean u0() {
        c1();
        return super.u0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int v() {
        c1();
        return super.v();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final int v0() {
        c1();
        return super.v0();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final boolean w() {
        c1();
        return super.w();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void w0(MediaItem mediaItem) {
        c1();
        super.w0(mediaItem);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long x() {
        c1();
        return super.x();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void x0(List list, int i2, long j2) {
        c1();
        super.x0(list, i2, j2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void y() {
        c1();
        super.y();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void y0(int i2) {
        c1();
        super.y0(i2);
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final void z() {
        c1();
        super.z();
    }

    @Override // androidx.media3.common.ForwardingPlayer, androidx.media3.common.Player
    public final long z0() {
        c1();
        return super.z0();
    }
}
