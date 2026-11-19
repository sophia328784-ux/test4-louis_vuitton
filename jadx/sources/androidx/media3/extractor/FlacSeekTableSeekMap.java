package androidx.media3.extractor;

import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes.dex */
public final class FlacSeekTableSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlacStreamMetadata f16148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16149b;

    public FlacSeekTableSeekMap(FlacStreamMetadata flacStreamMetadata, long j2) {
        this.f16148a = flacStreamMetadata;
        this.f16149b = j2;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        FlacStreamMetadata flacStreamMetadata = this.f16148a;
        flacStreamMetadata.f16158k.getClass();
        FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.f16158k;
        long[] jArr = seekTable.f16159a;
        long[] jArr2 = seekTable.f16160b;
        int iF = Util.f(jArr, Util.k((((long) flacStreamMetadata.f16153e) * j2) / 1000000, 0L, flacStreamMetadata.f16157j - 1), false);
        long j3 = iF == -1 ? 0L : jArr[iF];
        long j4 = iF != -1 ? jArr2[iF] : 0L;
        long j5 = (j3 * 1000000) / ((long) flacStreamMetadata.f16153e);
        long j6 = this.f16149b;
        SeekPoint seekPoint = new SeekPoint(j5, j4 + j6);
        if (seekPoint.f16196a == j2 || iF == jArr.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i2 = iF + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint((jArr[i2] * 1000000) / ((long) flacStreamMetadata.f16153e), j6 + jArr2[i2]));
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16148a.b();
    }
}
