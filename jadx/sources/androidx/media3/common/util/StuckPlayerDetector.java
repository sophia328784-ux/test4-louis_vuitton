package androidx.media3.common.util;

import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class StuckPlayerDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Player f14200a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Player.Listener f14201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callback f14202c;
    public final Clock d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Timeline.Period f14203e = new Timeline.Period();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HandlerWrapper f14204f;
    public final StuckBufferingDetector g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StuckPlayingDetector f14205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final StuckPlayingNotEndingDetector f14206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StuckSuppressedDetector f14207j;

    public interface Callback {
        void x(StuckPlayerException stuckPlayerException);
    }

    public final class StuckBufferingDetector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f14210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14211c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f14212e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f14213f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f14214h;

        public StuckBufferingDetector(int i2) {
            this.f14209a = i2;
        }

        public final void a() {
            int i2;
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            Player player = stuckPlayerDetector.f14200a;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f14204f;
            Player player2 = stuckPlayerDetector.f14200a;
            if (player.h() != 2 || !player2.r() || player2.Z() != 0) {
                if (this.g) {
                    handlerWrapper.n(1);
                }
                this.g = false;
                return;
            }
            Timeline timelineP = player2.p();
            Object objL = timelineP.p() ? null : timelineP.l(player2.n0());
            int iW = player2.W();
            int iV0 = player2.v0();
            long jB0 = player2.B0();
            long jMax = Math.max(0L, player2.C() - Math.max(0L, jB0 - player2.getCurrentPosition()));
            if (objL != null && iW == -1) {
                jB0 -= Util.f0(timelineP.g(objL, stuckPlayerDetector.f14203e).f13962e);
            }
            long jB = stuckPlayerDetector.d.b();
            boolean z = this.g;
            int i3 = this.f14209a;
            if (z && Objects.equals(objL, this.f14210b) && iW == this.f14211c && iV0 == this.d) {
                i2 = iW;
                if (jB0 == this.f14212e && jMax == this.f14213f) {
                    if (jB - this.f14214h >= i3) {
                        stuckPlayerDetector.f14202c.x(new StuckPlayerException(1, i3));
                        return;
                    }
                    return;
                }
            } else {
                i2 = iW;
            }
            this.g = true;
            this.f14214h = jB;
            this.f14210b = objL;
            this.f14211c = i2;
            this.d = iV0;
            this.f14212e = jB0;
            this.f14213f = jMax;
            handlerWrapper.n(1);
            handlerWrapper.a(1, i3);
        }
    }

    public final class StuckPlayingDetector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f14217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14218c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f14219e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f14220f;
        public long g;

        public StuckPlayingDetector(int i2) {
            this.f14216a = i2;
        }

        public final void a() {
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            Player player = stuckPlayerDetector.f14200a;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f14204f;
            Player player2 = stuckPlayerDetector.f14200a;
            if (!player.isPlaying()) {
                if (this.f14220f) {
                    handlerWrapper.n(2);
                }
                this.f14220f = false;
                return;
            }
            Timeline timelineP = player2.p();
            Object objL = timelineP.p() ? null : timelineP.l(player2.n0());
            int iW = player2.W();
            int iV0 = player2.v0();
            long currentPosition = player2.getCurrentPosition();
            if (objL != null && iW == -1) {
                currentPosition -= Util.f0(timelineP.g(objL, stuckPlayerDetector.f14203e).f13962e);
            }
            long jB = stuckPlayerDetector.d.b();
            boolean z = this.f14220f;
            int i2 = this.f14216a;
            if (z && Objects.equals(objL, this.f14217b) && iW == this.f14218c && iV0 == this.d && currentPosition == this.f14219e) {
                if (jB - this.g >= i2) {
                    stuckPlayerDetector.f14202c.x(new StuckPlayerException(2, i2));
                    return;
                }
                return;
            }
            this.f14220f = true;
            this.g = jB;
            this.f14217b = objL;
            this.f14218c = iW;
            this.d = iV0;
            this.f14219e = currentPosition;
            handlerWrapper.n(2);
            handlerWrapper.a(2, i2);
        }
    }

    public final class StuckPlayingNotEndingDetector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f14223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14224c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14225e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f14226f;

        public StuckPlayingNotEndingDetector(int i2) {
            this.f14222a = i2;
        }

        public final void a() {
            long duration;
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            Player player = stuckPlayerDetector.f14200a;
            Timeline.Period period = stuckPlayerDetector.f14203e;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f14204f;
            Player player2 = stuckPlayerDetector.f14200a;
            Timeline timelineP = player.p();
            Object objL = timelineP.p() ? null : timelineP.l(player2.n0());
            int iW = player2.W();
            int iV0 = player2.v0();
            long currentPosition = player2.getCurrentPosition();
            if (objL == null || iW != -1) {
                duration = iW != -1 ? player2.getDuration() : -9223372036854775807L;
            } else {
                timelineP.g(objL, period);
                currentPosition -= Util.f0(period.f13962e);
                duration = Util.f0(period.d);
            }
            boolean zIsPlaying = player2.isPlaying();
            if (!zIsPlaying || duration == -9223372036854775807L || currentPosition < duration) {
                handlerWrapper.n(3);
                if (zIsPlaying && duration != -9223372036854775807L) {
                    handlerWrapper.a(3, (int) Math.ceil((duration - currentPosition) / player2.a().f13919a));
                }
                this.f14225e = false;
                return;
            }
            long jB = stuckPlayerDetector.d.b();
            boolean z = this.f14225e;
            int i2 = this.f14222a;
            if (z && Objects.equals(objL, this.f14223b) && iW == this.f14224c && iV0 == this.d) {
                if (jB - this.f14226f >= i2) {
                    stuckPlayerDetector.f14202c.x(new StuckPlayerException(3, i2));
                    return;
                }
                return;
            }
            this.f14225e = true;
            this.f14226f = jB;
            this.f14223b = objL;
            this.f14224c = iW;
            this.d = iV0;
            handlerWrapper.n(3);
            handlerWrapper.a(3, i2);
        }
    }

    public final class StuckSuppressedDetector {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f14229c;
        public long d;

        public StuckSuppressedDetector(int i2) {
            this.f14227a = i2;
        }

        public final void a() {
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            Player player = stuckPlayerDetector.f14200a;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f14204f;
            int iZ = player.Z();
            Player player2 = stuckPlayerDetector.f14200a;
            if (!player2.r() || player2.h() == 1 || player2.h() == 4 || iZ == 0 || iZ == 1) {
                if (this.f14229c) {
                    handlerWrapper.n(4);
                }
                this.f14229c = false;
                return;
            }
            long jB = stuckPlayerDetector.d.b();
            boolean z = this.f14229c;
            int i2 = this.f14227a;
            if (z && this.f14228b == iZ) {
                if (jB - this.d >= i2) {
                    stuckPlayerDetector.f14202c.x(new StuckPlayerException(4, i2));
                }
            } else {
                this.f14229c = true;
                this.d = jB;
                this.f14228b = iZ;
                handlerWrapper.n(4);
                handlerWrapper.a(4, i2);
            }
        }
    }

    public StuckPlayerDetector(Player player, Callback callback, Clock clock, int i2, int i3, int i4, int i5) {
        this.f14200a = player;
        this.f14202c = callback;
        this.d = clock;
        this.f14204f = clock.e(player.a0(), new a(this, 1));
        this.g = new StuckBufferingDetector(i2);
        this.f14205h = new StuckPlayingDetector(i3);
        this.f14206i = new StuckPlayingNotEndingDetector(i4);
        this.f14207j = new StuckSuppressedDetector(i5);
        Player.Listener listener = new Player.Listener() { // from class: androidx.media3.common.util.StuckPlayerDetector.1
            @Override // androidx.media3.common.Player.Listener
            public final void f0(Player player2, Player.Events events) {
                StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
                stuckPlayerDetector.g.a();
                stuckPlayerDetector.f14205h.a();
                stuckPlayerDetector.f14206i.a();
                stuckPlayerDetector.f14207j.a();
            }
        };
        this.f14201b = listener;
        player.Y(listener);
    }
}
