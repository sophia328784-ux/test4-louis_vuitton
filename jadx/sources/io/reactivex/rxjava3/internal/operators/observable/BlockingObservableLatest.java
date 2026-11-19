package io.reactivex.rxjava3.internal.operators.observable;

import defpackage.b21;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observers.DisposableObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingObservableLatest<T> implements Iterable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70233b;

    public static final class BlockingObservableLatestIterator<T> extends DisposableObserver<Notification<T>> implements Iterator<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Notification f70234c;
        public final Semaphore d = new Semaphore(0);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReference f70235e = new AtomicReference();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Notification notification = this.f70234c;
            if (notification != null && NotificationLite.f(notification.f70024a)) {
                throw ExceptionHelper.e(this.f70234c.a());
            }
            if (this.f70234c == null) {
                try {
                    this.d.acquire();
                    Notification notification2 = (Notification) this.f70235e.getAndSet(null);
                    this.f70234c = notification2;
                    if (NotificationLite.f(notification2.f70024a)) {
                        throw ExceptionHelper.e(notification2.a());
                    }
                } catch (InterruptedException e2) {
                    dispose();
                    this.f70234c = new Notification(NotificationLite.d(e2));
                    throw ExceptionHelper.e(e2);
                }
            }
            return this.f70234c.b();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!hasNext()) {
                b21.x();
                return null;
            }
            Object obj = this.f70234c.f70024a;
            if (obj == null || NotificationLite.f(obj)) {
                obj = null;
            }
            this.f70234c = null;
            return obj;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            RxJavaPlugins.b(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70235e.getAndSet((Notification) obj) == null) {
                this.d.release();
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }

    public BlockingObservableLatest(ObservableSource<T> observableSource) {
        this.f70233b = observableSource;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        BlockingObservableLatestIterator blockingObservableLatestIterator = new BlockingObservableLatestIterator();
        Observable.wrap(this.f70233b).materialize().subscribe(blockingObservableLatestIterator);
        return blockingObservableLatestIterator;
    }
}
