package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.n00;
import defpackage.n81;
import defpackage.o81;
import defpackage.p81;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import defpackage.x1;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b<V> extends com.perfectcorp.thirdparty.futures.failureaccess.com.google.common.util.concurrent.internal.a implements ListenableFuture<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f42389a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f42390b = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f42391c;
    private static final Object d;
    private volatile d listeners;
    private volatile Object value;
    private volatile k waiters;

    public static abstract class a {
        public abstract void a(k kVar, k kVar2);

        public abstract void b(k kVar, Thread thread);

        public abstract boolean c(b bVar, d dVar, d dVar2);

        public abstract boolean d(b bVar, k kVar, k kVar2);

        public abstract boolean e(b bVar, Object obj, Object obj2);
    }

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.com.google.common.util.concurrent.b$b, reason: collision with other inner class name */
    public static final class C0210b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final C0210b f42392c;
        public static final C0210b d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f42393a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f42394b;

        static {
            if (b.f42389a) {
                d = null;
                f42392c = null;
            } else {
                d = new C0210b(false, null);
                f42392c = new C0210b(true, null);
            }
        }

        public C0210b(boolean z, Throwable th) {
            this.f42393a = z;
            this.f42394b = th;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f42395b = new c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.c("Failure occurred while trying to finish a future."));

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f42396a;

        public c(Throwable th) {
            th.getClass();
            this.f42396a = th;
        }
    }

    public static final class d {
        public static final d d = new d(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f42397a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f42398b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public d f42399c;

        public d(Runnable runnable, Executor executor) {
            this.f42397a = runnable;
            this.f42398b = executor;
        }
    }

    public static final class e extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f42400a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f42401b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f42402c;
        public final AtomicReferenceFieldUpdater d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f42403e;

        public e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            this.f42400a = atomicReferenceFieldUpdater;
            this.f42401b = atomicReferenceFieldUpdater2;
            this.f42402c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.f42403e = atomicReferenceFieldUpdater5;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void a(k kVar, k kVar2) {
            this.f42401b.lazySet(kVar, kVar2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void b(k kVar, Thread thread) {
            this.f42400a.lazySet(kVar, thread);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean c(b bVar, d dVar, d dVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(bVar, dVar, dVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(bVar) == dVar);
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean d(b bVar, k kVar, k kVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f42402c;
                if (atomicReferenceFieldUpdater.compareAndSet(bVar, kVar, kVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(bVar) == kVar);
            return false;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean e(b bVar, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f42403e;
                if (atomicReferenceFieldUpdater.compareAndSet(bVar, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(bVar) == obj);
            return false;
        }
    }

    public static final class f<V> implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final b<V> f42404a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ListenableFuture<? extends V> f42405b;

        public f(b<V> bVar, ListenableFuture<? extends V> listenableFuture) {
            this.f42404a = bVar;
            this.f42405b = listenableFuture;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (((b) this.f42404a).value != this) {
                return;
            }
            if (b.f42391c.e(this.f42404a, this, b.g(this.f42405b))) {
                b.h(this.f42404a);
            }
        }
    }

    public static final class g extends a {
        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void a(k kVar, k kVar2) {
            kVar.f42413b = kVar2;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void b(k kVar, Thread thread) {
            kVar.f42412a = thread;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean c(b bVar, d dVar, d dVar2) {
            synchronized (bVar) {
                try {
                    if (bVar.listeners != dVar) {
                        return false;
                    }
                    bVar.listeners = dVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean d(b bVar, k kVar, k kVar2) {
            synchronized (bVar) {
                try {
                    if (bVar.waiters != kVar) {
                        return false;
                    }
                    bVar.waiters = kVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean e(b bVar, Object obj, Object obj2) {
            synchronized (bVar) {
                try {
                    if (bVar.value != obj) {
                        return false;
                    }
                    bVar.value = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public interface h<V> extends ListenableFuture<V> {
    }

    public static abstract class i<V> extends b<V> implements h<V> {
    }

    public static final class j extends a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unsafe f42406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final long f42407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final long f42408c;
        public static final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final long f42409e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final long f42410f;

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    r81.g("Could not initialize intrinsics", e2.getCause());
                    return;
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.d());
            }
            try {
                f42408c = unsafe.objectFieldOffset(b.class.getDeclaredField("waiters"));
                f42407b = unsafe.objectFieldOffset(b.class.getDeclaredField("listeners"));
                d = unsafe.objectFieldOffset(b.class.getDeclaredField("value"));
                f42409e = unsafe.objectFieldOffset(k.class.getDeclaredField("a"));
                f42410f = unsafe.objectFieldOffset(k.class.getDeclaredField(NBSSpanMetricUnit.Bit));
                f42406a = unsafe;
            } catch (Exception e3) {
                if (e3 instanceof RuntimeException) {
                    throw ((RuntimeException) e3);
                }
                x1.m(e3);
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void a(k kVar, k kVar2) {
            f42406a.putObject(kVar, f42410f, kVar2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final void b(k kVar, Thread thread) {
            f42406a.putObject(kVar, f42409e, thread);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean c(b bVar, d dVar, d dVar2) {
            return o81.a(f42406a, bVar, f42407b, dVar, dVar2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean d(b bVar, k kVar, k kVar2) {
            return p81.a(f42406a, bVar, f42408c, kVar, kVar2);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b.a
        public final boolean e(b bVar, Object obj, Object obj2) {
            return n81.a(f42406a, bVar, d, obj, obj2);
        }
    }

    public static final class k {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final k f42411c = new k();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile Thread f42412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile k f42413b;

        public k() {
            b.f42391c.b(this, Thread.currentThread());
        }
    }

    static {
        Throwable th;
        a gVar;
        Throwable th2 = null;
        try {
            gVar = new j();
            th = null;
        } catch (Throwable th3) {
            th = th3;
            try {
                gVar = new e(AtomicReferenceFieldUpdater.newUpdater(k.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(k.class, k.class, NBSSpanMetricUnit.Bit), AtomicReferenceFieldUpdater.newUpdater(b.class, k.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(b.class, d.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "value"));
            } catch (Throwable th4) {
                th2 = th4;
                gVar = new g();
            }
        }
        f42391c = gVar;
        if (th2 != null) {
            Logger logger = f42390b;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        d = new Object();
    }

    public static Object b(Object obj) throws ExecutionException {
        if (obj instanceof C0210b) {
            Throwable th = ((C0210b) obj).f42394b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof c) {
            throw new ExecutionException(((c) obj).f42396a);
        }
        if (obj == d) {
            return null;
        }
        return obj;
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f42390b.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object g(ListenableFuture listenableFuture) {
        V v;
        Throwable thD;
        if (listenableFuture instanceof h) {
            Object obj = ((b) listenableFuture).value;
            if (!(obj instanceof C0210b)) {
                return obj;
            }
            C0210b c0210b = (C0210b) obj;
            if (c0210b.f42393a) {
                return c0210b.f42394b != null ? new C0210b(false, c0210b.f42394b) : C0210b.d;
            }
            return obj;
        }
        if ((listenableFuture instanceof com.perfectcorp.thirdparty.futures.failureaccess.com.google.common.util.concurrent.internal.a) && (thD = ((com.perfectcorp.thirdparty.futures.failureaccess.com.google.common.util.concurrent.internal.a) listenableFuture).d()) != null) {
            return new c(thD);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!f42389a) && zIsCancelled) {
            return C0210b.d;
        }
        try {
            ListenableFuture listenableFuture2 = listenableFuture;
            boolean z = false;
            while (true) {
                try {
                    v = listenableFuture2.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            if (!zIsCancelled) {
                return v == null ? d : v;
            }
            return new C0210b(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture));
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new C0210b(false, e2);
            }
            return new c(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e2));
        } catch (ExecutionException e3) {
            if (!zIsCancelled) {
                return new c(e3.getCause());
            }
            return new C0210b(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e3));
        } catch (Throwable th2) {
            return new c(th2);
        }
    }

    public static void h(b bVar) {
        d dVar;
        d dVar2;
        d dVar3 = null;
        while (true) {
            k kVar = bVar.waiters;
            if (f42391c.d(bVar, kVar, k.f42411c)) {
                while (kVar != null) {
                    Thread thread = kVar.f42412a;
                    if (thread != null) {
                        kVar.f42412a = null;
                        LockSupport.unpark(thread);
                    }
                    kVar = kVar.f42413b;
                }
                bVar.b();
                do {
                    dVar = bVar.listeners;
                } while (!f42391c.c(bVar, dVar, d.d));
                while (true) {
                    dVar2 = dVar3;
                    dVar3 = dVar;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar = dVar3.f42399c;
                    dVar3.f42399c = dVar2;
                }
                while (dVar2 != null) {
                    dVar3 = dVar2.f42399c;
                    Runnable runnable = dVar2.f42397a;
                    if (runnable instanceof f) {
                        f fVar = (f) runnable;
                        bVar = fVar.f42404a;
                        if (bVar.value == fVar) {
                            if (!f42391c.e(bVar, fVar, g(fVar.f42405b))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        e(runnable, dVar2.f42398b);
                    }
                    dVar2 = dVar3;
                }
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String a() {
        Object obj = this.value;
        if (obj instanceof f) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ListenableFuture<? extends V> listenableFuture = ((f) obj).f42405b;
            return n00.r(listenableFuture == this ? "this future" : String.valueOf(listenableFuture), "]", sb);
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        d dVar;
        d dVar2 = d.d;
        Preconditions.d(runnable, "Runnable was null.");
        Preconditions.d(executor, "Executor was null.");
        if (!isDone() && (dVar = this.listeners) != dVar2) {
            d dVar3 = new d(runnable, executor);
            do {
                dVar3.f42399c = dVar;
                if (f42391c.c(this, dVar, dVar3)) {
                    return;
                } else {
                    dVar = this.listeners;
                }
            } while (dVar != dVar2);
        }
        e(runnable, executor);
    }

    public final void c(k kVar) {
        kVar.f42412a = null;
        while (true) {
            k kVar2 = this.waiters;
            if (kVar2 == k.f42411c) {
                return;
            }
            k kVar3 = null;
            while (kVar2 != null) {
                k kVar4 = kVar2.f42413b;
                if (kVar2.f42412a != null) {
                    kVar3 = kVar2;
                } else if (kVar3 != null) {
                    kVar3.f42413b = kVar4;
                    if (kVar3.f42412a == null) {
                    }
                } else if (f42391c.d(this, kVar2, kVar4)) {
                }
                kVar2 = kVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        C0210b c0210b;
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        if (f42389a) {
            c0210b = new C0210b(z, new CancellationException("Future.cancel() was called."));
        } else {
            c0210b = z ? C0210b.f42392c : C0210b.d;
        }
        boolean z2 = false;
        while (true) {
            if (f42391c.e(this, obj, c0210b)) {
                h(this);
                if (!(obj instanceof f)) {
                    break;
                }
                ListenableFuture<? extends V> listenableFuture = ((f) obj).f42405b;
                if (!(listenableFuture instanceof h)) {
                    listenableFuture.cancel(z);
                    break;
                }
                this = (b) listenableFuture;
                obj = this.value;
                if (!(obj == null) && !(obj instanceof f)) {
                    break;
                }
                z2 = true;
            } else {
                obj = this.value;
                if (!(obj instanceof f)) {
                    return z2;
                }
            }
        }
        return true;
    }

    @Override // com.perfectcorp.thirdparty.futures.failureaccess.com.google.common.util.concurrent.internal.a
    public final Throwable d() {
        if (!(this instanceof h)) {
            return null;
        }
        Object obj = this.value;
        if (obj instanceof c) {
            return ((c) obj).f42396a;
        }
        return null;
    }

    public final void f(StringBuilder sb) {
        V v;
        boolean z = false;
        while (true) {
            try {
                try {
                    v = get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e2) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e2.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e3) {
                sb.append("FAILURE, cause=[");
                sb.append(e3.getCause());
                sb.append("]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(v == this ? "this future" : String.valueOf(v));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public Object get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        k kVar = k.f42411c;
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof f))) {
            return b(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            k kVar2 = this.waiters;
            if (kVar2 != kVar) {
                k kVar3 = new k();
                z = true;
                while (true) {
                    f42391c.a(kVar3, kVar2);
                    if (f42391c.d(this, kVar2, kVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                c(kVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof f))) {
                                return b(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        c(kVar3);
                        break;
                    }
                    kVar2 = this.waiters;
                    if (kVar2 == kVar) {
                    }
                }
            }
            return b(this.value);
        }
        z = true;
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null ? z : false) && (!(obj3 instanceof f))) {
                return b(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        StringBuilder sbQ = pq0.q(j2, "Waited ", " ");
        sbQ.append(timeUnit.toString().toLowerCase(locale));
        String string3 = sbQ.toString();
        if (nanos + 1000 < 0) {
            String strConcat = string3.concat(" (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
            boolean z2 = (jConvert == 0 || nanos2 > 1000) ? z : false;
            if (jConvert > 0) {
                String strConcat2 = strConcat + jConvert + " " + lowerCase;
                if (z2) {
                    strConcat2 = strConcat2.concat(",");
                }
                strConcat = strConcat2.concat(" ");
            }
            if (z2) {
                strConcat = strConcat + nanos2 + " nanoseconds ";
            }
            string3 = strConcat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(string3.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(tr.h(string3, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.value instanceof C0210b;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object obj = this.value;
        return (!(obj instanceof f)) & (obj != null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public boolean set(V v) {
        if (v == null) {
            v = (V) d;
        }
        if (!f42391c.e(this, null, v)) {
            return false;
        }
        h(this);
        return true;
    }

    public boolean setException(Throwable th) {
        th.getClass();
        if (!f42391c.e(this, null, new c(th))) {
            return false;
        }
        h(this);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        c cVar;
        listenableFuture.getClass();
        Object obj = this.value;
        if (obj != null) {
            if (obj instanceof C0210b) {
                listenableFuture.cancel(((C0210b) obj).f42393a);
            }
        } else if (listenableFuture.isDone()) {
            if (f42391c.e(this, null, g(listenableFuture))) {
                h(this);
                return true;
            }
        } else {
            f fVar = new f(this, listenableFuture);
            if (f42391c.e(this, null, fVar)) {
                try {
                    listenableFuture.addListener(fVar, com.perfectcorp.thirdparty.com.google.common.util.concurrent.k.f42431a);
                    return true;
                } catch (Throwable th) {
                    try {
                        cVar = new c(th);
                    } catch (Throwable unused) {
                        cVar = c.f42395b;
                    }
                    f42391c.e(this, fVar, cVar);
                    return true;
                }
            }
            obj = this.value;
            if (obj instanceof C0210b) {
                listenableFuture.cancel(((C0210b) obj).f42393a);
            }
        }
        return false;
    }

    public String toString() {
        String strA;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            f(sb);
        } else {
            try {
                strA = a();
            } catch (RuntimeException e2) {
                strA = "Exception thrown from implementation: " + e2.getClass();
            }
            if (strA != null && !strA.isEmpty()) {
                defpackage.a.B(sb, "PENDING, info=[", strA, "]");
            } else if (isDone()) {
                f(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public void b() {
    }

    public final boolean c() {
        Object obj = this.value;
        return (obj instanceof C0210b) && ((C0210b) obj).f42393a;
    }

    public final void a(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(c());
        }
    }

    @Override // java.util.concurrent.Future
    public Object get() throws InterruptedException {
        Object obj;
        k kVar = k.f42411c;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && (!(obj2 instanceof f))) {
            return b(obj2);
        }
        k kVar2 = this.waiters;
        if (kVar2 != kVar) {
            k kVar3 = new k();
            do {
                f42391c.a(kVar3, kVar2);
                if (f42391c.d(this, kVar2, kVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            c(kVar3);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & (!(obj instanceof f))));
                    return b(obj);
                }
                kVar2 = this.waiters;
            } while (kVar2 != kVar);
        }
        return b(this.value);
    }
}
