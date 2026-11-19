package androidx.media3.extractor.wav;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
final class WavSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WavFormat f17219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f17221c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f17222e;

    public WavSeekMap(WavFormat wavFormat, int i2, long j2, long j3) {
        this.f17219a = wavFormat;
        this.f17220b = i2;
        this.f17221c = j2;
        long j4 = (j3 - j2) / ((long) wavFormat.d);
        this.d = j4;
        this.f17222e = i(j4);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        WavFormat wavFormat = this.f17219a;
        long j3 = (((long) wavFormat.f17212c) * j2) / (((long) this.f17220b) * 1000000);
        long j4 = this.d;
        long jK = Util.k(j3, 0L, j4 - 1);
        long j5 = ((long) wavFormat.d) * jK;
        long j6 = this.f17221c;
        long jI = i(jK);
        SeekPoint seekPoint = new SeekPoint(jI, j5 + j6);
        if (jI >= j2 || jK == j4 - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        long j7 = jK + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(i(j7), (((long) wavFormat.d) * j7) + j6));
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f17222e;
    }

    public final long i(long j2) {
        long j3 = j2 * ((long) this.f17220b);
        long j4 = this.f17219a.f17212c;
        String str = Util.f14242a;
        return Util.Z(j3, 1000000L, j4, RoundingMode.DOWN);
    }
}
