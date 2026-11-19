package io.reactivex.rxjava3.operators;

import defpackage.r81;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes4.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements SimplePlainQueue<E> {
    public static final Integer g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f71142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicLong f71143c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicLong f71144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f71145f;

    public SpscArrayQueue(int i2) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i2 - 1)));
        this.f71142b = length() - 1;
        this.f71143c = new AtomicLong();
        this.f71144e = new AtomicLong();
        this.f71145f = Math.min(i2 / 4, g.intValue());
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
        return this.f71143c.get() == this.f71144e.get();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean offer(Object obj) {
        if (obj == 0) {
            r81.d("Null is not a valid element");
            return false;
        }
        AtomicLong atomicLong = this.f71143c;
        long j2 = atomicLong.get();
        int i2 = this.f71142b;
        int i3 = ((int) j2) & i2;
        if (j2 >= this.d) {
            long j3 = ((long) this.f71145f) + j2;
            if (get(i2 & ((int) j3)) == null) {
                this.d = j3;
            } else if (get(i3) != null) {
                return false;
            }
        }
        lazySet(i3, obj);
        atomicLong.lazySet(j2 + 1);
        return true;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        AtomicLong atomicLong = this.f71144e;
        long j2 = atomicLong.get();
        int i2 = ((int) j2) & this.f71142b;
        E e2 = get(i2);
        if (e2 == null) {
            return null;
        }
        atomicLong.lazySet(j2 + 1);
        lazySet(i2, null);
        return e2;
    }
}
