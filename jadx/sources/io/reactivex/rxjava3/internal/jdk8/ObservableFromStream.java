package io.reactivex.rxjava3.internal.jdk8;

import defpackage.d21;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromStream<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Stream f70088b;

    public static final class StreamDisposable<T> implements QueueDisposable<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70089b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Iterator f70090c;
        public AutoCloseable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70091e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70092f;
        public boolean g;

        public StreamDisposable(Observer observer, Iterator it, Stream stream) {
            this.f70089b = observer;
            this.f70090c = it;
            this.d = stream;
        }

        public final void a() {
            if (this.g) {
                return;
            }
            Iterator it = this.f70090c;
            Observer observer = this.f70089b;
            while (!this.f70091e) {
                try {
                    Object next = it.next();
                    Objects.requireNonNull(next, "The Stream's Iterator.next returned a null value");
                    if (!this.f70091e) {
                        observer.onNext(next);
                        if (!this.f70091e) {
                            try {
                                if (!it.hasNext()) {
                                    observer.onComplete();
                                    this.f70091e = true;
                                }
                            } catch (Throwable th) {
                                Exceptions.a(th);
                                observer.onError(th);
                                this.f70091e = true;
                            }
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    observer.onError(th2);
                    this.f70091e = true;
                }
            }
            clear();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.f70090c = null;
            AutoCloseable autoCloseable = this.d;
            this.d = null;
            if (autoCloseable != null) {
                try {
                    d21.x(autoCloseable);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    RxJavaPlugins.b(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70091e = true;
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70091e;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            Iterator it = this.f70090c;
            if (it == null) {
                return true;
            }
            if (!this.f70092f || it.hasNext()) {
                return false;
            }
            clear();
            return true;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean offer(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Iterator it = this.f70090c;
            if (it == null) {
                return null;
            }
            if (!this.f70092f) {
                this.f70092f = true;
            } else if (!it.hasNext()) {
                clear();
                return null;
            }
            Object next = this.f70090c.next();
            Objects.requireNonNull(next, "The Stream's Iterator.next() returned a null value");
            return next;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            this.g = true;
            return 1;
        }
    }

    public ObservableFromStream(Stream<T> stream) {
        this.f70088b = stream;
    }

    public static void c(Observer observer, Stream stream) {
        try {
            Iterator<T> it = stream.iterator();
            if (it.hasNext()) {
                StreamDisposable streamDisposable = new StreamDisposable(observer, it, stream);
                observer.onSubscribe(streamDisposable);
                streamDisposable.a();
            } else {
                EmptyDisposable.a(observer);
                try {
                    d21.x(stream);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    RxJavaPlugins.b(th);
                }
            }
        } catch (Throwable th2) {
            Exceptions.a(th2);
            EmptyDisposable.b(th2, observer);
            try {
                d21.x(stream);
            } catch (Throwable th3) {
                Exceptions.a(th3);
                RxJavaPlugins.b(th3);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        c(observer, this.f70088b);
    }
}
