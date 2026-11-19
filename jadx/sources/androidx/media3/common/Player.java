package androidx.media3.common;

import android.os.Bundle;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.n00;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface Player {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Command {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DiscontinuityReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Event {
    }

    public static final class Events {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FlagSet f13927a;

        public Events(FlagSet flagSet) {
            this.f13927a = flagSet;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Events) {
                return this.f13927a.equals(((Events) obj).f13927a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f13927a.f13752a.hashCode();
        }
    }

    public interface Listener {
        default void A(int i2) {
        }

        default void B(CueGroup cueGroup) {
        }

        default void C(Metadata metadata) {
        }

        default void H(int i2) {
        }

        default void I(boolean z) {
        }

        default void K(int i2) {
        }

        default void L(int i2, MediaItem mediaItem) {
        }

        default void N(boolean z) {
        }

        default void O(int i2, boolean z) {
        }

        default void P(long j2) {
        }

        default void Q(MediaMetadata mediaMetadata) {
        }

        default void R(TrackSelectionParameters trackSelectionParameters) {
        }

        default void S() {
        }

        default void X(int i2, int i3) {
        }

        default void Y(Commands commands) {
        }

        default void b(VideoSize videoSize) {
        }

        default void d0(int i2, PositionInfo positionInfo, PositionInfo positionInfo2) {
        }

        default void e0(boolean z) {
        }

        default void f(int i2) {
        }

        default void f0(Player player, Events events) {
        }

        default void g0(int i2, boolean z) {
        }

        default void h(PlaybackParameters playbackParameters) {
        }

        default void h0(float f2) {
        }

        default void i0(AudioAttributes audioAttributes) {
        }

        default void l(boolean z) {
        }

        default void m0(Timeline timeline, int i2) {
        }

        default void n(List list) {
        }

        default void o0(MediaMetadata mediaMetadata) {
        }

        default void p0(long j2) {
        }

        default void q0(Tracks tracks) {
        }

        default void r0(DeviceInfo deviceInfo) {
        }

        default void s(PlaybackException playbackException) {
        }

        default void s0(int i2, boolean z) {
        }

        default void t0(PlaybackException playbackException) {
        }

        default void u0(long j2) {
        }

        default void v(int i2) {
        }

        default void x0(boolean z) {
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaItemTransitionReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayWhenReadyChangeReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackSuppressionReason {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface TimelineChangeReason {
    }

    MediaMetadata A();

    void A0(int i2, List list);

    void B(Surface surface);

    long B0();

    long C();

    MediaMetadata C0();

    void D();

    void D0(MediaItem mediaItem, long j2);

    int E();

    void E0(int i2);

    void F();

    void F0(TrackSelectionParameters trackSelectionParameters);

    void G(int i2, boolean z);

    void G0(SurfaceView surfaceView);

    void H();

    void H0(int i2, int i3);

    void I(int i2);

    void I0(int i2, int i3, int i4);

    void J(SurfaceView surfaceView);

    void J0(List list);

    void K(int i2, int i3, List list);

    boolean K0();

    void L(MediaMetadata mediaMetadata);

    void L0(int i2);

    void M(int i2);

    void M0(List list);

    void N(int i2, int i3);

    long N0();

    void O(SurfaceHolder surfaceHolder);

    MediaItem O0();

    void P(boolean z);

    void Q();

    boolean Q0();

    void R(MediaItem mediaItem);

    boolean R0(int i2);

    void S();

    boolean S0();

    void T(int i2);

    boolean U();

    boolean U0();

    void V(Listener listener);

    boolean V0();

    int W();

    void X(boolean z);

    void Y(Listener listener);

    int Z();

    PlaybackParameters a();

    Looper a0();

    void b0();

    void c();

    void c0();

    void d(PlaybackParameters playbackParameters);

    TrackSelectionParameters d0();

    PlaybackException e();

    void e0(TextureView textureView);

    void f();

    int f0();

    void g(float f2);

    long g0();

    long getCurrentPosition();

    long getDuration();

    int h();

    void h0(int i2, long j2);

    int i();

    Commands i0();

    boolean isPlaying();

    boolean j();

    void j0(boolean z);

    void k();

    long k0();

    void l();

    void l0(int i2, MediaItem mediaItem);

    boolean m();

    long m0();

    Tracks n();

    int n0();

    CueGroup o();

    void o0(TextureView textureView);

    Timeline p();

    void p0(AudioAttributes audioAttributes, boolean z);

    void pause();

    void q();

    float q0();

    boolean r();

    AudioAttributes r0();

    void release();

    VideoSize s();

    DeviceInfo s0();

    void seekTo(long j2);

    void stop();

    void t(float f2);

    void t0(int i2, int i3);

    long u();

    boolean u0();

    int v();

    int v0();

    boolean w();

    void w0(MediaItem mediaItem);

    long x();

    void x0(List list, int i2, long j2);

    void y();

    void y0(int i2);

    void z();

    long z0();

    public static final class Commands {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Commands f13922b = new Builder().c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f13923c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FlagSet f13924a;

        static {
            String str = Util.f14242a;
            f13923c = Integer.toString(0, 36);
        }

        public Commands(FlagSet flagSet) {
            this.f13924a = flagSet;
        }

        public static Commands b(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(f13923c);
            if (integerArrayList == null) {
                return f13922b;
            }
            Builder builder = new Builder();
            for (int i2 = 0; i2 < integerArrayList.size(); i2++) {
                builder.a(integerArrayList.get(i2).intValue());
            }
            return builder.c();
        }

        public final boolean a(int i2) {
            return this.f13924a.f13752a.get(i2);
        }

        public final Bundle c() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            int i2 = 0;
            while (true) {
                FlagSet flagSet = this.f13924a;
                if (i2 >= flagSet.f13752a.size()) {
                    bundle.putIntegerArrayList(f13923c, arrayList);
                    return bundle;
                }
                arrayList.add(Integer.valueOf(flagSet.b(i2)));
                i2++;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Commands) {
                return this.f13924a.equals(((Commands) obj).f13924a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f13924a.f13752a.hashCode();
        }

        public static final class Builder {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final int[] f13925b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 35, 27, 28, 29, 30, 32};

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final FlagSet.Builder f13926a;

            public Builder(Commands commands) {
                FlagSet.Builder builder = new FlagSet.Builder();
                this.f13926a = builder;
                FlagSet flagSet = commands.f13924a;
                for (int i2 = 0; i2 < flagSet.f13752a.size(); i2++) {
                    builder.a(flagSet.b(i2));
                }
            }

            public final void a(int i2) {
                this.f13926a.a(i2);
            }

            public final void b(int i2, boolean z) {
                FlagSet.Builder builder = this.f13926a;
                if (z) {
                    builder.a(i2);
                } else {
                    builder.getClass();
                }
            }

            public final Commands c() {
                return new Commands(this.f13926a.c());
            }

            public final void d(int i2, boolean z) {
                FlagSet.Builder builder = this.f13926a;
                if (!z) {
                    builder.getClass();
                } else {
                    Preconditions.q(!builder.f13754b);
                    builder.f13753a.delete(i2);
                }
            }

            public Builder() {
                this.f13926a = new FlagSet.Builder();
            }
        }
    }

    public static final class PositionInfo {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final String f13928j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final String f13929k;
        public static final String l;
        public static final String m;
        public static final String n;
        public static final String o;
        public static final String p;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f13930a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaItem f13932c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f13933e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f13934f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f13935h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f13936i;

        static {
            String str = Util.f14242a;
            f13928j = Integer.toString(0, 36);
            f13929k = Integer.toString(1, 36);
            l = Integer.toString(2, 36);
            m = Integer.toString(3, 36);
            n = Integer.toString(4, 36);
            o = Integer.toString(5, 36);
            p = Integer.toString(6, 36);
        }

        public PositionInfo(Object obj, int i2, MediaItem mediaItem, Object obj2, int i3, long j2, long j3, int i4, int i5) {
            Preconditions.g(i2 >= 0);
            Preconditions.g(i3 >= 0);
            this.f13930a = obj;
            this.f13931b = i2;
            this.f13932c = mediaItem;
            this.d = obj2;
            this.f13933e = i3;
            this.f13934f = j2;
            this.g = j3;
            this.f13935h = i4;
            this.f13936i = i5;
        }

        public static PositionInfo c(int i2, Bundle bundle) {
            int iMax = Math.max(0, bundle.getInt(f13928j, 0));
            Bundle bundle2 = bundle.getBundle(f13929k);
            return new PositionInfo(null, iMax, bundle2 == null ? null : MediaItem.b(i2, bundle2), null, Math.max(0, bundle.getInt(l, 0)), bundle.getLong(m, 0L), bundle.getLong(n, 0L), bundle.getInt(o, -1), bundle.getInt(p, -1));
        }

        public final boolean a(PositionInfo positionInfo) {
            return this.f13931b == positionInfo.f13931b && this.f13933e == positionInfo.f13933e && this.f13934f == positionInfo.f13934f && this.g == positionInfo.g && this.f13935h == positionInfo.f13935h && this.f13936i == positionInfo.f13936i && Objects.equals(this.f13932c, positionInfo.f13932c);
        }

        public final PositionInfo b(boolean z, boolean z2) {
            if (z && z2) {
                return this;
            }
            return new PositionInfo(this.f13930a, z2 ? this.f13931b : 0, z ? this.f13932c : null, this.d, z2 ? this.f13933e : 0, z ? this.f13934f : 0L, z ? this.g : 0L, z ? this.f13935h : -1, z ? this.f13936i : -1);
        }

        public final Bundle d(int i2) {
            Bundle bundle = new Bundle();
            int i3 = this.f13931b;
            if (i2 < 3 || i3 != 0) {
                bundle.putInt(f13928j, i3);
            }
            MediaItem mediaItem = this.f13932c;
            if (mediaItem != null) {
                bundle.putBundle(f13929k, mediaItem.c(i2, false));
            }
            int i4 = this.f13933e;
            if (i2 < 3 || i4 != 0) {
                bundle.putInt(l, i4);
            }
            long j2 = this.f13934f;
            if (i2 < 3 || j2 != 0) {
                bundle.putLong(m, j2);
            }
            long j3 = this.g;
            if (i2 < 3 || j3 != 0) {
                bundle.putLong(n, j3);
            }
            int i5 = this.f13935h;
            if (i5 != -1) {
                bundle.putInt(o, i5);
            }
            int i6 = this.f13936i;
            if (i6 != -1) {
                bundle.putInt(p, i6);
            }
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PositionInfo.class == obj.getClass()) {
                PositionInfo positionInfo = (PositionInfo) obj;
                if (a(positionInfo) && Objects.equals(this.f13930a, positionInfo.f13930a) && Objects.equals(this.d, positionInfo.d)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f13930a, Integer.valueOf(this.f13931b), this.f13932c, this.d, Integer.valueOf(this.f13933e), Long.valueOf(this.f13934f), Long.valueOf(this.g), Integer.valueOf(this.f13935h), Integer.valueOf(this.f13936i));
        }

        public final String toString() {
            String str = "mediaItem=" + this.f13931b + ", period=" + this.f13933e + ", pos=" + this.f13934f;
            int i2 = this.f13935h;
            if (i2 == -1) {
                return str;
            }
            StringBuilder sbU = n00.u(str, ", contentPos=");
            sbU.append(this.g);
            sbU.append(", adGroup=");
            sbU.append(i2);
            sbU.append(", ad=");
            sbU.append(this.f13936i);
            return sbU.toString();
        }

        @Deprecated
        public PositionInfo(Object obj, int i2, Object obj2, int i3, long j2, long j3, int i4, int i5) {
            this(obj, i2, MediaItem.g, obj2, i3, j2, j3, i4, i5);
        }
    }
}
