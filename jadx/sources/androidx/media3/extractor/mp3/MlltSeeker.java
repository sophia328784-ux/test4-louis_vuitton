package androidx.media3.extractor.mp3;

import android.util.Pair;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* JADX INFO: loaded from: classes.dex */
final class MlltSeeker implements Seeker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f16464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f16465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16466c;

    public MlltSeeker(long[] jArr, long[] jArr2, long j2) {
        this.f16464a = jArr;
        this.f16465b = jArr2;
        this.f16466c = j2 == -9223372036854775807L ? Util.R(jArr2[jArr2.length - 1]) : j2;
    }

    public static Pair i(long[] jArr, long[] jArr2, long j2) {
        int iF = Util.f(jArr, j2, true);
        long j3 = jArr[iF];
        long j4 = jArr2[iF];
        int i2 = iF + 1;
        if (i2 == jArr.length) {
            return Pair.create(Long.valueOf(j3), Long.valueOf(j4));
        }
        long j5 = jArr[i2];
        return Pair.create(Long.valueOf(j2), Long.valueOf(((long) ((j5 == j3 ? 0.0d : (j2 - j3) / (j5 - j3)) * (jArr2[i2] - j4))) + j4));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long a() {
        return 0L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final SeekMap.SeekPoints c(long j2) {
        Pair pairI = i(this.f16465b, this.f16464a, Util.f0(Util.k(j2, 0L, this.f16466c)));
        return new SeekMap.SeekPoints(new SeekPoint(Util.R(((Long) pairI.first).longValue()), ((Long) pairI.second).longValue()));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long d() {
        return -1L;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return true;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final long f(long j2) {
        return Util.R(((Long) i(this.f16464a, this.f16465b, j2).second).longValue());
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public final int g() {
        return -2147483647;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final long h() {
        return this.f16466c;
    }
}
