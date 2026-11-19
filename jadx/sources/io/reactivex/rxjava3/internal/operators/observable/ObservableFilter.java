package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFilter<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70483c;

    public static final class FilterObserver<T> extends BasicFuseableObserver<T, T> {
        public final Predicate g;

        public FilterObserver(Observer observer, Predicate predicate) {
            super(observer);
            this.g = predicate;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            int i2 = this.f70104f;
            Observer observer = this.f70101b;
            if (i2 != 0) {
                observer.onNext(null);
                return;
            }
            try {
                if (this.g.test(obj)) {
                    observer.onNext(obj);
                }
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object objPoll;
            do {
                objPoll = this.d.poll();
                if (objPoll == null) {
                    break;
                }
            } while (!this.g.test(objPoll));
            return objPoll;
        }
    }

    public ObservableFilter(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f70483c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new FilterObserver(observer, this.f70483c));
    }
}
