package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes.dex */
final class VbriSeeker implements Seeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f16482a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f16483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16484c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16486f;

    public VbriSeeker(long[] jArr, long[] jArr2, long j2, long j3, long j4, int i2) {
        this.f16482a = jArr;
        this.f16483b = jArr2;
        this.f16484c = j2;
        this.d = j3;
        this.f16485e = j4;
        this.f16486f = i2;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return this.d;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        long[] jArr = this.f16482a;
        int iF = Util.f(jArr, j2, true);
        long j3 = jArr[iF];
        long[] jArr2 = this.f16483b;
        SeekPoint seekPoint = new SeekPoint(j3, jArr2[iF]);
        if (seekPoint.f16196a >= j2 || iF == jArr.length - 1) {
            return new SeekMap.SeekPoints(seekPoint);
        }
        int i2 = iF + 1;
        return new SeekMap.SeekPoints(seekPoint, new SeekPoint(jArr[i2], jArr2[i2]));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long d() {
        return this.f16485e;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long f(long j2) {
        return this.f16482a[Util.f(this.f16483b, j2, true)];
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int g() {
        return this.f16486f;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16484c;
    }
}
