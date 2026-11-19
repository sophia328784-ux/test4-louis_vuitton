package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class BasePlayer implements Player {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Timeline.Window f13705a = new Timeline.Window();

    @Override // androidx.media3.common.Player
    public final void D() {
        N(0, Integer.MAX_VALUE);
    }

    @Override // androidx.media3.common.Player
    public final void D0(MediaItem mediaItem, long j2) {
        x0(ImmutableList.A(mediaItem), 0, j2);
    }

    @Override // androidx.media3.common.Player
    public final int E() {
        if (!R0(16)) {
            return 0;
        }
        long jB0 = B0();
        long duration = getDuration();
        if (jB0 == -9223372036854775807L || duration == -9223372036854775807L) {
            return 0;
        }
        if (duration == 0) {
            return 100;
        }
        return Util.j(Util.V(jB0, duration), 0, 100);
    }

    @Override // androidx.media3.common.Player
    public final void F() {
        Y0(6);
    }

    @Override // androidx.media3.common.Player
    public final void H0(int i2, int i3) {
        if (i2 != i3) {
            I0(i2, i2 + 1, i3);
        }
    }

    @Override // androidx.media3.common.Player
    public final void J0(List list) {
        A0(Integer.MAX_VALUE, list);
    }

    @Override // androidx.media3.common.Player
    public final void M(int i2) {
        N(i2, i2 + 1);
    }

    @Override // androidx.media3.common.Player
    public final MediaItem O0() {
        Timeline timelineP = p();
        if (timelineP.p()) {
            return null;
        }
        return timelineP.m(v(), this.f13705a, 0L).f13969c;
    }

    @Override // androidx.media3.common.Player
    public final boolean Q0() {
        return true;
    }

    @Override // androidx.media3.common.Player
    public final void R(MediaItem mediaItem) {
        M0(ImmutableList.A(mediaItem));
    }

    @Override // androidx.media3.common.Player
    public final boolean R0(int i2) {
        return i0().a(i2);
    }

    @Override // androidx.media3.common.Player
    public final void S() {
        int iE;
        Timeline timelineP = p();
        if (timelineP.p()) {
            iE = -1;
        } else {
            int iV = v();
            int i2 = i();
            if (i2 == 1) {
                i2 = 0;
            }
            iE = timelineP.e(iV, i2, w());
        }
        if (iE == -1) {
            W0(8);
        } else if (iE == v()) {
            X0(-9223372036854775807L, v(), true);
        } else {
            X0(-9223372036854775807L, iE, false);
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean S0() {
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f13705a, 0L).f13973i;
    }

    @Override // androidx.media3.common.Player
    public final boolean U() {
        int iE;
        Timeline timelineP = p();
        if (timelineP.p()) {
            iE = -1;
        } else {
            int iV = v();
            int i2 = i();
            if (i2 == 1) {
                i2 = 0;
            }
            iE = timelineP.e(iV, i2, w());
        }
        return iE != -1;
    }

    @Override // androidx.media3.common.Player
    public final boolean U0() {
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f13705a, 0L).f13972h;
    }

    @Override // androidx.media3.common.Player
    public final boolean V0() {
        Timeline timelineP = p();
        return !timelineP.p() && timelineP.m(v(), this.f13705a, 0L).a();
    }

    public final void W0(int i2) {
        X0(-9223372036854775807L, -1, false);
    }

    public abstract void X0(long j2, int i2, boolean z);

    public final void Y0(int i2) {
        int iK;
        Timeline timelineP = p();
        if (timelineP.p()) {
            iK = -1;
        } else {
            int iV = v();
            int i3 = i();
            if (i3 == 1) {
                i3 = 0;
            }
            iK = timelineP.k(iV, i3, w());
        }
        if (iK == -1) {
            W0(i2);
        } else if (iK == v()) {
            X0(-9223372036854775807L, v(), true);
        } else {
            X0(-9223372036854775807L, iK, false);
        }
    }

    @Override // androidx.media3.common.Player
    public final void c() {
        P(true);
    }

    @Override // androidx.media3.common.Player
    public final long g0() {
        Timeline timelineP = p();
        if (timelineP.p()) {
            return -9223372036854775807L;
        }
        int iV = v();
        Timeline.Window window = this.f13705a;
        if (timelineP.m(iV, window, 0L).f13971f == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return (Util.B(window.g) - window.f13971f) - u();
    }

    @Override // androidx.media3.common.Player
    public final void h0(int i2, long j2) {
        X0(j2, i2, false);
    }

    @Override // androidx.media3.common.Player
    public final boolean isPlaying() {
        return h() == 3 && r() && Z() == 0;
    }

    @Override // androidx.media3.common.Player
    public final void k() {
        X0(-9223372036854775807L, v(), false);
    }

    @Override // androidx.media3.common.Player
    public final void l() {
        if (p().p() || j()) {
            W0(7);
            return;
        }
        boolean zU0 = u0();
        if (V0() && !U0()) {
            if (zU0) {
                Y0(7);
                return;
            } else {
                W0(7);
                return;
            }
        }
        if (!zU0 || getCurrentPosition() > k0()) {
            X0(0L, v(), false);
        } else {
            Y0(7);
        }
    }

    @Override // androidx.media3.common.Player
    public final void l0(int i2, MediaItem mediaItem) {
        K(i2, i2 + 1, ImmutableList.A(mediaItem));
    }

    @Override // androidx.media3.common.Player
    public final long m0() {
        Timeline timelineP = p();
        if (timelineP.p()) {
            return -9223372036854775807L;
        }
        return Util.f0(timelineP.m(v(), this.f13705a, 0L).m);
    }

    @Override // androidx.media3.common.Player
    public final void pause() {
        P(false);
    }

    @Override // androidx.media3.common.Player
    public final void q() {
        int iE;
        if (p().p() || j()) {
            W0(9);
            return;
        }
        if (!U()) {
            if (V0() && S0()) {
                X0(-9223372036854775807L, v(), false);
                return;
            } else {
                W0(9);
                return;
            }
        }
        Timeline timelineP = p();
        if (timelineP.p()) {
            iE = -1;
        } else {
            int iV = v();
            int i2 = i();
            if (i2 == 1) {
                i2 = 0;
            }
            iE = timelineP.e(iV, i2, w());
        }
        if (iE == -1) {
            W0(9);
        } else if (iE == v()) {
            X0(-9223372036854775807L, v(), true);
        } else {
            X0(-9223372036854775807L, iE, false);
        }
    }

    @Override // androidx.media3.common.Player
    public final void seekTo(long j2) {
        X0(j2, v(), false);
    }

    @Override // androidx.media3.common.Player
    public final void t(float f2) {
        d(new PlaybackParameters(f2, a().f13920b));
    }

    @Override // androidx.media3.common.Player
    public final boolean u0() {
        int iK;
        Timeline timelineP = p();
        if (timelineP.p()) {
            iK = -1;
        } else {
            int iV = v();
            int i2 = i();
            if (i2 == 1) {
                i2 = 0;
            }
            iK = timelineP.k(iV, i2, w());
        }
        return iK != -1;
    }

    @Override // androidx.media3.common.Player
    public final void w0(MediaItem mediaItem) {
        M0(ImmutableList.A(mediaItem));
    }

    @Override // androidx.media3.common.Player
    public final void y() {
        long currentPosition = getCurrentPosition() + z0();
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        X0(Math.max(currentPosition, 0L), v(), false);
    }

    @Override // androidx.media3.common.Player
    public final void y0(int i2) {
        X0(-9223372036854775807L, i2, false);
    }

    @Override // androidx.media3.common.Player
    public final void z() {
        long currentPosition = getCurrentPosition() + (-N0());
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        X0(Math.max(currentPosition, 0L), v(), false);
    }
}
