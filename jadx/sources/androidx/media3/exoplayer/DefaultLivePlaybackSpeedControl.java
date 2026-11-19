package androidx.media3.exoplayer;

import android.os.SystemClock;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultLivePlaybackSpeedControl implements LivePlaybackSpeedControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14587b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f14588c;
    public long d = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14589e = -9223372036854775807L;
    public long g = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f14591h = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f14594k = 0.97f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f14593j = 1.03f;
    public float l = 1.0f;
    public long m = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f14590f = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f14592i = -9223372036854775807L;
    public long n = -9223372036854775807L;
    public long o = -9223372036854775807L;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14595a = Util.R(20);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f14596b = Util.R(500);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f14597c = 0.999f;
    }

    public DefaultLivePlaybackSpeedControl(long j2, long j3, float f2) {
        this.f14586a = j2;
        this.f14587b = j3;
        this.f14588c = f2;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public final void a(MediaItem.LiveConfiguration liveConfiguration) {
        this.d = Util.R(liveConfiguration.f13838a);
        this.g = Util.R(liveConfiguration.f13839b);
        this.f14591h = Util.R(liveConfiguration.f13840c);
        float f2 = liveConfiguration.d;
        if (f2 == -3.4028235E38f) {
            f2 = 0.97f;
        }
        this.f14594k = f2;
        float f3 = liveConfiguration.f13841e;
        if (f3 == -3.4028235E38f) {
            f3 = 1.03f;
        }
        this.f14593j = f3;
        if (f2 == 1.0f && f3 == 1.0f) {
            this.d = -9223372036854775807L;
        }
        f();
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public final float b(long j2, long j3) {
        if (this.d == -9223372036854775807L) {
            return 1.0f;
        }
        long j4 = j2 - j3;
        long j5 = this.n;
        if (j5 == -9223372036854775807L) {
            this.n = j4;
            this.o = 0L;
        } else {
            float f2 = j5;
            float f3 = this.f14588c;
            float f4 = 1.0f - f3;
            long jMax = Math.max(j4, (long) ((j4 * f4) + (f2 * f3)));
            this.n = jMax;
            this.o = (long) ((f4 * Math.abs(j4 - jMax)) + (f3 * this.o));
        }
        if (this.m != -9223372036854775807L && SystemClock.elapsedRealtime() - this.m < 1000) {
            return this.l;
        }
        this.m = SystemClock.elapsedRealtime();
        long j6 = (this.o * 3) + this.n;
        if (this.f14592i > j6) {
            float fR = Util.R(1000L);
            long[] jArr = {j6, this.f14590f, this.f14592i - (((long) ((this.l - 1.0f) * fR)) + ((long) ((this.f14593j - 1.0f) * fR)))};
            long j7 = jArr[0];
            for (int i2 = 1; i2 < 3; i2++) {
                long j8 = jArr[i2];
                if (j8 > j7) {
                    j7 = j8;
                }
            }
            this.f14592i = j7;
        } else {
            long jK = Util.k(j2 - ((long) (Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.l - 1.0f) / 1.0E-7f)), this.f14592i, j6);
            this.f14592i = jK;
            long j9 = this.f14591h;
            if (j9 != -9223372036854775807L && jK > j9) {
                this.f14592i = j9;
            }
        }
        long j10 = j2 - this.f14592i;
        if (Math.abs(j10) < this.f14586a) {
            this.l = 1.0f;
        } else {
            this.l = Util.i((1.0E-7f * j10) + 1.0f, this.f14594k, this.f14593j);
        }
        return this.l;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public final long c() {
        return this.f14592i;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public final void d() {
        long j2 = this.f14592i;
        if (j2 == -9223372036854775807L) {
            return;
        }
        long j3 = j2 + this.f14587b;
        this.f14592i = j3;
        long j4 = this.f14591h;
        if (j4 != -9223372036854775807L && j3 > j4) {
            this.f14592i = j4;
        }
        this.m = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public final void e(long j2) {
        this.f14589e = j2;
        f();
    }

    public final void f() {
        long j2;
        long j3 = this.d;
        if (j3 != -9223372036854775807L) {
            j2 = this.f14589e;
            if (j2 == -9223372036854775807L) {
                long j4 = this.g;
                if (j4 != -9223372036854775807L && j3 < j4) {
                    j3 = j4;
                }
                j2 = this.f14591h;
                if (j2 == -9223372036854775807L || j3 <= j2) {
                    j2 = j3;
                }
            }
        } else {
            j2 = -9223372036854775807L;
        }
        if (this.f14590f == j2) {
            return;
        }
        this.f14590f = j2;
        this.f14592i = j2;
        this.n = -9223372036854775807L;
        this.o = -9223372036854775807L;
        this.m = -9223372036854775807L;
    }
}
