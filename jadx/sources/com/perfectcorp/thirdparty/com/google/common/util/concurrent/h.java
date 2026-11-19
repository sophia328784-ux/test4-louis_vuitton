package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.collect.Sets;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f42424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f42425b = Logger.getLogger(h.class.getName());
    private volatile int remaining;
    private volatile Set<Throwable> seenExceptions = null;

    public static abstract class a {
        public abstract int a(h hVar);

        public abstract void b(h hVar, Set set);
    }

    public static final class b extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AtomicReferenceFieldUpdater f42426a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AtomicIntegerFieldUpdater f42427b;

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.h.a
        public final int a(h hVar) {
            return this.f42427b.decrementAndGet(hVar);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.h.a
        public final void b(h hVar, Set set) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = this.f42426a;
            while (!atomicReferenceFieldUpdater.compareAndSet(hVar, null, set) && atomicReferenceFieldUpdater.get(hVar) == null) {
            }
        }
    }

    public static final class c extends a {
        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.h.a
        public final int a(h hVar) {
            int i2;
            synchronized (hVar) {
                h.b(hVar);
                i2 = hVar.remaining;
            }
            return i2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.h.a
        public final void b(h hVar, Set set) {
            synchronized (hVar) {
                try {
                    if (hVar.seenExceptions == null) {
                        hVar.seenExceptions = set;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    static {
        a cVar;
        try {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdaterNewUpdater = AtomicReferenceFieldUpdater.newUpdater(h.class, Set.class, "seenExceptions");
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdaterNewUpdater = AtomicIntegerFieldUpdater.newUpdater(h.class, "remaining");
            b bVar = new b();
            bVar.f42426a = atomicReferenceFieldUpdaterNewUpdater;
            bVar.f42427b = atomicIntegerFieldUpdaterNewUpdater;
            th = null;
            cVar = bVar;
        } catch (Throwable th) {
            th = th;
            cVar = new c();
        }
        f42424a = cVar;
        if (th != null) {
            f42425b.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public h(int i2) {
        this.remaining = i2;
    }

    public static /* synthetic */ int b(h hVar) {
        int i2 = hVar.remaining;
        hVar.remaining = i2 - 1;
        return i2;
    }

    public abstract void a(Set set);

    public final Set<Throwable> c() {
        Set<Throwable> set = this.seenExceptions;
        if (set != null) {
            return set;
        }
        Set setE = Sets.e();
        a(setE);
        f42424a.b(this, setE);
        return this.seenExceptions;
    }

    public final int d() {
        return f42424a.a(this);
    }
}
