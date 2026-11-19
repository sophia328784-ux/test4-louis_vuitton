package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDoAfterNext<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f70447c;

    public static final class DoAfterObserver<T> extends BasicFuseableObserver<T, T> {
        public final Consumer g;

        public DoAfterObserver(Observer observer, Consumer consumer) {
            super(observer);
            this.g = consumer;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70101b.onNext(obj);
            if (this.f70104f == 0) {
                try {
                    this.g.accept(obj);
                } catch (Throwable th) {
                    a(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object objPoll = this.d.poll();
            if (objPoll != null) {
                this.g.accept(objPoll);
            }
            return objPoll;
        }
    }

    public ObservableDoAfterNext(ObservableSource<T> observableSource, Consumer<? super T> consumer) {
        super(observableSource);
        this.f70447c = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DoAfterObserver(observer, this.f70447c));
    }
}
