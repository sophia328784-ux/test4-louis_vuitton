package com.google.common.util.concurrent;

import com.google.errorprone.annotations.concurrent.LazyInit;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
final class TimeoutFuture<V> extends FluentFuture.TrustedFuture<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FluentFuture f33831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScheduledFuture f33832c;

    public static final class Fire<V> implements Runnable {

        @LazyInit
        TimeoutFuture<V> timeoutFutureRef;

        public Fire(TimeoutFuture<V> timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            FluentFuture fluentFuture;
            TimeoutFuture<V> timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (fluentFuture = timeoutFuture.f33831b) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (fluentFuture.isDone()) {
                timeoutFuture.setFuture(fluentFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = timeoutFuture.f33832c;
                timeoutFuture.f33832c = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th) {
                        timeoutFuture.setException(new TimeoutFutureException(str));
                        throw th;
                    }
                }
                timeoutFuture.setException(new TimeoutFutureException(str + ": " + fluentFuture));
                fluentFuture.cancel(true);
            } catch (Throwable th2) {
                fluentFuture.cancel(true);
                throw th2;
            }
        }
    }

    public static final class TimeoutFutureException extends TimeoutException {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        maybePropagateCancellationTo(this.f33831b);
        ScheduledFuture scheduledFuture = this.f33832c;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f33831b = null;
        this.f33832c = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        FluentFuture fluentFuture = this.f33831b;
        ScheduledFuture scheduledFuture = this.f33832c;
        if (fluentFuture == null) {
            return null;
        }
        String str = "inputFuture=[" + fluentFuture + "]";
        if (scheduledFuture != null) {
            long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
            if (delay > 0) {
                return str + ", remaining delay=[" + delay + " ms]";
            }
        }
        return str;
    }
}
