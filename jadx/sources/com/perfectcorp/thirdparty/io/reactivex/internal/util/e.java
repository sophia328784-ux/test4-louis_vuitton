package com.perfectcorp.thirdparty.io.reactivex.internal.util;

import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import defpackage.pq0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Throwable f43154a = new a("No further exceptions");

    public static final class a extends Throwable {
        @Override // java.lang.Throwable
        public final Throwable fillInStackTrace() {
            return this;
        }
    }

    public static String a(long j2, TimeUnit timeUnit) {
        StringBuilder sbQ = pq0.q(j2, "The source did not signal an event for ", " ");
        sbQ.append(timeUnit.toString().toLowerCase());
        sbQ.append(" and has been terminated.");
        return sbQ.toString();
    }

    public static Throwable b(AtomicReference atomicReference) {
        Throwable th = (Throwable) atomicReference.get();
        Throwable th2 = f43154a;
        return th != th2 ? (Throwable) atomicReference.getAndSet(th2) : th;
    }

    public static boolean c(AtomicReference atomicReference, Throwable th) {
        while (true) {
            Throwable th2 = (Throwable) atomicReference.get();
            if (th2 == f43154a) {
                return false;
            }
            Throwable compositeException = th2 == null ? th : new CompositeException(th2, th);
            while (!atomicReference.compareAndSet(th2, compositeException)) {
                if (atomicReference.get() != th2) {
                }
            }
            return true;
        }
    }
}
