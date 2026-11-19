package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import defpackage.md;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractFuture<V> extends AbstractFutureState<V> {

    public static final class Cancellation {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Cancellation f33779c;
        public static final Cancellation d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f33780a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f33781b;

        static {
            if (AbstractFutureState.GENERATE_CANCELLATION_CAUSES) {
                d = null;
                f33779c = null;
            } else {
                d = new Cancellation(false, null);
                f33779c = new Cancellation(true, null);
            }
        }

        public Cancellation(boolean z, Throwable th) {
            this.f33780a = z;
            this.f33781b = th;
        }
    }

    public static final class DelegatingToFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractFuture<V> owner;

        public DelegatingToFuture(AbstractFuture<V> abstractFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value() != this) {
                return;
            }
            if (AbstractFutureState.casValue(this.owner, this, AbstractFuture.f(this.future))) {
                AbstractFuture.d(this.owner, false);
            }
        }
    }

    public static final class Failure {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Failure f33782b = new Failure(new AnonymousClass1("Failure occurred while trying to finish a future."));

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f33783a;

        /* JADX INFO: renamed from: com.google.common.util.concurrent.AbstractFuture$Failure$1, reason: invalid class name */
        public class AnonymousClass1 extends Throwable {
            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        }

        public Failure(Throwable th) {
            th.getClass();
            this.f33783a = th;
        }
    }

    public interface Trusted<V> extends ListenableFuture<V> {
    }

    public static void d(AbstractFuture abstractFuture, boolean z) {
        Listener listener = null;
        while (true) {
            abstractFuture.releaseWaiters();
            if (z) {
                abstractFuture.interruptTask();
                z = false;
            }
            abstractFuture.afterDone();
            Listener listener2 = listener;
            Listener listenerGasListeners = abstractFuture.gasListeners(Listener.d);
            Listener listener3 = listener2;
            while (listenerGasListeners != null) {
                Listener listener4 = listenerGasListeners.f33786c;
                listenerGasListeners.f33786c = listener3;
                listener3 = listenerGasListeners;
                listenerGasListeners = listener4;
            }
            while (listener3 != null) {
                listener = listener3.f33786c;
                Runnable runnable = listener3.f33784a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof DelegatingToFuture) {
                    DelegatingToFuture delegatingToFuture = (DelegatingToFuture) runnable;
                    abstractFuture = delegatingToFuture.owner;
                    if (abstractFuture.value() != delegatingToFuture || !AbstractFutureState.casValue(abstractFuture, delegatingToFuture, f(delegatingToFuture.future))) {
                    }
                } else {
                    Executor executor = listener3.f33785b;
                    Objects.requireNonNull(executor);
                    e(runnable, executor);
                }
                listener3 = listener;
            }
            return;
        }
    }

    public static void e(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            AbstractFutureState.log.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(ListenableFuture listenableFuture) {
        Object obj;
        Throwable thTryInternalFastPathGetFailure;
        if (listenableFuture instanceof Trusted) {
            Object objValue = ((AbstractFuture) listenableFuture).value();
            if (objValue instanceof Cancellation) {
                Cancellation cancellation = (Cancellation) objValue;
                Throwable th = cancellation.f33781b;
                if (cancellation.f33780a) {
                    objValue = th != null ? new Cancellation(false, th) : Cancellation.d;
                }
            }
            Objects.requireNonNull(objValue);
            return objValue;
        }
        if ((listenableFuture instanceof InternalFutureFailureAccess) && (thTryInternalFastPathGetFailure = ((InternalFutureFailureAccess) listenableFuture).tryInternalFastPathGetFailure()) != null) {
            return new Failure(thTryInternalFastPathGetFailure);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        boolean z = true;
        if ((!AbstractFutureState.GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            Cancellation cancellation2 = Cancellation.d;
            Objects.requireNonNull(cancellation2);
            return cancellation2;
        }
        boolean z2 = false;
        while (true) {
            try {
                try {
                    obj = listenableFuture.get();
                    break;
                } catch (InterruptedException unused) {
                    z2 = z;
                } catch (Throwable th2) {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                    throw th2;
                }
            } catch (Error | Exception e2) {
                return new Failure(e2);
            } catch (CancellationException e3) {
                if (zIsCancelled) {
                    return new Cancellation(false, e3);
                }
                return new Failure(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e3));
            } catch (ExecutionException e4) {
                if (!zIsCancelled) {
                    return new Failure(e4.getCause());
                }
                return new Cancellation(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e4));
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
        if (!zIsCancelled) {
            return obj == null ? AbstractFutureState.NULL : obj;
        }
        return new Cancellation(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <V> V getDoneValue(Object obj) throws ExecutionException {
        if (obj instanceof Cancellation) {
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(((Cancellation) obj).f33781b);
            throw cancellationException;
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).f33783a);
        }
        if (obj == AbstractFutureState.NULL) {
            return null;
        }
        return obj;
    }

    public static boolean notInstanceOfDelegatingToFuture(Object obj) {
        return !(obj instanceof DelegatingToFuture);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Listener listenerListeners;
        Listener listener;
        Preconditions.m(runnable, "Runnable was null.");
        Preconditions.m(executor, "Executor was null.");
        if (!isDone() && (listenerListeners = listeners()) != (listener = Listener.d)) {
            Listener listener2 = new Listener(runnable, executor);
            do {
                listener2.f33786c = listenerListeners;
                if (casListeners(listenerListeners, listener2)) {
                    return;
                } else {
                    listenerListeners = listeners();
                }
            } while (listenerListeners != listener);
        }
        e(runnable, executor);
    }

    public void afterDone() {
    }

    public final void b(StringBuilder sb) {
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
            } catch (ExecutionException e2) {
                sb.append("FAILURE, cause=[");
                sb.append(e2.getCause());
                sb.append("]");
                return;
            } catch (Exception e3) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e3.getClass());
                sb.append(" thrown from get()]");
                return;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        c(v, sb);
        sb.append("]");
    }

    public final void c(Object obj, StringBuilder sb) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        Cancellation cancellation;
        Object objValue = value();
        if (!(objValue == null) && !(objValue instanceof DelegatingToFuture)) {
            return false;
        }
        if (AbstractFutureState.GENERATE_CANCELLATION_CAUSES) {
            cancellation = new Cancellation(z, new CancellationException("Future.cancel() was called."));
        } else {
            cancellation = z ? Cancellation.f33779c : Cancellation.d;
            Objects.requireNonNull(cancellation);
        }
        boolean z2 = false;
        while (true) {
            if (AbstractFutureState.casValue(this, objValue, cancellation)) {
                d(this, z);
                if (objValue instanceof DelegatingToFuture) {
                    ListenableFuture<? extends V> listenableFuture = ((DelegatingToFuture) objValue).future;
                    if (listenableFuture instanceof Trusted) {
                        this = (AbstractFuture) listenableFuture;
                        objValue = this.value();
                        if ((objValue == null) | (objValue instanceof DelegatingToFuture)) {
                            z2 = true;
                        }
                    } else {
                        listenableFuture.cancel(z);
                    }
                }
                return true;
            }
            objValue = this.value();
            if (notInstanceOfDelegatingToFuture(objValue)) {
                return z2;
            }
        }
    }

    public final V getFromAlreadyDoneTrustedFuture() throws ExecutionException {
        Object objValue = value();
        if (!(objValue == null) && !(objValue instanceof DelegatingToFuture)) {
            return (V) getDoneValue(objValue);
        }
        md.k("Cannot get() on a pending future.");
        return null;
    }

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return value() instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Object objValue = value();
        return notInstanceOfDelegatingToFuture(objValue) & (objValue != null);
    }

    public final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(V v) {
        if (v == null) {
            v = (V) AbstractFutureState.NULL;
        }
        if (!AbstractFutureState.casValue(this, null, v)) {
            return false;
        }
        d(this, false);
        return true;
    }

    public boolean setException(Throwable th) {
        if (!AbstractFutureState.casValue(this, null, new Failure(th))) {
            return false;
        }
        d(this, false);
        return true;
    }

    public boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        listenableFuture.getClass();
        Object objValue = value();
        if (objValue == null) {
            if (listenableFuture.isDone()) {
                if (!AbstractFutureState.casValue(this, null, f(listenableFuture))) {
                    return false;
                }
                d(this, false);
                return true;
            }
            DelegatingToFuture delegatingToFuture = new DelegatingToFuture(this, listenableFuture);
            if (AbstractFutureState.casValue(this, null, delegatingToFuture)) {
                try {
                    listenableFuture.addListener(delegatingToFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Error | Exception unused) {
                        failure = Failure.f33782b;
                    }
                    AbstractFutureState.casValue(this, delegatingToFuture, failure);
                }
                return true;
            }
            objValue = value();
        }
        if (objValue instanceof Cancellation) {
            listenableFuture.cancel(((Cancellation) objValue).f33780a);
        }
        return false;
    }

    public String toString() {
        String strPendingToString;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append(AnnotationParser.AnnotationInstruction);
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object objValue = value();
            if (objValue instanceof DelegatingToFuture) {
                sb.append(", setFuture=[");
                ListenableFuture<? extends V> listenableFuture = ((DelegatingToFuture) objValue).future;
                try {
                    if (listenableFuture == this) {
                        sb.append("this future");
                    } else {
                        sb.append(listenableFuture);
                    }
                } catch (Throwable th) {
                    if ((th instanceof Error) && !(th instanceof StackOverflowError)) {
                        throw th;
                    }
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strPendingToString = pendingToString();
                    if (strPendingToString == null || strPendingToString.isEmpty()) {
                        strPendingToString = null;
                    }
                } catch (Throwable th2) {
                    if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
                        throw th2;
                    }
                    strPendingToString = "Exception thrown from implementation: " + th2.getClass();
                }
                if (strPendingToString != null) {
                    defpackage.a.B(sb, ", info=[", strPendingToString, "]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                b(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.common.util.concurrent.internal.InternalFutureFailureAccess
    public final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof Trusted)) {
            return null;
        }
        Object objValue = value();
        if (objValue instanceof Failure) {
            return ((Failure) objValue).f33783a;
        }
        return null;
    }

    public final boolean wasInterrupted() {
        Object objValue = value();
        return (objValue instanceof Cancellation) && ((Cancellation) objValue).f33780a;
    }

    public static abstract class TrustedFuture<V> extends AbstractFuture<V> implements Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return blockingGet();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean isCancelled() {
            return value() instanceof Cancellation;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
        public final V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return blockingGet(j2, timeUnit);
        }
    }

    public static final class Listener {
        public static final Listener d = new Listener();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Runnable f33784a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f33785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Listener f33786c;

        public Listener() {
            this.f33784a = null;
            this.f33785b = null;
        }

        public Listener(Runnable runnable, Executor executor) {
            this.f33784a = runnable;
            this.f33785b = executor;
        }
    }
}
