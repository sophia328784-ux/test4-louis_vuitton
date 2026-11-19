package androidx.media3.common.util;

import defpackage.fc;
import defpackage.no0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class LongArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f14174b;

    public LongArray(int i2) {
        this.f14174b = new long[i2];
    }

    public final void a(long j2) {
        int i2 = this.f14173a;
        long[] jArr = this.f14174b;
        if (i2 == jArr.length) {
            this.f14174b = Arrays.copyOf(jArr, i2 * 2);
        }
        long[] jArr2 = this.f14174b;
        int i3 = this.f14173a;
        this.f14173a = i3 + 1;
        jArr2[i3] = j2;
    }

    public final void b(long[] jArr) {
        int length = this.f14173a + jArr.length;
        long[] jArr2 = this.f14174b;
        if (length > jArr2.length) {
            this.f14174b = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f14174b, this.f14173a, jArr.length);
        this.f14173a = length;
    }

    public final long c(int i2) {
        if (i2 >= 0 && i2 < this.f14173a) {
            return this.f14174b[i2];
        }
        no0.s(fc.q(i2, "Invalid index ", ", size is "), this.f14173a);
        return 0L;
    }

    public LongArray() {
        this(32);
    }
}
