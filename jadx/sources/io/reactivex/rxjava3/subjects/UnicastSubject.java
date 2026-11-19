package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class UnicastSubject<T> extends Subject<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpscLinkedArrayQueue f71173b;
    public final AtomicReference d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f71176f;
    public volatile boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Throwable f71177h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f71180k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f71175e = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f71174c = new AtomicReference();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f71178i = new AtomicBoolean();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BasicIntQueueDisposable f71179j = new UnicastQueueDisposable();

    public final class UnicastQueueDisposable extends BasicIntQueueDisposable<T> {
        private static final long serialVersionUID = 7926949470189395511L;

        public UnicastQueueDisposable() {
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            UnicastSubject.this.f71173b.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (UnicastSubject.this.f71176f) {
                return;
            }
            UnicastSubject.this.f71176f = true;
            UnicastSubject.this.e();
            UnicastSubject.this.f71174c.lazySet(null);
            if (UnicastSubject.this.f71179j.getAndIncrement() == 0) {
                UnicastSubject.this.f71174c.lazySet(null);
                UnicastSubject unicastSubject = UnicastSubject.this;
                if (unicastSubject.f71180k) {
                    return;
                }
                unicastSubject.f71173b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return UnicastSubject.this.f71176f;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return UnicastSubject.this.f71173b.isEmpty();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            return UnicastSubject.this.f71173b.poll();
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            UnicastSubject.this.f71180k = true;
            return 2;
        }
    }

    public UnicastSubject(Runnable runnable, int i2) {
        this.f71173b = new SpscLinkedArrayQueue(i2);
        this.d = new AtomicReference(runnable);
    }

    public static UnicastSubject d(Runnable runnable, int i2) {
        ObjectHelper.a(i2, "capacityHint");
        Objects.requireNonNull(runnable, "onTerminate");
        return new UnicastSubject(runnable, i2);
    }

    public final void e() {
        AtomicReference atomicReference = this.d;
        Runnable runnable = (Runnable) atomicReference.get();
        if (runnable != null) {
            while (!atomicReference.compareAndSet(runnable, null)) {
                if (atomicReference.get() != runnable) {
                    return;
                }
            }
            runnable.run();
        }
    }

    public final void g() {
        Throwable th;
        if (this.f71179j.getAndIncrement() != 0) {
            return;
        }
        Observer observer = (Observer) this.f71174c.get();
        int iAddAndGet = 1;
        int iAddAndGet2 = 1;
        while (observer == null) {
            iAddAndGet2 = this.f71179j.addAndGet(-iAddAndGet2);
            if (iAddAndGet2 == 0) {
                return;
            } else {
                observer = (Observer) this.f71174c.get();
            }
        }
        boolean z = this.f71180k;
        SpscLinkedArrayQueue spscLinkedArrayQueue = this.f71173b;
        boolean z2 = this.f71175e;
        if (z) {
            while (!this.f71176f) {
                boolean z3 = this.g;
                if (!z2 && z3 && (th = this.f71177h) != null) {
                    this.f71174c.lazySet(null);
                    spscLinkedArrayQueue.clear();
                    observer.onError(th);
                    return;
                }
                observer.onNext(null);
                if (z3) {
                    this.f71174c.lazySet(null);
                    Throwable th2 = this.f71177h;
                    if (th2 != null) {
                        observer.onError(th2);
                        return;
                    } else {
                        observer.onComplete();
                        return;
                    }
                }
                iAddAndGet = this.f71179j.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            this.f71174c.lazySet(null);
            return;
        }
        boolean z4 = true;
        int iAddAndGet3 = 1;
        while (!this.f71176f) {
            boolean z5 = this.g;
            Object objPoll = this.f71173b.poll();
            boolean z6 = objPoll == null;
            if (z5) {
                if (!z2 && z4) {
                    Throwable th3 = this.f71177h;
                    if (th3 != null) {
                        this.f71174c.lazySet(null);
                        spscLinkedArrayQueue.clear();
                        observer.onError(th3);
                        return;
                    }
                    z4 = false;
                }
                if (z6) {
                    this.f71174c.lazySet(null);
                    Throwable th4 = this.f71177h;
                    if (th4 != null) {
                        observer.onError(th4);
                        return;
                    } else {
                        observer.onComplete();
                        return;
                    }
                }
            }
            if (z6) {
                iAddAndGet3 = this.f71179j.addAndGet(-iAddAndGet3);
                if (iAddAndGet3 == 0) {
                    return;
                }
            } else {
                observer.onNext(objPoll);
            }
        }
        this.f71174c.lazySet(null);
        spscLinkedArrayQueue.clear();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.g || this.f71176f) {
            return;
        }
        this.g = true;
        e();
        g();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (th == null) {
            throw ExceptionHelper.b("onError called with a null Throwable.");
        }
        Throwable th2 = ExceptionHelper.f71119a;
        if (this.g || this.f71176f) {
            RxJavaPlugins.b(th);
            return;
        }
        this.f71177h = th;
        this.g = true;
        e();
        g();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (obj == null) {
            throw ExceptionHelper.b("onNext called with a null value.");
        }
        Throwable th = ExceptionHelper.f71119a;
        if (this.g || this.f71176f) {
            return;
        }
        this.f71173b.offer(obj);
        g();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (this.g || this.f71176f) {
            disposable.dispose();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        if (this.f71178i.get() || !this.f71178i.compareAndSet(false, true)) {
            EmptyDisposable.b(new IllegalStateException("Only a single observer allowed."), observer);
            return;
        }
        observer.onSubscribe(this.f71179j);
        this.f71174c.lazySet(observer);
        if (this.f71176f) {
            this.f71174c.lazySet(null);
        } else {
            g();
        }
    }
}
