package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
final class AudioTrackPositionTracker {
    public boolean A;
    public long B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Listener f14975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f14976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f14977c;
    public final AudioTrack d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f14979f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AudioTimestampPoller f14980h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f14981i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f14982j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f14983k;
    public long l;
    public Method m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public int s;
    public int t;
    public long u;
    public long v;
    public long w;
    public long x;
    public long y;
    public long z;

    public interface Listener {
        void a(long j2);

        void b(long j2);

        void c(long j2, long j3, long j4, long j5);

        void d(long j2, long j3, long j4, long j5);
    }

    public AudioTrackPositionTracker(Listener listener, Clock clock, AudioTrack audioTrack, int i2, int i3, int i4) {
        listener.getClass();
        this.f14975a = listener;
        this.f14976b = clock;
        this.d = audioTrack;
        try {
            this.m = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f14977c = new long[10];
        this.z = -9223372036854775807L;
        this.y = -9223372036854775807L;
        this.f14980h = new AudioTimestampPoller(audioTrack, listener);
        int sampleRate = audioTrack.getSampleRate();
        this.f14978e = sampleRate;
        boolean zK = Util.K(i2);
        this.g = zK;
        this.f14979f = zK ? Util.X(sampleRate, i4 / i3) : -9223372036854775807L;
        this.q = 0L;
        this.r = 0L;
        this.A = false;
        this.B = 0L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.o = 0L;
        this.n = 0L;
        this.f14981i = 1.0f;
        this.f14982j = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0064  */
    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    /* JADX WARN: Code duplicated, block: B:28:0x0071  */
    public final long a() {
        long j2;
        if (this.u != -9223372036854775807L) {
            return Math.min(this.x, c());
        }
        long jB = this.f14976b.b();
        if (jB - this.p >= 5) {
            AudioTrack audioTrack = this.d;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & BodyPartID.bodyIdMax;
                if (Build.VERSION.SDK_INT > 29) {
                    j2 = this.q;
                    if (j2 > playbackHeadPosition) {
                        if (this.A) {
                            this.B += j2;
                            this.A = false;
                        } else {
                            this.r++;
                        }
                    }
                    this.q = playbackHeadPosition;
                } else if (playbackHeadPosition != 0 || this.q <= 0 || playState != 3) {
                    this.v = -9223372036854775807L;
                    j2 = this.q;
                    if (j2 > playbackHeadPosition) {
                        if (this.A) {
                            this.B += j2;
                            this.A = false;
                        } else {
                            this.r++;
                        }
                    }
                    this.q = playbackHeadPosition;
                } else if (this.v == -9223372036854775807L) {
                    this.v = jB;
                }
            }
            this.p = jB;
        }
        return this.q + this.B + (this.r << 32);
    }

    public final long b(long j2) {
        long jA;
        int i2 = this.t;
        int i3 = this.f14978e;
        if (i2 == 0) {
            jA = this.u != -9223372036854775807L ? Util.X(i3, c()) : Util.X(i3, a());
        } else {
            jA = Util.A(this.f14981i, j2 + this.f14983k);
        }
        long jMax = Math.max(0L, jA - this.n);
        return this.u != -9223372036854775807L ? Math.min(Util.X(i3, this.x), jMax) : jMax;
    }

    public final long c() {
        AudioTrack audioTrack = this.d;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.w;
        }
        return this.w + Util.Z(Util.A(this.f14981i, Util.R(this.f14976b.b()) - this.u), this.f14978e, 1000000L, RoundingMode.UP);
    }

    public final void d(long j2) {
        long j3 = this.f14982j;
        if (j3 == -9223372036854775807L || j2 < j3) {
            return;
        }
        long jA = this.f14976b.a() - Util.f0(Util.D(this.f14981i, j2 - j3));
        this.f14982j = -9223372036854775807L;
        this.f14975a.a(jA);
    }
}
