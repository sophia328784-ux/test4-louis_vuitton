package com.google.common.util.concurrent;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
abstract class AggregateFutureState<OutputT> extends AbstractFuture.TrustedFuture<OutputT> {
    public static final AtomicHelper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LazyLogger f33801e = new LazyLogger(AggregateFutureState.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile Set f33802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f33803c;

    public static abstract class AtomicHelper {
        public abstract void a(AggregateFuture aggregateFuture, Set set);

        public abstract int b(AggregateFuture aggregateFuture);
    }

    public static final class SafeAtomicHelper extends AtomicHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AtomicReferenceFieldUpdater f33804a = AtomicReferenceFieldUpdater.newUpdater(AggregateFutureState.class, Set.class, NBSSpanMetricUnit.Bit);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AtomicIntegerFieldUpdater f33805b = AtomicIntegerFieldUpdater.newUpdater(AggregateFutureState.class, "c");

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public final void a(AggregateFuture aggregateFuture, Set set) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = f33804a;
                if (atomicReferenceFieldUpdater.compareAndSet(aggregateFuture, null, set)) {
                    return;
                }
            } while (atomicReferenceFieldUpdater.get(aggregateFuture) == null);
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public final int b(AggregateFuture aggregateFuture) {
            return f33805b.decrementAndGet(aggregateFuture);
        }
    }

    public static final class SynchronizedAtomicHelper extends AtomicHelper {
        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public final void a(AggregateFuture aggregateFuture, Set set) {
            synchronized (aggregateFuture) {
                try {
                    if (aggregateFuture.f33802b == null) {
                        aggregateFuture.f33802b = set;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AggregateFutureState.AtomicHelper
        public final int b(AggregateFuture aggregateFuture) {
            int i2;
            synchronized (aggregateFuture) {
                i2 = aggregateFuture.f33803c - 1;
                aggregateFuture.f33803c = i2;
            }
            return i2;
        }
    }

    static {
        Throwable th;
        AtomicHelper synchronizedAtomicHelper;
        try {
            synchronizedAtomicHelper = new SafeAtomicHelper();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            synchronizedAtomicHelper = new SynchronizedAtomicHelper();
        }
        d = synchronizedAtomicHelper;
        if (th != null) {
            f33801e.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }
}
