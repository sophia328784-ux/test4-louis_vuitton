package androidx.media3.extractor;

import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class IndexSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LongArray f16177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LongArray f16178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16179c;

    public IndexSeekMap(long[] jArr, long[] jArr2, long j2) {
        Preconditions.g(jArr.length == jArr2.length);
        int length = jArr2.length;
        if (length <= 0 || jArr2[0] <= 0) {
            this.f16177a = new LongArray(length);
            this.f16178b = new LongArray(length);
        } else {
            int i2 = length + 1;
            LongArray longArray = new LongArray(i2);
            this.f16177a = longArray;
            LongArray longArray2 = new LongArray(i2);
            this.f16178b = longArray2;
            longArray.a(0L);
            longArray2.a(0L);
        }
        this.f16177a.b(jArr);
        this.f16178b.b(jArr2);
        this.f16179c = j2;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        LongArray longArray = this.f16178b;
        if (longArray.f14173a == 0) {
            return new SeekMap.SeekPoints(SeekPoint.f16195c);
        }
        int iC = Util.c(longArray, j2);
        long jC = longArray.c(iC);
        LongArray longArray2 = this.f16177a;
        SeekPoint seekPoint = new SeekPoint(jC, longArray2.c(iC));
        if (seekPoint.f16196a == j2 || iC == longArray.f14173a - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i2 = iC + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(longArray.c(i2), longArray2.c(i2)));
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return this.f16178b.f14173a > 0;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16179c;
    }

    public final void i(long j2, long j3) {
        LongArray longArray = this.f16178b;
        int i2 = longArray.f14173a;
        LongArray longArray2 = this.f16177a;
        if (i2 == 0 && j2 > 0) {
            longArray2.a(0L);
            longArray.a(0L);
        }
        longArray2.a(j3);
        longArray.a(j2);
    }
}
