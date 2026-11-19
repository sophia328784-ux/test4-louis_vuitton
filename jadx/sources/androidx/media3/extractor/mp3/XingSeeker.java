package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes.dex */
final class XingSeeker implements Seeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16494c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16496f;
    public final long[] g;

    public XingSeeker(long j2, int i2, long j3, int i3, long j4, long[] jArr) {
        this.f16492a = j2;
        this.f16493b = i2;
        this.f16494c = j3;
        this.d = i3;
        this.f16495e = j4;
        this.g = jArr;
        this.f16496f = j4 != -1 ? j2 + j4 : -1L;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.f16492a + ((long) this.f16493b);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        double d;
        double d2;
        boolean zE = e();
        int i2 = this.f16493b;
        long j3 = this.f16492a;
        if (!zE) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, j3 + ((long) i2)));
        }
        long jK = Util.k(j2, 0L, this.f16494c);
        double d3 = (jK * 100.0d) / this.f16494c;
        double d4 = 0.0d;
        if (d3 <= 0.0d) {
            d = 256.0d;
        } else if (d3 >= 100.0d) {
            d = 256.0d;
            d4 = 256.0d;
        } else {
            int i3 = (int) d3;
            long[] jArr = this.g;
            jArr.getClass();
            double d5 = jArr[i3];
            if (i3 == 99) {
                d = 256.0d;
                d2 = 256.0d;
            } else {
                d = 256.0d;
                d2 = jArr[i3 + 1];
            }
            d4 = ((d2 - d5) * (d3 - ((double) i3))) + d5;
        }
        long j4 = this.f16495e;
        return new SeekMap.SeekPoints(new SeekPoint(jK, j3 + Util.k(Math.round((d4 / d) * j4), i2, j4 - 1)));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long d() {
        return this.f16496f;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return this.g != null;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long f(long j2) {
        long j3 = j2 - this.f16492a;
        if (!e() || j3 <= this.f16493b) {
            return 0L;
        }
        long[] jArr = this.g;
        jArr.getClass();
        double d = (j3 * 256.0d) / this.f16495e;
        int iF = Util.f(jArr, (long) d, true);
        long j4 = this.f16494c;
        long j5 = (((long) iF) * j4) / 100;
        long j6 = jArr[iF];
        int i2 = iF + 1;
        long j7 = (j4 * ((long) i2)) / 100;
        long j8 = iF == 99 ? 256L : jArr[i2];
        return Math.round((j6 == j8 ? 0.0d : (d - j6) / (j8 - j6)) * (j7 - j5)) + j5;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int g() {
        return this.d;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16494c;
    }
}
