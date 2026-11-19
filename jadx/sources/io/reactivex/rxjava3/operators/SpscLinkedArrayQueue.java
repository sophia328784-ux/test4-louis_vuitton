package io.reactivex.rxjava3.operators;

import defpackage.r81;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes4.dex */
public final class SpscLinkedArrayQueue<T> implements SimplePlainQueue<T> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f71146j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f71147k = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f71148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71149c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AtomicReferenceArray f71151f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicReferenceArray f71152h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicLong f71153i;

    public SpscLinkedArrayQueue(int i2) {
        AtomicLong atomicLong = new AtomicLong();
        this.f71148b = atomicLong;
        this.f71153i = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i2) - 1));
        int i3 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f71151f = atomicReferenceArray;
        this.f71150e = i3;
        this.f71149c = Math.min(iNumberOfLeadingZeros / 4, f71146j);
        this.f71152h = atomicReferenceArray;
        this.g = i3;
        this.d = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    public final boolean a(Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray = this.f71151f;
        AtomicLong atomicLong = this.f71148b;
        long j2 = atomicLong.get();
        long j3 = 2 + j2;
        int i2 = this.f71150e;
        if (atomicReferenceArray.get(((int) j3) & i2) == null) {
            int i3 = ((int) j2) & i2;
            atomicReferenceArray.lazySet(i3 + 1, obj2);
            atomicReferenceArray.lazySet(i3, obj);
            atomicLong.lazySet(j3);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f71151f = atomicReferenceArray2;
        int i4 = ((int) j2) & i2;
        atomicReferenceArray2.lazySet(i4 + 1, obj2);
        atomicReferenceArray2.lazySet(i4, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i4, f71147k);
        atomicLong.lazySet(j3);
        return true;
    }

    public final Object b() {
        AtomicReferenceArray atomicReferenceArray = this.f71152h;
        int i2 = (int) this.f71153i.get();
        int i3 = this.g;
        int i4 = i2 & i3;
        Object obj = atomicReferenceArray.get(i4);
        if (obj != f71147k) {
            return obj;
        }
        int i5 = i3 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i5);
        atomicReferenceArray.lazySet(i5, null);
        this.f71152h = atomicReferenceArray2;
        return atomicReferenceArray2.get(i4);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean isEmpty() {
        return this.f71148b.get() == this.f71153i.get();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean offer(Object obj) {
        if (obj == null) {
            r81.d("Null is not a valid element");
            return false;
        }
        AtomicReferenceArray atomicReferenceArray = this.f71151f;
        AtomicLong atomicLong = this.f71148b;
        long j2 = atomicLong.get();
        int i2 = this.f71150e;
        int i3 = ((int) j2) & i2;
        if (j2 < this.d) {
            atomicReferenceArray.lazySet(i3, obj);
            atomicLong.lazySet(j2 + 1);
            return true;
        }
        long j3 = ((long) this.f71149c) + j2;
        if (atomicReferenceArray.get(((int) j3) & i2) == null) {
            this.d = j3 - 1;
            atomicReferenceArray.lazySet(i3, obj);
            atomicLong.lazySet(j2 + 1);
            return true;
        }
        long j4 = j2 + 1;
        if (atomicReferenceArray.get(((int) j4) & i2) == null) {
            atomicReferenceArray.lazySet(i3, obj);
            atomicLong.lazySet(j4);
            return true;
        }
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f71151f = atomicReferenceArray2;
        this.d = (j2 + ((long) i2)) - 1;
        atomicReferenceArray2.lazySet(i3, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i3, f71147k);
        atomicLong.lazySet(j4);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f71152h;
        AtomicLong atomicLong = this.f71153i;
        long j2 = atomicLong.get();
        int i2 = this.g;
        int i3 = ((int) j2) & i2;
        Object obj = atomicReferenceArray.get(i3);
        boolean z = obj == f71147k;
        if (obj != null && !z) {
            atomicReferenceArray.lazySet(i3, null);
            atomicLong.lazySet(j2 + 1);
            return obj;
        }
        if (!z) {
            return null;
        }
        int i4 = i2 + 1;
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i4);
        atomicReferenceArray.lazySet(i4, null);
        this.f71152h = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i3);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i3, null);
            atomicLong.lazySet(j2 + 1);
        }
        return obj2;
    }
}
