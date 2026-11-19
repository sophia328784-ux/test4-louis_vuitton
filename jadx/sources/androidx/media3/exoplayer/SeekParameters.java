package androidx.media3.exoplayer;

import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class SeekParameters {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SeekParameters f14795c;
    public static final SeekParameters d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f14796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14797b;

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
        f14795c = new SeekParameters(Long.MAX_VALUE, 0L);
        new SeekParameters(0L, Long.MAX_VALUE);
        d = seekParameters;
    }

    public SeekParameters(long j2, long j3) {
        Preconditions.g(j2 >= 0);
        Preconditions.g(j3 >= 0);
        this.f14796a = j2;
        this.f14797b = j3;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0082 A[RETURN] */
    public final long a(long j2, long j3, long j4) {
        long j5 = this.f14796a;
        long j6 = this.f14797b;
        if (j5 == 0 && j6 == 0) {
            return j2;
        }
        String str = Util.f14242a;
        long j7 = j2 - j5;
        long j8 = (((j5 ^ j2) > 0L ? 1 : ((j5 ^ j2) == 0L ? 0 : -1)) >= 0) | (((j2 ^ j7) > 0L ? 1 : ((j2 ^ j7) == 0L ? 0 : -1)) >= 0) ? j7 : ((j7 >>> 63) ^ 1) + Long.MAX_VALUE;
        if ((j8 == Long.MIN_VALUE && j7 != Long.MIN_VALUE) || (j8 == Long.MAX_VALUE && j7 != Long.MAX_VALUE)) {
            j8 = Long.MIN_VALUE;
        }
        long jA = Util.a(j2, j6);
        boolean z = j8 <= j3 && j3 <= jA;
        boolean z2 = j8 <= j4 && j4 <= jA;
        if (z && z2) {
            if (Math.abs(j3 - j2) <= Math.abs(j4 - j2)) {
                return j3;
            }
            return j4;
        }
        if (!z) {
            if (z2) {
                return j4;
            }
            return j8;
        }
        return j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SeekParameters.class == obj.getClass()) {
            SeekParameters seekParameters = (SeekParameters) obj;
            if (this.f14796a == seekParameters.f14796a && this.f14797b == seekParameters.f14797b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f14796a) * 31) + ((int) this.f14797b);
    }
}
