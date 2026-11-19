package androidx.media3.common.util;

import com.google.common.base.Preconditions;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class TimedValueQueue<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f14236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object[] f14237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14238c;
    public int d;

    public TimedValueQueue(int i2) {
        this.f14236a = new long[i2];
        this.f14237b = new Object[i2];
    }

    public final synchronized void a(long j2, Object obj) {
        int i2 = this.d;
        if (i2 > 0) {
            if (j2 <= this.f14236a[((this.f14238c + i2) - 1) % this.f14237b.length]) {
                b();
            }
        }
        c();
        int i3 = this.f14238c;
        int i4 = this.d;
        Object[] objArr = this.f14237b;
        int length = (i3 + i4) % objArr.length;
        this.f14236a[length] = j2;
        objArr[length] = obj;
        this.d = i4 + 1;
    }

    public final synchronized void b() {
        this.f14238c = 0;
        this.d = 0;
        Arrays.fill(this.f14237b, (Object) null);
    }

    public final void c() {
        int length = this.f14237b.length;
        if (this.d < length) {
            return;
        }
        int i2 = length * 2;
        long[] jArr = new long[i2];
        Object[] objArr = new Object[i2];
        int i3 = this.f14238c;
        int i4 = length - i3;
        System.arraycopy(this.f14236a, i3, jArr, 0, i4);
        System.arraycopy(this.f14237b, this.f14238c, objArr, 0, i4);
        int i5 = this.f14238c;
        if (i5 > 0) {
            System.arraycopy(this.f14236a, 0, jArr, i4, i5);
            System.arraycopy(this.f14237b, 0, objArr, i4, this.f14238c);
        }
        this.f14236a = jArr;
        this.f14237b = objArr;
        this.f14238c = 0;
    }

    public final Object d(long j2, boolean z) {
        Object objG = null;
        long j3 = Long.MAX_VALUE;
        while (this.d > 0) {
            long j4 = j2 - this.f14236a[this.f14238c];
            if (j4 < 0 && (z || (-j4) >= j3)) {
                break;
            }
            objG = g();
            j3 = j4;
        }
        return objG;
    }

    public final synchronized Object e() {
        return this.d == 0 ? null : g();
    }

    public final synchronized Object f(long j2) {
        return d(j2, true);
    }

    public final Object g() {
        Preconditions.q(this.d > 0);
        Object[] objArr = this.f14237b;
        int i2 = this.f14238c;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.f14238c = (i2 + 1) % objArr.length;
        this.d--;
        return obj;
    }

    public final synchronized int h() {
        return this.d;
    }

    public TimedValueQueue() {
        this(10);
    }
}
