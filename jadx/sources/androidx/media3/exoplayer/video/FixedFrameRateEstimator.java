package androidx.media3.exoplayer.video;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class FixedFrameRateEstimator {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f15882c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15883e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Matcher f15880a = new Matcher();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Matcher f15881b = new Matcher();
    public long d = -9223372036854775807L;

    public static final class Matcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f15884a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15885b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f15886c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f15887e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f15888f;
        public final boolean[] g = new boolean[15];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f15889h;

        public final boolean a() {
            return this.d > 15 && this.f15889h == 0;
        }

        public final void b(long j2) {
            long j3 = this.d;
            if (j3 == 0) {
                this.f15884a = j2;
            } else if (j3 == 1) {
                long j4 = j2 - this.f15884a;
                this.f15885b = j4;
                this.f15888f = j4;
                this.f15887e = 1L;
            } else {
                long j5 = j2 - this.f15886c;
                int i2 = (int) (j3 % 15);
                long jAbs = Math.abs(j5 - this.f15885b);
                boolean[] zArr = this.g;
                if (jAbs <= 1000000) {
                    this.f15887e++;
                    this.f15888f += j5;
                    if (zArr[i2]) {
                        zArr[i2] = false;
                        this.f15889h--;
                    }
                } else if (!zArr[i2]) {
                    zArr[i2] = true;
                    this.f15889h++;
                }
            }
            this.d++;
            this.f15886c = j2;
        }

        public final void c() {
            this.d = 0L;
            this.f15887e = 0L;
            this.f15888f = 0L;
            this.f15889h = 0;
            Arrays.fill(this.g, false);
        }
    }
}
