package com.perfectcorp.thirdparty.io.reactivex.internal.queue;

import com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h;
import defpackage.r81;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes3.dex */
public final class c<T> implements h<T> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f43057j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Object f43058k = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicLong f43059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f43060c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f43061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AtomicReferenceArray f43062f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicReferenceArray f43063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicLong f43064i;

    public c(int i2) {
        AtomicLong atomicLong = new AtomicLong();
        this.f43059b = atomicLong;
        this.f43064i = new AtomicLong();
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i2) - 1));
        int i3 = iNumberOfLeadingZeros - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iNumberOfLeadingZeros + 1);
        this.f43062f = atomicReferenceArray;
        this.f43061e = i3;
        this.f43060c = Math.min(iNumberOfLeadingZeros / 4, f43057j);
        this.f43063h = atomicReferenceArray;
        this.g = i3;
        this.d = iNumberOfLeadingZeros - 2;
        atomicLong.lazySet(0L);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        if (obj == null) {
            r81.d("Null is not a valid element");
            return false;
        }
        AtomicReferenceArray atomicReferenceArray = this.f43062f;
        AtomicLong atomicLong = this.f43059b;
        long j2 = atomicLong.get();
        int i2 = this.f43061e;
        int i3 = ((int) j2) & i2;
        if (j2 < this.d) {
            atomicReferenceArray.lazySet(i3, obj);
            atomicLong.lazySet(j2 + 1);
            return true;
        }
        long j3 = ((long) this.f43060c) + j2;
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
        this.f43062f = atomicReferenceArray2;
        this.d = (j2 + ((long) i2)) - 1;
        atomicReferenceArray2.lazySet(i3, obj);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i3, f43058k);
        atomicLong.lazySet(j4);
        return true;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return this.f43059b.get() == this.f43064i.get();
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
        AtomicReferenceArray atomicReferenceArray = this.f43063h;
        AtomicLong atomicLong = this.f43064i;
        long j2 = atomicLong.get();
        int i2 = this.g;
        int i3 = ((int) j2) & i2;
        Object obj = atomicReferenceArray.get(i3);
        boolean z = obj == f43058k;
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
        this.f43063h = atomicReferenceArray2;
        Object obj2 = atomicReferenceArray2.get(i3);
        if (obj2 != null) {
            atomicReferenceArray2.lazySet(i3, null);
            atomicLong.lazySet(j2 + 1);
        }
        return obj2;
    }
}
