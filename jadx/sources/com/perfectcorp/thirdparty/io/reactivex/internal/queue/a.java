package com.perfectcorp.thirdparty.io.reactivex.internal.queue;

import com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h;
import defpackage.r81;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a<T> implements h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f43050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f43051c;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.queue.a$a, reason: collision with other inner class name */
    public static final class C0225a<E> extends AtomicReference<C0225a<E>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f43052b;
    }

    public a() {
        AtomicReference atomicReference = new AtomicReference();
        this.f43050b = atomicReference;
        AtomicReference atomicReference2 = new AtomicReference();
        this.f43051c = atomicReference2;
        C0225a c0225a = new C0225a();
        atomicReference2.lazySet(c0225a);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final Object a() {
        C0225a c0225a;
        AtomicReference atomicReference = this.f43051c;
        C0225a c0225a2 = (C0225a) atomicReference.get();
        C0225a c0225a3 = c0225a2.get();
        if (c0225a3 != null) {
            Object obj = c0225a3.f43052b;
            c0225a3.f43052b = null;
            atomicReference.lazySet(c0225a3);
            return obj;
        }
        if (c0225a2 == ((C0225a) this.f43050b.get())) {
            return null;
        }
        do {
            c0225a = c0225a2.get();
        } while (c0225a == null);
        Object obj2 = c0225a.f43052b;
        c0225a.f43052b = null;
        atomicReference.lazySet(c0225a);
        return obj2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return ((C0225a) this.f43051c.get()) == ((C0225a) this.f43050b.get());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
        while (a() != null && !b()) {
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        if (obj == null) {
            r81.d("Null is not a valid element");
            return false;
        }
        C0225a c0225a = new C0225a();
        c0225a.f43052b = obj;
        ((C0225a) this.f43050b.getAndSet(c0225a)).lazySet(c0225a);
        return true;
    }
}
