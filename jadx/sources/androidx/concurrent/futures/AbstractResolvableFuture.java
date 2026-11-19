package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.a;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
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

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f11191e = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Logger f11192f = Logger.getLogger(AbstractResolvableFuture.class.getName());
    public static final AtomicHelper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f11193h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Object f11194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Listener f11195c;
    public volatile Waiter d;

    public static abstract class AtomicHelper {
        public abstract boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2);

        public abstract boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        public abstract void d(Waiter waiter, Waiter waiter2);

        public abstract void e(Waiter waiter, Thread thread);
    }

    public static final class Cancellation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Cancellation f11196c;
        public static final Cancellation d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f11197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f11198b;

        static {
            if (AbstractResolvableFuture.f11191e) {
                d = null;
                f11196c = null;
            } else {
                d = new Cancellation(false, null);
                f11196c = new Cancellation(true, null);
            }
        }

        public Cancellation(boolean z, Throwable th) {
            this.f11197a = z;
            this.f11198b = th;
        }
    }

    public static final class Failure {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f11199a;

        /* JADX INFO: renamed from: androidx.concurrent.futures.AbstractResolvableFuture$Failure$1, reason: invalid class name */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        static {
            new Failure(new AnonymousClass1("Failure occurred while trying to finish a future."));
        }

        public Failure(Throwable th) {
            boolean z = AbstractResolvableFuture.f11191e;
            th.getClass();
            this.f11199a = th;
        }
    }

    public static final class Listener {
        public static final Listener d = new Listener(null, null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f11200a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f11201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Listener f11202c;

        public Listener(Runnable runnable, Executor executor) {
            this.f11200a = runnable;
            this.f11201b = executor;
        }
    }

    public static final class SafeAtomicHelper extends AtomicHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f11203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f11204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f11205c;
        public final AtomicReferenceFieldUpdater d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f11206e;

        public SafeAtomicHelper(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            this.f11203a = atomicReferenceFieldUpdater;
            this.f11204b = atomicReferenceFieldUpdater2;
            this.f11205c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.f11206e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, listener, listener2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == listener);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f11206e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == obj);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.f11205c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, waiter, waiter2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == waiter);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            this.f11204b.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            this.f11203a.lazySet(waiter, thread);
        }
    }

    public static final class SetFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractResolvableFuture<V> owner;

        public SetFuture(AbstractResolvableFuture<V> abstractResolvableFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractResolvableFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.f11194b != this) {
                return;
            }
            if (AbstractResolvableFuture.g.b(this.owner, this, AbstractResolvableFuture.f(this.future))) {
                AbstractResolvableFuture.c(this.owner);
            }
        }
    }

    public static final class SynchronizedHelper extends AtomicHelper {
        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f11195c != listener) {
                        return false;
                    }
                    abstractResolvableFuture.f11195c = listener2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f11194b != obj) {
                        return false;
                    }
                    abstractResolvableFuture.f11194b = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.d != waiter) {
                        return false;
                    }
                    abstractResolvableFuture.d = waiter2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void d(Waiter waiter, Waiter waiter2) {
            waiter.f11209b = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        public final void e(Waiter waiter, Thread thread) {
            waiter.f11208a = thread;
        }
    }

    public static final class Waiter {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Waiter f11207c = new Waiter();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile Thread f11208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile Waiter f11209b;

        public Waiter() {
            AbstractResolvableFuture.g.e(this, Thread.currentThread());
        }
    }

    static {
        AtomicHelper synchronizedHelper;
        try {
            synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, NBSSpanMetricUnit.Bit), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, NBSSpanMetricUnit.Day), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, NBSSpanMetricUnit.Bit));
            th = null;
        } catch (Throwable th) {
            th = th;
            synchronizedHelper = new SynchronizedHelper();
        }
        g = synchronizedHelper;
        if (th != null) {
            f11192f.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f11193h = new Object();
    }

    public static void c(AbstractResolvableFuture abstractResolvableFuture) {
        Listener listener;
        Listener listener2;
        Listener listener3 = null;
        while (true) {
            Waiter waiter = abstractResolvableFuture.d;
            if (g.c(abstractResolvableFuture, waiter, Waiter.f11207c)) {
                while (waiter != null) {
                    Thread thread = waiter.f11208a;
                    if (thread != null) {
                        waiter.f11208a = null;
                        LockSupport.unpark(thread);
                    }
                    waiter = waiter.f11209b;
                }
                abstractResolvableFuture.b();
                do {
                    listener = abstractResolvableFuture.f11195c;
                } while (!g.a(abstractResolvableFuture, listener, Listener.d));
                while (true) {
                    listener2 = listener3;
                    listener3 = listener;
                    if (listener3 == null) {
                        break;
                    }
                    listener = listener3.f11202c;
                    listener3.f11202c = listener2;
                }
                while (listener2 != null) {
                    listener3 = listener2.f11202c;
                    Runnable runnable = listener2.f11200a;
                    if (runnable instanceof SetFuture) {
                        SetFuture setFuture = (SetFuture) runnable;
                        abstractResolvableFuture = setFuture.owner;
                        if (abstractResolvableFuture.f11194b == setFuture) {
                            if (g.b(abstractResolvableFuture, setFuture, f(setFuture.future))) {
                            }
                        } else {
                            continue;
                        }
                    } else {
                        d(runnable, listener2.f11201b);
                    }
                    listener2 = listener3;
                }
                return;
            }
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            f11192f.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static Object e(Object obj) throws ExecutionException {
        if (obj instanceof Cancellation) {
            Throwable th = ((Cancellation) obj).f11198b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f11199a);
        }
        if (obj == f11193h) {
            return null;
        }
        return obj;
    }

    public static Object f(ListenableFuture listenableFuture) {
        if (listenableFuture instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) listenableFuture).f11194b;
            if (!(obj instanceof Cancellation)) {
                return obj;
            }
            Cancellation cancellation = (Cancellation) obj;
            if (cancellation.f11197a) {
                return cancellation.f11198b != null ? new Cancellation(false, cancellation.f11198b) : Cancellation.d;
            }
            return obj;
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!f11191e) && zIsCancelled) {
            return Cancellation.d;
        }
        try {
            Object objG = g(listenableFuture);
            return objG == null ? f11193h : objG;
        } catch (CancellationException e2) {
            if (zIsCancelled) {
                return new Cancellation(false, e2);
            }
            return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e2));
        } catch (ExecutionException e3) {
            return new Failure(e3.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    public static Object g(Future future) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
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
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            sb.append(objG == this ? "this future" : String.valueOf(objG));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        Listener listener = this.f11195c;
        Listener listener2 = Listener.d;
        if (listener != listener2) {
            Listener listener3 = new Listener(runnable, executor);
            do {
                listener3.f11202c = listener;
                if (g.a(this, listener, listener3)) {
                    return;
                } else {
                    listener = this.f11195c;
                }
            } while (listener != listener2);
        }
        d(runnable, executor);
    }

    public void b() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Cancellation cancellation;
        Object obj = this.f11194b;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        if (f11191e) {
            cancellation = new Cancellation(z, new CancellationException("Future.cancel() was called."));
        } else {
            cancellation = z ? Cancellation.f11196c : Cancellation.d;
        }
        boolean z2 = false;
        while (true) {
            if (g.b(this, obj, cancellation)) {
                c(this);
                if (!(obj instanceof SetFuture)) {
                    break;
                }
                ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj).future;
                if (!(listenableFuture instanceof AbstractResolvableFuture)) {
                    listenableFuture.cancel(z);
                    break;
                }
                this = (AbstractResolvableFuture) listenableFuture;
                obj = this.f11194b;
                if (!(obj == null) && !(obj instanceof SetFuture)) {
                    break;
                }
                z2 = true;
            } else {
                obj = this.f11194b;
                if (!(obj instanceof SetFuture)) {
                    return z2;
                }
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        boolean z;
        Waiter waiter = Waiter.f11207c;
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f11194b;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return e(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            Waiter waiter2 = this.d;
            if (waiter2 != waiter) {
                Waiter waiter3 = new Waiter();
                z = true;
                while (true) {
                    AtomicHelper atomicHelper = g;
                    atomicHelper.d(waiter3, waiter2);
                    if (atomicHelper.c(this, waiter2, waiter3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                i(waiter3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f11194b;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return e(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        i(waiter3);
                        break;
                    }
                    waiter2 = this.d;
                    if (waiter2 == waiter) {
                    }
                }
            }
            return e(this.f11194b);
        }
        z = true;
        while (nanos > 0) {
            Object obj3 = this.f11194b;
            if ((obj3 != null ? z : false) && (!(obj3 instanceof SetFuture))) {
                return e(obj3);
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

    /* JADX WARN: Multi-variable type inference failed */
    public String h() {
        Object obj = this.f11194b;
        if (obj instanceof SetFuture) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj).future;
            return n00.r(listenableFuture == this ? "this future" : String.valueOf(listenableFuture), "]", sb);
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void i(Waiter waiter) {
        waiter.f11208a = null;
        while (true) {
            Waiter waiter2 = this.d;
            if (waiter2 == Waiter.f11207c) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.f11209b;
                if (waiter2.f11208a != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.f11209b = waiter4;
                    if (waiter3.f11208a == null) {
                    }
                } else if (!g.c(this, waiter2, waiter4)) {
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f11194b instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f11194b;
        return (!(obj instanceof SetFuture)) & (obj != null);
    }

    public boolean j(Object obj) {
        if (obj == null) {
            obj = f11193h;
        }
        if (!g.b(this, null, obj)) {
            return false;
        }
        c(this);
        return true;
    }

    public boolean k(Throwable th) {
        th.getClass();
        if (!g.b(this, null, new Failure(th))) {
            return false;
        }
        c(this);
        return true;
    }

    public final boolean l() {
        Object obj = this.f11194b;
        return (obj instanceof Cancellation) && ((Cancellation) obj).f11197a;
    }

    public final String toString() {
        String strH;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f11194b instanceof Cancellation) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strH = h();
            } catch (RuntimeException e2) {
                strH = "Exception thrown from implementation: " + e2.getClass();
            }
            if (strH != null && !strH.isEmpty()) {
                a.B(sb, "PENDING, info=[", strH, "]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        Waiter waiter = Waiter.f11207c;
        if (!Thread.interrupted()) {
            Object obj2 = this.f11194b;
            if ((obj2 != null) & (!(obj2 instanceof SetFuture))) {
                return e(obj2);
            }
            Waiter waiter2 = this.d;
            if (waiter2 != waiter) {
                Waiter waiter3 = new Waiter();
                do {
                    AtomicHelper atomicHelper = g;
                    atomicHelper.d(waiter3, waiter2);
                    if (atomicHelper.c(this, waiter2, waiter3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f11194b;
                            } else {
                                i(waiter3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof SetFuture))));
                        return e(obj);
                    }
                    waiter2 = this.d;
                } while (waiter2 != waiter);
            }
            return e(this.f11194b);
        }
        throw new InterruptedException();
    }
}
