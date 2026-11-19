package androidx.media3.extractor;

import androidx.media3.common.util.Util;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ChunkIndex implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f16110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f16111c;
    public final long[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f16112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f16113f;

    public ChunkIndex(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f16110b = iArr;
        this.f16111c = jArr;
        this.d = jArr2;
        this.f16112e = jArr3;
        int length = iArr.length;
        this.f16109a = length;
        if (length > 0) {
            this.f16113f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f16113f = 0L;
        }
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        long[] jArr = this.f16112e;
        int iF = Util.f(jArr, j2, true);
        long j3 = jArr[iF];
        long[] jArr2 = this.f16111c;
        SeekPoint seekPoint = new SeekPoint(j3, jArr2[iF]);
        if (seekPoint.f16196a >= j2 || iF == this.f16109a - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i2 = iF + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(jArr[i2], jArr2[i2]));
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16113f;
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f16109a + ", sizes=" + Arrays.toString(this.f16110b) + ", offsets=" + Arrays.toString(this.f16111c) + ", timeUs=" + Arrays.toString(this.f16112e) + ", durationsUs=" + Arrays.toString(this.d) + ")";
    }
}
