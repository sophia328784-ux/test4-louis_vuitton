package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class StateObservable<T> implements Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f2344b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2343a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2345c = 0;
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f2346e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArraySet f2347f = new CopyOnWriteArraySet();

    public static abstract class ErrorWrapper {
    }

    public static final class ObserverWrapper<T> implements Runnable {
        private static final Object NOT_SET = new Object();
        private static final int NO_VERSION = -1;
        private final Executor mExecutor;
        private final Observable.Observer<? super T> mObserver;
        private final AtomicReference<Object> mStateRef;
        private final AtomicBoolean mActive = new AtomicBoolean(true);
        private Object mLastState = NOT_SET;
        private int mLatestSignalledVersion = -1;
        private boolean mWrapperUpdating = false;

        public ObserverWrapper(AtomicReference<Object> atomicReference, Executor executor, Observable.Observer<? super T> observer) {
            this.mStateRef = atomicReference;
            this.mExecutor = executor;
            this.mObserver = observer;
        }

        public void close() {
            this.mActive.set(false);
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                try {
                    if (!this.mActive.get()) {
                        this.mWrapperUpdating = false;
                        return;
                    }
                    Object obj = this.mStateRef.get();
                    int i2 = this.mLatestSignalledVersion;
                    while (true) {
                        if (!Objects.equals(this.mLastState, obj)) {
                            this.mLastState = obj;
                            boolean z = obj instanceof ErrorWrapper;
                            Observable.Observer<? super T> observer = this.mObserver;
                            if (z) {
                                observer.onError(((AutoValue_StateObservable_ErrorWrapper) ((ErrorWrapper) obj)).f2204a);
                            } else {
                                observer.a(obj);
                            }
                        }
                        synchronized (this) {
                            try {
                                if (i2 == this.mLatestSignalledVersion || !this.mActive.get()) {
                                    break;
                                    break;
                                } else {
                                    obj = this.mStateRef.get();
                                    i2 = this.mLatestSignalledVersion;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    this.mWrapperUpdating = false;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void update(int i2) {
            synchronized (this) {
                try {
                    if (this.mActive.get()) {
                        if (i2 <= this.mLatestSignalledVersion) {
                            return;
                        }
                        this.mLatestSignalledVersion = i2;
                        if (this.mWrapperUpdating) {
                            return;
                        }
                        this.mWrapperUpdating = true;
                        try {
                            this.mExecutor.execute(this);
                        } catch (Throwable unused) {
                            synchronized (this) {
                                this.mWrapperUpdating = false;
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public StateObservable(Object obj) {
        this.f2344b = new AtomicReference(obj);
    }

    @Override // androidx.camera.core.impl.Observable
    public final ListenableFuture a() {
        Object obj = this.f2344b.get();
        return obj instanceof ErrorWrapper ? Futures.e(((AutoValue_StateObservable_ErrorWrapper) ((ErrorWrapper) obj)).f2204a) : Futures.g(obj);
    }

    @Override // androidx.camera.core.impl.Observable
    public final void b(Executor executor, Observable.Observer observer) {
        ObserverWrapper observerWrapper;
        synchronized (this.f2343a) {
            c(observer);
            observerWrapper = new ObserverWrapper(this.f2344b, executor, observer);
            this.f2346e.put(observer, observerWrapper);
            this.f2347f.add(observerWrapper);
        }
        observerWrapper.update(0);
    }

    public final void c(Observable.Observer observer) {
        ObserverWrapper observerWrapper = (ObserverWrapper) this.f2346e.remove(observer);
        if (observerWrapper != null) {
            observerWrapper.close();
            this.f2347f.remove(observerWrapper);
        }
    }

    @Override // androidx.camera.core.impl.Observable
    public final void d(Observable.Observer observer) {
        synchronized (this.f2343a) {
            c(observer);
        }
    }

    public final void f(Object obj) {
        Iterator it;
        int i2;
        synchronized (this.f2343a) {
            try {
                if (Objects.equals(this.f2344b.getAndSet(obj), obj)) {
                    return;
                }
                int i3 = this.f2345c + 1;
                this.f2345c = i3;
                if (this.d) {
                    return;
                }
                this.d = true;
                Iterator it2 = this.f2347f.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        ((ObserverWrapper) it2.next()).update(i3);
                    } else {
                        synchronized (this.f2343a) {
                            try {
                                if (this.f2345c == i3) {
                                    this.d = false;
                                    return;
                                } else {
                                    it = this.f2347f.iterator();
                                    i2 = this.f2345c;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        it2 = it;
                        i3 = i2;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
