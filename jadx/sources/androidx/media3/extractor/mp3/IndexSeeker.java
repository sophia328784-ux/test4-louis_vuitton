package androidx.media3.extractor.mp3;

import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.SeekMap;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes.dex */
final class IndexSeeker implements Seeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16463c;
    public final IndexSeekMap d;

    public IndexSeeker(long j2, long j3, long j4) {
        this.d = new IndexSeekMap(new long[]{j3}, new long[]{0}, j2);
        this.f16461a = j3;
        this.f16462b = j4;
        int i2 = -2147483647;
        if (j2 == -9223372036854775807L) {
            this.f16463c = -2147483647;
            return;
        }
        long jZ = Util.Z(j3 - j4, 8L, j2, RoundingMode.HALF_UP);
        if (jZ > 0 && jZ <= 2147483647L) {
            i2 = (int) jZ;
        }
        this.f16463c = i2;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.f16461a;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        return this.d.c(j2);
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long d() {
        return this.f16462b;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return this.d.e();
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long f(long j2) {
        IndexSeekMap indexSeekMap = this.d;
        LongArray longArray = indexSeekMap.f16178b;
        if (longArray.f14173a == 0) {
            return -9223372036854775807L;
        }
        return longArray.c(Util.c(indexSeekMap.f16177a, j2));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int g() {
        return this.f16463c;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.d.f16179c;
    }
}
