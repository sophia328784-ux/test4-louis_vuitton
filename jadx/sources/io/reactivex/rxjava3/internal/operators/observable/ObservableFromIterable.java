package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromIterable<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterable f70546b;

    public static final class FromIterableDisposable<T> extends BasicQueueDisposable<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70547b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f70548c;
        public volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70549e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70550f;
        public boolean g;

        public FromIterableDisposable(Observer observer, Iterator it) {
            this.f70547b = observer;
            this.f70548c = it;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.f70550f = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.f70550f;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            if (this.f70550f) {
                return null;
            }
            boolean z = this.g;
            Iterator it = this.f70548c;
            if (!z) {
                this.g = true;
            } else if (!it.hasNext()) {
                this.f70550f = true;
                return null;
            }
            Object next = it.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            this.f70549e = true;
            return 1;
        }
    }

    public ObservableFromIterable(Iterable<? extends T> iterable) {
        this.f70546b = iterable;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Iterator<T> it = this.f70546b.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.a(observer);
                    return;
                }
                FromIterableDisposable fromIterableDisposable = new FromIterableDisposable(observer, it);
                observer.onSubscribe(fromIterableDisposable);
                if (fromIterableDisposable.f70549e) {
                    return;
                }
                while (!fromIterableDisposable.d) {
                    try {
                        Object next = fromIterableDisposable.f70548c.next();
                        Objects.requireNonNull(next, "The iterator returned a null value");
                        fromIterableDisposable.f70547b.onNext(next);
                        if (fromIterableDisposable.d) {
                            return;
                        }
                        try {
                            if (!fromIterableDisposable.f70548c.hasNext()) {
                                if (fromIterableDisposable.d) {
                                    return;
                                }
                                fromIterableDisposable.f70547b.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.a(th);
                            fromIterableDisposable.f70547b.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.a(th2);
                        fromIterableDisposable.f70547b.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.a(th3);
                EmptyDisposable.b(th3, observer);
            }
        } catch (Throwable th4) {
            Exceptions.a(th4);
            EmptyDisposable.b(th4, observer);
        }
    }
}
