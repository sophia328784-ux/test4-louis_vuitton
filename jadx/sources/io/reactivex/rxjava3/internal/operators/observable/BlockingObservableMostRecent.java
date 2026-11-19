package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.observers.DefaultObserver;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingObservableMostRecent<T> implements Iterable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f70237c;

    public static final class MostRecentObserver<T> extends DefaultObserver<T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile Object f70238c;

        public final class MostRecentIterator implements Iterator<T> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Object f70239b;

            public MostRecentIterator() {
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                Object obj = MostRecentObserver.this.f70238c;
                this.f70239b = obj;
                return !(obj == NotificationLite.COMPLETE);
            }

            @Override // java.util.Iterator
            public final Object next() {
                try {
                    if (this.f70239b == null) {
                        this.f70239b = MostRecentObserver.this.f70238c;
                    }
                    Object obj = this.f70239b;
                    if (obj == NotificationLite.COMPLETE) {
                        throw new NoSuchElementException();
                    }
                    boolean zF = NotificationLite.f(obj);
                    Object obj2 = this.f70239b;
                    if (zF) {
                        throw ExceptionHelper.e(NotificationLite.e(obj2));
                    }
                    this.f70239b = null;
                    return obj2;
                } catch (Throwable th) {
                    this.f70239b = null;
                    throw th;
                }
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70238c = NotificationLite.COMPLETE;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70238c = NotificationLite.d(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70238c = obj;
        }
    }

    public BlockingObservableMostRecent(ObservableSource<T> observableSource, T t) {
        this.f70236b = observableSource;
        this.f70237c = t;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Object obj = this.f70237c;
        MostRecentObserver mostRecentObserver = new MostRecentObserver();
        mostRecentObserver.f70238c = obj;
        this.f70236b.subscribe(mostRecentObserver);
        return new MostRecentObserver.MostRecentIterator();
    }
}
