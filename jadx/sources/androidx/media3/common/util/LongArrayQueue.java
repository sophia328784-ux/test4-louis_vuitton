package androidx.media3.common.util;

import com.google.common.base.Preconditions;
import defpackage.b21;

/* JADX INFO: loaded from: classes.dex */
public final class LongArrayQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14177c;
    public long[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14178e;

    public LongArrayQueue(int i2) {
        Preconditions.g(i2 >= 0 && i2 <= 1073741824);
        i2 = i2 == 0 ? 1 : i2;
        i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
        this.f14175a = 0;
        this.f14176b = -1;
        this.f14177c = 0;
        long[] jArr = new long[i2];
        this.d = jArr;
        this.f14178e = jArr.length - 1;
    }

    public final long a() {
        int i2 = this.f14177c;
        if (i2 == 0) {
            b21.x();
            return 0L;
        }
        long[] jArr = this.d;
        int i3 = this.f14175a;
        long j2 = jArr[i3];
        this.f14175a = this.f14178e & (i3 + 1);
        this.f14177c = i2 - 1;
        return j2;
    }

    public LongArrayQueue() {
        this(16);
    }
}
