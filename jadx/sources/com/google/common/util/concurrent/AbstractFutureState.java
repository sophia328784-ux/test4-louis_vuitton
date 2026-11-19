package com.google.common.util.concurrent;

import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.b2;
import defpackage.c2;
import defpackage.pq0;
import defpackage.r81;
import defpackage.tr;
import defpackage.x1;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractFutureState<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {
    private static final AtomicHelper ATOMIC_HELPER;
    static final boolean GENERATE_CANCELLATION_CAUSES;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    volatile AbstractFuture.Listener listenersField;
    volatile Object valueField;
    volatile Waiter waitersField;
    static final Object NULL = new Object();
    static final LazyLogger log = new LazyLogger(AbstractFuture.class);

    public static abstract class AtomicHelper {
        public abstract String a();

        public abstract boolean b(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2);

        public abstract boolean c(AbstractFutureState abstractFutureState, Object obj, Object obj2);

        public abstract boolean d(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2);

        public abstract AbstractFuture.Listener e(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener);

        public abstract Waiter f(AbstractFutureState abstractFutureState);

        public abstract void g(Waiter waiter, Waiter waiter2);

        public abstract void h(Waiter waiter, Thread thread);
    }

    public static final class AtomicReferenceFieldUpdaterAtomicHelper extends AtomicHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f33787a = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, "a");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f33788b = AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, NBSSpanMetricUnit.Bit);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f33789c = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Waiter.class, "waitersField");
        public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, AbstractFuture.Listener.class, "listenersField");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f33790e = AtomicReferenceFieldUpdater.newUpdater(AbstractFutureState.class, Object.class, "valueField");

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final String a() {
            return "AtomicReferenceFieldUpdaterAtomicHelper";
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureState, listener, listener2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFutureState) == listener);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f33790e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureState, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFutureState) == obj);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean d(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f33789c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFutureState, waiter, waiter2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFutureState) == waiter);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener e(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener) {
            return (AbstractFuture.Listener) d.getAndSet(abstractFutureState, listener);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter f(AbstractFutureState abstractFutureState) {
            return (Waiter) f33789c.getAndSet(abstractFutureState, Waiter.f33796c);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Waiter waiter2) {
            f33788b.lazySet(waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void h(Waiter waiter, Thread thread) {
            f33787a.lazySet(waiter, thread);
        }
    }

    public static final class SynchronizedHelper extends AtomicHelper {
        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final String a() {
            return "SynchronizedHelper";
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            synchronized (abstractFutureState) {
                try {
                    if (abstractFutureState.listenersField != listener) {
                        return false;
                    }
                    abstractFutureState.listenersField = listener2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            synchronized (abstractFutureState) {
                try {
                    if (abstractFutureState.valueField != obj) {
                        return false;
                    }
                    abstractFutureState.valueField = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean d(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            synchronized (abstractFutureState) {
                try {
                    if (abstractFutureState.waitersField != waiter) {
                        return false;
                    }
                    abstractFutureState.waitersField = waiter2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener e(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener) {
            AbstractFuture.Listener listener2;
            synchronized (abstractFutureState) {
                try {
                    listener2 = abstractFutureState.listenersField;
                    if (listener2 != listener) {
                        abstractFutureState.listenersField = listener;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return listener2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter f(AbstractFutureState abstractFutureState) {
            Waiter waiter;
            Waiter waiter2 = Waiter.f33796c;
            synchronized (abstractFutureState) {
                try {
                    waiter = abstractFutureState.waitersField;
                    if (waiter != waiter2) {
                        abstractFutureState.waitersField = waiter2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return waiter;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Waiter waiter2) {
            waiter.f33798b = waiter2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void h(Waiter waiter, Thread thread) {
            waiter.f33797a = thread;
        }
    }

    public static final class UnsafeAtomicHelper extends AtomicHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Unsafe f33791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final long f33792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final long f33793c;
        public static final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final long f33794e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final long f33795f;

        static {
            Unsafe unsafeI;
            try {
                try {
                    unsafeI = Unsafe.getUnsafe();
                } catch (SecurityException unused) {
                    try {
                        unsafeI = (Unsafe) Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class).invoke(null, new a());
                    } catch (Exception unused2) {
                        unsafeI = i();
                        Unsafe unsafe = unsafeI;
                    }
                }
                try {
                    f33793c = unsafeI.objectFieldOffset(AbstractFutureState.class.getDeclaredField("waitersField"));
                    f33792b = unsafeI.objectFieldOffset(AbstractFutureState.class.getDeclaredField("listenersField"));
                    d = unsafeI.objectFieldOffset(AbstractFutureState.class.getDeclaredField("valueField"));
                    f33794e = unsafeI.objectFieldOffset(Waiter.class.getDeclaredField("a"));
                    f33795f = unsafeI.objectFieldOffset(Waiter.class.getDeclaredField(NBSSpanMetricUnit.Bit));
                    f33791a = unsafeI;
                } catch (NoSuchFieldException e2) {
                    x1.m(e2);
                }
            } catch (Exception e3) {
                r81.g("Could not initialize intrinsics", e3);
            }
        }

        public static /* synthetic */ Unsafe i() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final String a() {
            return "UnsafeAtomicHelper";
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean b(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
            return b2.a(f33791a, abstractFutureState, f33792b, listener, listener2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean c(AbstractFutureState abstractFutureState, Object obj, Object obj2) {
            return c2.a(f33791a, abstractFutureState, d, obj, obj2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final boolean d(AbstractFutureState abstractFutureState, Waiter waiter, Waiter waiter2) {
            return b2.a(f33791a, abstractFutureState, f33793c, waiter, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final AbstractFuture.Listener e(AbstractFutureState abstractFutureState, AbstractFuture.Listener listener) {
            AbstractFuture.Listener listener2;
            do {
                listener2 = abstractFutureState.listenersField;
                if (listener == listener2) {
                    break;
                }
            } while (!b(abstractFutureState, listener2, listener));
            return listener2;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final Waiter f(AbstractFutureState abstractFutureState) {
            Waiter waiter;
            Waiter waiter2 = Waiter.f33796c;
            do {
                waiter = abstractFutureState.waitersField;
                if (waiter2 == waiter) {
                    break;
                }
            } while (!d(abstractFutureState, waiter, waiter2));
            return waiter;
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void g(Waiter waiter, Waiter waiter2) {
            f33791a.putObject(waiter, f33795f, waiter2);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState.AtomicHelper
        public final void h(Waiter waiter, Thread thread) {
            f33791a.putObject(waiter, f33794e, thread);
        }
    }

    public static final class Waiter {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Waiter f33796c = new Waiter();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile Thread f33797a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile Waiter f33798b;

        public Waiter() {
            AbstractFutureState.access$000(this, Thread.currentThread());
        }
    }

    static {
        boolean z;
        AtomicHelper synchronizedHelper;
        Throwable th;
        AtomicHelper unsafeAtomicHelper;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        GENERATE_CANCELLATION_CAUSES = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable e2 = null;
        if (property == null || property.contains("Android")) {
            try {
                unsafeAtomicHelper = new UnsafeAtomicHelper();
            } catch (Error | Exception e3) {
                try {
                    synchronizedHelper = new AtomicReferenceFieldUpdaterAtomicHelper();
                } catch (Error | Exception e4) {
                    e2 = e4;
                    synchronizedHelper = new SynchronizedHelper();
                }
                AtomicHelper atomicHelper = synchronizedHelper;
                th = e3;
                unsafeAtomicHelper = atomicHelper;
            }
        } else {
            try {
                unsafeAtomicHelper = new AtomicReferenceFieldUpdaterAtomicHelper();
            } catch (NoClassDefFoundError unused2) {
                unsafeAtomicHelper = new SynchronizedHelper();
            }
        }
        th = null;
        ATOMIC_HELPER = unsafeAtomicHelper;
        if (e2 != null) {
            LazyLogger lazyLogger = log;
            Logger loggerA = lazyLogger.a();
            Level level = Level.SEVERE;
            loggerA.log(level, "UnsafeAtomicHelper is broken!", th);
            lazyLogger.a().log(level, "AtomicReferenceFieldUpdaterAtomicHelper is broken!", e2);
        }
    }

    public static void access$000(Waiter waiter, Thread thread) {
        ATOMIC_HELPER.h(waiter, thread);
    }

    public static void access$100(Waiter waiter, Waiter waiter2) {
        ATOMIC_HELPER.g(waiter, waiter2);
    }

    public static String atomicHelperTypeForTest() {
        return ATOMIC_HELPER.a();
    }

    public static boolean casValue(AbstractFutureState<?> abstractFutureState, Object obj, Object obj2) {
        return ATOMIC_HELPER.c(abstractFutureState, obj, obj2);
    }

    public final void a(Waiter waiter) {
        waiter.f33797a = null;
        while (true) {
            Waiter waiter2 = this.waitersField;
            if (waiter2 == Waiter.f33796c) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.f33798b;
                if (waiter2.f33797a != null) {
                    waiter3 = waiter2;
                } else if (waiter3 != null) {
                    waiter3.f33798b = waiter4;
                    if (waiter3.f33797a == null) {
                    }
                } else if (!ATOMIC_HELPER.d(this, waiter2, waiter4)) {
                }
                waiter2 = waiter4;
            }
            return;
        }
    }

    public final V blockingGet(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long j3;
        Waiter waiter = Waiter.f33796c;
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.valueField;
        if ((obj != null) && AbstractFuture.notInstanceOfDelegatingToFuture(obj)) {
            return (V) AbstractFuture.getDoneValue(obj);
        }
        long j4 = 0;
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            Waiter waiter2 = this.waitersField;
            if (waiter2 != waiter) {
                Waiter waiter3 = new Waiter();
                while (true) {
                    access$100(waiter3, waiter2);
                    if (ATOMIC_HELPER.d(this, waiter2, waiter3)) {
                        j3 = j4;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                a(waiter3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.valueField;
                            if ((obj2 != null) && AbstractFuture.notInstanceOfDelegatingToFuture(obj2)) {
                                return (V) AbstractFuture.getDoneValue(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        a(waiter3);
                        break;
                    }
                    long j5 = j4;
                    waiter2 = this.waitersField;
                    if (waiter2 != waiter) {
                        j4 = j5;
                    }
                }
            }
            Object obj3 = this.valueField;
            Objects.requireNonNull(obj3);
            return (V) AbstractFuture.getDoneValue(obj3);
        }
        j3 = 0;
        while (nanos > j3) {
            Object obj4 = this.valueField;
            if ((obj4 != null) && AbstractFuture.notInstanceOfDelegatingToFuture(obj4)) {
                return (V) AbstractFuture.getDoneValue(obj4);
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
        if (nanos + 1000 < j3) {
            String strConcat = string3.concat(" (plus ");
            long j6 = -nanos;
            long jConvert = timeUnit.convert(j6, TimeUnit.NANOSECONDS);
            long nanos2 = j6 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == j3 || nanos2 > 1000;
            if (jConvert > j3) {
                String strConcat2 = strConcat + jConvert + " " + lowerCase;
                if (z) {
                    strConcat2 = strConcat2.concat(",");
                }
                strConcat = strConcat2.concat(" ");
            }
            if (z) {
                strConcat = strConcat + nanos2 + " nanoseconds ";
            }
            string3 = strConcat.concat("delay)");
        }
        if (isDone()) {
            throw new TimeoutException(string3.concat(" but future completed as timeout expired"));
        }
        throw new TimeoutException(tr.h(string3, " for ", string));
    }

    public final boolean casListeners(AbstractFuture.Listener listener, AbstractFuture.Listener listener2) {
        return ATOMIC_HELPER.b(this, listener, listener2);
    }

    public final AbstractFuture.Listener gasListeners(AbstractFuture.Listener listener) {
        return ATOMIC_HELPER.e(this, listener);
    }

    public Object get() {
        return blockingGet();
    }

    public final AbstractFuture.Listener listeners() {
        return this.listenersField;
    }

    public final void releaseWaiters() {
        for (Waiter waiterF = ATOMIC_HELPER.f(this); waiterF != null; waiterF = waiterF.f33798b) {
            Thread thread = waiterF.f33797a;
            if (thread != null) {
                waiterF.f33797a = null;
                LockSupport.unpark(thread);
            }
        }
    }

    public final Object value() {
        return this.valueField;
    }

    public Object get(long j2, TimeUnit timeUnit) {
        return blockingGet(j2, timeUnit);
    }

    public final V blockingGet() throws ExecutionException, InterruptedException {
        Object obj;
        Waiter waiter = Waiter.f33796c;
        if (!Thread.interrupted()) {
            Object obj2 = this.valueField;
            if ((obj2 != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj2)) {
                return (V) AbstractFuture.getDoneValue(obj2);
            }
            Waiter waiter2 = this.waitersField;
            if (waiter2 != waiter) {
                Waiter waiter3 = new Waiter();
                do {
                    access$100(waiter3, waiter2);
                    if (ATOMIC_HELPER.d(this, waiter2, waiter3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.valueField;
                            } else {
                                a(waiter3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & AbstractFuture.notInstanceOfDelegatingToFuture(obj)));
                        return (V) AbstractFuture.getDoneValue(obj);
                    }
                    waiter2 = this.waitersField;
                } while (waiter2 != waiter);
            }
            Object obj3 = this.valueField;
            Objects.requireNonNull(obj3);
            return (V) AbstractFuture.getDoneValue(obj3);
        }
        throw new InterruptedException();
    }
}
