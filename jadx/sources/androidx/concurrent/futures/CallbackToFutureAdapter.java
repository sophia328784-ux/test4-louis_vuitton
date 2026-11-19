package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class CallbackToFutureAdapter {

    public static final class Completer<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f11210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SafeFuture f11211b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ResolvableFuture f11212c;
        public boolean d;

        public final void a(Runnable runnable, Executor executor) {
            ResolvableFuture resolvableFuture = this.f11212c;
            if (resolvableFuture != null) {
                resolvableFuture.addListener(runnable, executor);
            }
        }

        public final boolean b(Object obj) {
            this.d = true;
            SafeFuture safeFuture = this.f11211b;
            boolean z = safeFuture != null && safeFuture.f11214c.j(obj);
            if (z) {
                this.f11210a = null;
                this.f11211b = null;
                this.f11212c = null;
            }
            return z;
        }

        public final void c() {
            this.d = true;
            SafeFuture safeFuture = this.f11211b;
            if (safeFuture == null || !safeFuture.f11214c.cancel(true)) {
                return;
            }
            this.f11210a = null;
            this.f11211b = null;
            this.f11212c = null;
        }

        public final boolean d(Throwable th) {
            this.d = true;
            SafeFuture safeFuture = this.f11211b;
            boolean z = safeFuture != null && safeFuture.f11214c.k(th);
            if (z) {
                this.f11210a = null;
                this.f11211b = null;
                this.f11212c = null;
            }
            return z;
        }

        public final void finalize() {
            ResolvableFuture resolvableFuture;
            SafeFuture safeFuture = this.f11211b;
            if (safeFuture != null) {
                AbstractResolvableFuture abstractResolvableFuture = safeFuture.f11214c;
                if (!abstractResolvableFuture.isDone()) {
                    abstractResolvableFuture.k(new FutureGarbageCollectedException("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f11210a));
                }
            }
            if (this.d || (resolvableFuture = this.f11212c) == null) {
                return;
            }
            resolvableFuture.j(null);
        }
    }

    public static final class FutureGarbageCollectedException extends Throwable {
        @Override // java.lang.Throwable
        public final synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    public interface Resolver<T> {
        Object i(Completer completer);
    }

    public static ListenableFuture a(Resolver resolver) {
        Completer completer = new Completer();
        completer.f11212c = new ResolvableFuture();
        SafeFuture safeFuture = new SafeFuture(completer);
        completer.f11211b = safeFuture;
        completer.f11210a = resolver.getClass();
        try {
            Object objI = resolver.i(completer);
            if (objI == null) {
                return safeFuture;
            }
            completer.f11210a = objI;
            return safeFuture;
        } catch (Exception e2) {
            safeFuture.f11214c.k(e2);
            return safeFuture;
        }
    }

    public static final class SafeFuture<T> implements ListenableFuture<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WeakReference f11213b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AbstractResolvableFuture f11214c = new AbstractResolvableFuture<T>() { // from class: androidx.concurrent.futures.CallbackToFutureAdapter.SafeFuture.1
            @Override // androidx.concurrent.futures.AbstractResolvableFuture
            public final String h() {
                Completer completer = (Completer) SafeFuture.this.f11213b.get();
                return completer == null ? "Completer object has been garbage collected, future will fail soon" : a.n(new StringBuilder("tag=["), completer.f11210a, "]");
            }
        };

        public SafeFuture(Completer completer) {
            this.f11213b = new WeakReference(completer);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            this.f11214c.addListener(runnable, executor);
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            Completer completer = (Completer) this.f11213b.get();
            boolean zCancel = this.f11214c.cancel(z);
            if (zCancel && completer != null) {
                completer.f11210a = null;
                completer.f11211b = null;
                completer.f11212c.j(null);
            }
            return zCancel;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.f11214c.get();
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.f11214c.f11194b instanceof AbstractResolvableFuture.Cancellation;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return this.f11214c.isDone();
        }

        public final String toString() {
            return this.f11214c.toString();
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j2, TimeUnit timeUnit) {
            return this.f11214c.get(j2, timeUnit);
        }
    }
}
