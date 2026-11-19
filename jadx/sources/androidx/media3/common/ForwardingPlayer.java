package androidx.media3.common;

import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.text.CueGroup;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingPlayer implements Player {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Player f13773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IdentityHashMap f13774b = new IdentityHashMap();

    public static final class ForwardingListener implements Player.Listener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ForwardingPlayer f13775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Player.Listener f13776c;

        public ForwardingListener(ForwardingPlayer forwardingPlayer, Player.Listener listener) {
            this.f13775b = forwardingPlayer;
            this.f13776c = listener;
        }

        @Override // androidx.media3.common.Player.Listener
        public final void A(int i2) {
            this.f13776c.A(i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void B(CueGroup cueGroup) {
            this.f13776c.B(cueGroup);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void C(Metadata metadata) {
            this.f13776c.C(metadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void H(int i2) {
            this.f13776c.H(i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void I(boolean z) {
            this.f13776c.e0(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void K(int i2) {
            this.f13776c.K(i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void L(int i2, MediaItem mediaItem) {
            this.f13776c.L(i2, mediaItem);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void N(boolean z) {
            this.f13776c.N(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void O(int i2, boolean z) {
            this.f13776c.O(i2, z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void P(long j2) {
            this.f13776c.P(j2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void Q(MediaMetadata mediaMetadata) {
            this.f13776c.Q(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void R(TrackSelectionParameters trackSelectionParameters) {
            this.f13776c.R(trackSelectionParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void S() {
            this.f13776c.S();
        }

        @Override // androidx.media3.common.Player.Listener
        public final void X(int i2, int i3) {
            this.f13776c.X(i2, i3);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void Y(Player.Commands commands) {
            this.f13776c.Y(commands);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void b(VideoSize videoSize) {
            this.f13776c.b(videoSize);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void d0(int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
            this.f13776c.d0(i2, positionInfo, positionInfo2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void e0(boolean z) {
            this.f13776c.e0(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void f(int i2) {
            this.f13776c.f(i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void f0(Player player, Player.Events events) {
            this.f13776c.f0(this.f13775b, events);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void g0(int i2, boolean z) {
            this.f13776c.g0(i2, z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void h(PlaybackParameters playbackParameters) {
            this.f13776c.h(playbackParameters);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void h0(float f2) {
            this.f13776c.h0(f2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void i0(AudioAttributes audioAttributes) {
            this.f13776c.i0(audioAttributes);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void l(boolean z) {
            this.f13776c.l(z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void m0(Timeline timeline, int i2) {
            this.f13776c.m0(timeline, i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void n(List list) {
            this.f13776c.n(list);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void o0(MediaMetadata mediaMetadata) {
            this.f13776c.o0(mediaMetadata);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void p0(long j2) {
            this.f13776c.p0(j2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void q0(Tracks tracks) {
            this.f13776c.q0(tracks);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void r0(DeviceInfo deviceInfo) {
            this.f13776c.r0(deviceInfo);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void s(PlaybackException playbackException) {
            this.f13776c.s(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void s0(int i2, boolean z) {
            this.f13776c.s0(i2, z);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void t0(PlaybackException playbackException) {
            this.f13776c.t0(playbackException);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void u0(long j2) {
            this.f13776c.u0(j2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void v(int i2) {
            this.f13776c.v(i2);
        }

        @Override // androidx.media3.common.Player.Listener
        public final void x0(boolean z) {
            this.f13776c.x0(z);
        }
    }

    public ForwardingPlayer(Player player) {
        this.f13773a = player;
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata A() {
        return this.f13773a.A();
    }

    @Override // androidx.media3.common.Player
    public void A0(int i2, List list) {
        this.f13773a.A0(i2, list);
    }

    @Override // androidx.media3.common.Player
    public void B(Surface surface) {
        this.f13773a.B(surface);
    }

    @Override // androidx.media3.common.Player
    public long B0() {
        return this.f13773a.B0();
    }

    @Override // androidx.media3.common.Player
    public long C() {
        return this.f13773a.C();
    }

    @Override // androidx.media3.common.Player
    public MediaMetadata C0() {
        return this.f13773a.C0();
    }

    @Override // androidx.media3.common.Player
    public void D() {
        this.f13773a.D();
    }

    @Override // androidx.media3.common.Player
    public void D0(MediaItem mediaItem, long j2) {
        this.f13773a.D0(mediaItem, j2);
    }

    @Override // androidx.media3.common.Player
    public int E() {
        return this.f13773a.E();
    }

    @Override // androidx.media3.common.Player
    public void E0(int i2) {
        this.f13773a.E0(i2);
    }

    @Override // androidx.media3.common.Player
    public void F() {
        this.f13773a.F();
    }

    @Override // androidx.media3.common.Player
    public void F0(TrackSelectionParameters trackSelectionParameters) {
        this.f13773a.F0(trackSelectionParameters);
    }

    @Override // androidx.media3.common.Player
    public void G(int i2, boolean z) {
        this.f13773a.G(i2, z);
    }

    @Override // androidx.media3.common.Player
    public void G0(SurfaceView surfaceView) {
        this.f13773a.G0(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void H() {
        this.f13773a.H();
    }

    @Override // androidx.media3.common.Player
    public void H0(int i2, int i3) {
        this.f13773a.H0(i2, i3);
    }

    @Override // androidx.media3.common.Player
    public void I(int i2) {
        this.f13773a.I(i2);
    }

    @Override // androidx.media3.common.Player
    public void I0(int i2, int i3, int i4) {
        this.f13773a.I0(i2, i3, i4);
    }

    @Override // androidx.media3.common.Player
    public void J(SurfaceView surfaceView) {
        this.f13773a.J(surfaceView);
    }

    @Override // androidx.media3.common.Player
    public void J0(List list) {
        this.f13773a.J0(list);
    }

    @Override // androidx.media3.common.Player
    public void K(int i2, int i3, List list) {
        this.f13773a.K(i2, i3, list);
    }

    @Override // androidx.media3.common.Player
    public boolean K0() {
        return this.f13773a.K0();
    }

    @Override // androidx.media3.common.Player
    public void L(MediaMetadata mediaMetadata) {
        this.f13773a.L(mediaMetadata);
    }

    @Override // androidx.media3.common.Player
    public void L0(int i2) {
        this.f13773a.L0(i2);
    }

    @Override // androidx.media3.common.Player
    public void M(int i2) {
        this.f13773a.M(i2);
    }

    @Override // androidx.media3.common.Player
    public void M0(List list) {
        this.f13773a.M0(list);
    }

    @Override // androidx.media3.common.Player
    public void N(int i2, int i3) {
        this.f13773a.N(i2, i3);
    }

    @Override // androidx.media3.common.Player
    public long N0() {
        return this.f13773a.N0();
    }

    @Override // androidx.media3.common.Player
    public void O(SurfaceHolder surfaceHolder) {
        this.f13773a.O(surfaceHolder);
    }

    @Override // androidx.media3.common.Player
    public MediaItem O0() {
        return this.f13773a.O0();
    }

    @Override // androidx.media3.common.Player
    public void P(boolean z) {
        this.f13773a.P(z);
    }

    @Override // androidx.media3.common.Player
    public void Q() {
        this.f13773a.Q();
    }

    @Override // androidx.media3.common.Player
    public final boolean Q0() {
        return this.f13773a.Q0();
    }

    @Override // androidx.media3.common.Player
    public void R(MediaItem mediaItem) {
        this.f13773a.R(mediaItem);
    }

    @Override // androidx.media3.common.Player
    public boolean R0(int i2) {
        return this.f13773a.R0(i2);
    }

    @Override // androidx.media3.common.Player
    public void S() {
        this.f13773a.S();
    }

    @Override // androidx.media3.common.Player
    public boolean S0() {
        return this.f13773a.S0();
    }

    @Override // androidx.media3.common.Player
    public void T(int i2) {
        this.f13773a.T(i2);
    }

    @Override // androidx.media3.common.Player
    public boolean U() {
        return this.f13773a.U();
    }

    @Override // androidx.media3.common.Player
    public boolean U0() {
        return this.f13773a.U0();
    }

    @Override // androidx.media3.common.Player
    public void V(Player.Listener listener) {
        synchronized (this.f13774b) {
            Player.Listener listener2 = (Player.Listener) this.f13774b.remove(listener);
            Player player = this.f13773a;
            if (listener2 != null) {
                listener = listener2;
            }
            player.V(listener);
        }
    }

    @Override // androidx.media3.common.Player
    public boolean V0() {
        return this.f13773a.V0();
    }

    @Override // androidx.media3.common.Player
    public int W() {
        return this.f13773a.W();
    }

    @Override // androidx.media3.common.Player
    public void X(boolean z) {
        this.f13773a.X(z);
    }

    @Override // androidx.media3.common.Player
    public void Y(Player.Listener listener) {
        synchronized (this.f13774b) {
            try {
                ForwardingListener forwardingListener = (ForwardingListener) this.f13774b.get(listener);
                if (forwardingListener == null) {
                    forwardingListener = new ForwardingListener(this, listener);
                }
                this.f13773a.Y(forwardingListener);
                this.f13774b.put(listener, forwardingListener);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.common.Player
    public int Z() {
        return this.f13773a.Z();
    }

    @Override // androidx.media3.common.Player
    public PlaybackParameters a() {
        return this.f13773a.a();
    }

    @Override // androidx.media3.common.Player
    public final Looper a0() {
        return this.f13773a.a0();
    }

    @Override // androidx.media3.common.Player
    public void b0() {
        this.f13773a.b0();
    }

    @Override // androidx.media3.common.Player
    public void c() {
        this.f13773a.c();
    }

    @Override // androidx.media3.common.Player
    public void c0() {
        this.f13773a.c0();
    }

    @Override // androidx.media3.common.Player
    public void d(PlaybackParameters playbackParameters) {
        this.f13773a.d(playbackParameters);
    }

    @Override // androidx.media3.common.Player
    public TrackSelectionParameters d0() {
        return this.f13773a.d0();
    }

    @Override // androidx.media3.common.Player
    public PlaybackException e() {
        return this.f13773a.e();
    }

    @Override // androidx.media3.common.Player
    public void e0(TextureView textureView) {
        this.f13773a.e0(textureView);
    }

    @Override // androidx.media3.common.Player
    public void f() {
        this.f13773a.f();
    }

    @Override // androidx.media3.common.Player
    public int f0() {
        return this.f13773a.f0();
    }

    @Override // androidx.media3.common.Player
    public void g(float f2) {
        this.f13773a.g(f2);
    }

    @Override // androidx.media3.common.Player
    public long g0() {
        return this.f13773a.g0();
    }

    @Override // androidx.media3.common.Player
    public long getCurrentPosition() {
        return this.f13773a.getCurrentPosition();
    }

    @Override // androidx.media3.common.Player
    public long getDuration() {
        return this.f13773a.getDuration();
    }

    @Override // androidx.media3.common.Player
    public int h() {
        return this.f13773a.h();
    }

    @Override // androidx.media3.common.Player
    public void h0(int i2, long j2) {
        this.f13773a.h0(i2, j2);
    }

    @Override // androidx.media3.common.Player
    public int i() {
        return this.f13773a.i();
    }

    @Override // androidx.media3.common.Player
    public Player.Commands i0() {
        return this.f13773a.i0();
    }

    @Override // androidx.media3.common.Player
    public boolean isPlaying() {
        return this.f13773a.isPlaying();
    }

    @Override // androidx.media3.common.Player
    public boolean j() {
        return this.f13773a.j();
    }

    @Override // androidx.media3.common.Player
    public void j0(boolean z) {
        this.f13773a.j0(z);
    }

    @Override // androidx.media3.common.Player
    public void k() {
        this.f13773a.k();
    }

    @Override // androidx.media3.common.Player
    public long k0() {
        return this.f13773a.k0();
    }

    @Override // androidx.media3.common.Player
    public void l() {
        this.f13773a.l();
    }

    @Override // androidx.media3.common.Player
    public void l0(int i2, MediaItem mediaItem) {
        this.f13773a.l0(i2, mediaItem);
    }

    @Override // androidx.media3.common.Player
    public boolean m() {
        return this.f13773a.m();
    }

    @Override // androidx.media3.common.Player
    public long m0() {
        return this.f13773a.m0();
    }

    @Override // androidx.media3.common.Player
    public Tracks n() {
        return this.f13773a.n();
    }

    @Override // androidx.media3.common.Player
    public int n0() {
        return this.f13773a.n0();
    }

    @Override // androidx.media3.common.Player
    public CueGroup o() {
        return this.f13773a.o();
    }

    @Override // androidx.media3.common.Player
    public void o0(TextureView textureView) {
        this.f13773a.o0(textureView);
    }

    @Override // androidx.media3.common.Player
    public Timeline p() {
        return this.f13773a.p();
    }

    @Override // androidx.media3.common.Player
    public final void p0(AudioAttributes audioAttributes, boolean z) {
        this.f13773a.p0(audioAttributes, z);
    }

    @Override // androidx.media3.common.Player
    public void pause() {
        this.f13773a.pause();
    }

    @Override // androidx.media3.common.Player
    public void q() {
        this.f13773a.q();
    }

    @Override // androidx.media3.common.Player
    public float q0() {
        return this.f13773a.q0();
    }

    @Override // androidx.media3.common.Player
    public boolean r() {
        return this.f13773a.r();
    }

    @Override // androidx.media3.common.Player
    public AudioAttributes r0() {
        return this.f13773a.r0();
    }

    @Override // androidx.media3.common.Player
    public void release() {
        this.f13773a.release();
    }

    @Override // androidx.media3.common.Player
    public VideoSize s() {
        return this.f13773a.s();
    }

    @Override // androidx.media3.common.Player
    public DeviceInfo s0() {
        return this.f13773a.s0();
    }

    @Override // androidx.media3.common.Player
    public void seekTo(long j2) {
        this.f13773a.seekTo(j2);
    }

    @Override // androidx.media3.common.Player
    public void stop() {
        this.f13773a.stop();
    }

    @Override // androidx.media3.common.Player
    public void t(float f2) {
        this.f13773a.t(f2);
    }

    @Override // androidx.media3.common.Player
    public void t0(int i2, int i3) {
        this.f13773a.t0(i2, i3);
    }

    @Override // androidx.media3.common.Player
    public long u() {
        return this.f13773a.u();
    }

    @Override // androidx.media3.common.Player
    public boolean u0() {
        return this.f13773a.u0();
    }

    @Override // androidx.media3.common.Player
    public int v() {
        return this.f13773a.v();
    }

    @Override // androidx.media3.common.Player
    public int v0() {
        return this.f13773a.v0();
    }

    @Override // androidx.media3.common.Player
    public boolean w() {
        return this.f13773a.w();
    }

    @Override // androidx.media3.common.Player
    public void w0(MediaItem mediaItem) {
        this.f13773a.w0(mediaItem);
    }

    @Override // androidx.media3.common.Player
    public long x() {
        return this.f13773a.x();
    }

    @Override // androidx.media3.common.Player
    public void x0(List list, int i2, long j2) {
        this.f13773a.x0(list, i2, j2);
    }

    @Override // androidx.media3.common.Player
    public void y() {
        this.f13773a.y();
    }

    @Override // androidx.media3.common.Player
    public void y0(int i2) {
        this.f13773a.y0(i2);
    }

    @Override // androidx.media3.common.Player
    public void z() {
        this.f13773a.z();
    }

    @Override // androidx.media3.common.Player
    public long z0() {
        return this.f13773a.z0();
    }
}
