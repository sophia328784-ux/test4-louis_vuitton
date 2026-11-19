package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class TimedValueQueue<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long[] f28448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f28449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28450c;
    public int d;

    public TimedValueQueue(int i2) {
        this.f28448a = new long[i2];
        this.f28449b = new Object[i2];
    }

    public final Object a(long j2, boolean z) {
        long j3 = Long.MAX_VALUE;
        Object obj = null;
        while (true) {
            int i2 = this.d;
            if (i2 <= 0) {
                break;
            }
            long j4 = j2 - this.f28448a[this.f28450c];
            if (j4 < 0 && (z || (-j4) >= j3)) {
                break;
            }
            Assertions.b(i2 > 0);
            int i3 = this.f28450c;
            Object[] objArr = this.f28449b;
            Object obj2 = objArr[i3];
            objArr[i3] = null;
            this.f28450c = (i3 + 1) % objArr.length;
            this.d--;
            obj = obj2;
            j3 = j4;
        }
        return obj;
    }

    public TimedValueQueue() {
        this(10);
    }
}
