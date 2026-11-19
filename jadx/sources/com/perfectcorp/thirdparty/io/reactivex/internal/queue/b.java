package com.perfectcorp.thirdparty.io.reactivex.internal.queue;

import com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h;
import defpackage.r81;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes3.dex */
public final class b<E> extends AtomicReferenceArray<E> implements h<E> {
    public static final Integer g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f43053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicLong f43054c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicLong f43055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f43056f;

    public b(int i2) {
        super(1 << (32 - Integer.numberOfLeadingZeros(i2 - 1)));
        this.f43053b = length() - 1;
        this.f43054c = new AtomicLong();
        this.f43055e = new AtomicLong();
        this.f43056f = Math.min(i2 / 4, g.intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        if (obj == 0) {
            r81.d("Null is not a valid element");
            return false;
        }
        AtomicLong atomicLong = this.f43054c;
        long j2 = atomicLong.get();
        int i2 = this.f43053b;
        int i3 = ((int) j2) & i2;
        if (j2 >= this.d) {
            long j3 = ((long) this.f43056f) + j2;
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

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return this.f43054c.get() == this.f43055e.get();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
        while (true) {
            if (a() == null && b()) {
                return;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final Object a() {
        AtomicLong atomicLong = this.f43055e;
        long j2 = atomicLong.get();
        int i2 = ((int) j2) & this.f43053b;
        E e2 = get(i2);
        if (e2 == null) {
            return null;
        }
        atomicLong.lazySet(j2 + 1);
        lazySet(i2, null);
        return e2;
    }
}
