package io.reactivex.rxjava3.internal.operators.observable;

import defpackage.zy0;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingObservableNext<T> implements Iterable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70241b;

    public static final class NextIterator<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NextObserver f70242b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ObservableSource f70243c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70244e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70245f = true;
        public Throwable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f70246h;

        public NextIterator(ObservableSource observableSource, NextObserver nextObserver) {
            this.f70243c = observableSource;
            this.f70242b = nextObserver;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Throwable th = this.g;
            if (th != null) {
                throw ExceptionHelper.e(th);
            }
            if (!this.f70244e) {
                return false;
            }
            if (!this.f70245f) {
                return true;
            }
            NextObserver nextObserver = this.f70242b;
            AtomicInteger atomicInteger = nextObserver.d;
            if (!this.f70246h) {
                this.f70246h = true;
                atomicInteger.set(1);
                new ObservableMaterialize(this.f70243c).subscribe(nextObserver);
            }
            try {
                atomicInteger.set(1);
                Notification notification = (Notification) nextObserver.f70247c.take();
                boolean zB = notification.b();
                Object obj = notification.f70024a;
                if (zB) {
                    this.f70245f = false;
                    if (obj == null || NotificationLite.f(obj)) {
                        obj = null;
                    }
                    this.d = obj;
                    return true;
                }
                this.f70244e = false;
                if (obj == null) {
                    return false;
                }
                Throwable thA = notification.a();
                this.g = thA;
                throw ExceptionHelper.e(thA);
            } catch (InterruptedException e2) {
                nextObserver.dispose();
                this.g = e2;
                throw ExceptionHelper.e(e2);
            }
        }

        @Override // java.util.Iterator
        public final Object next() {
            Throwable th = this.g;
            if (th != null) {
                throw ExceptionHelper.e(th);
            }
            if (hasNext()) {
                this.f70245f = true;
                return this.d;
            }
            zy0.c("No more elements");
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public static final class NextObserver<T> extends DisposableObserver<Notification<T>> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayBlockingQueue f70247c = new ArrayBlockingQueue(1);
        public final AtomicInteger d = new AtomicInteger();

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            RxJavaPlugins.b(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Notification notification = (Notification) obj;
            if (this.d.getAndSet(0) != 1 && notification.b()) {
                return;
            }
            while (true) {
                ArrayBlockingQueue arrayBlockingQueue = this.f70247c;
                if (arrayBlockingQueue.offer(notification)) {
                    return;
                }
                Notification notification2 = (Notification) arrayBlockingQueue.poll();
                if (notification2 != null && !notification2.b()) {
                    notification = notification2;
                }
            }
        }
    }

    public BlockingObservableNext(ObservableSource<T> observableSource) {
        this.f70241b = observableSource;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new NextIterator(this.f70241b, new NextObserver());
    }
}
