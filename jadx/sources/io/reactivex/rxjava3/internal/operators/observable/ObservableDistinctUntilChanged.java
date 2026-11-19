package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDistinctUntilChanged<T, K> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70443c;
    public final BiPredicate d;

    public static final class DistinctUntilChangedObserver<T, K> extends BasicFuseableObserver<T, T> {
        public final Function g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final BiPredicate f70444h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f70445i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f70446j;

        public DistinctUntilChangedObserver(Observer observer, Function function, BiPredicate biPredicate) {
            super(observer);
            this.g = function;
            this.f70444h = biPredicate;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70103e) {
                return;
            }
            int i2 = this.f70104f;
            Observer observer = this.f70101b;
            if (i2 != 0) {
                observer.onNext(obj);
                return;
            }
            try {
                Object objApply = this.g.apply(obj);
                if (this.f70446j) {
                    boolean zTest = this.f70444h.test(this.f70445i, objApply);
                    this.f70445i = objApply;
                    if (zTest) {
                        return;
                    }
                } else {
                    this.f70446j = true;
                    this.f70445i = objApply;
                }
                observer.onNext(obj);
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            while (true) {
                Object objPoll = this.d.poll();
                if (objPoll == null) {
                    return null;
                }
                Object objApply = this.g.apply(objPoll);
                if (!this.f70446j) {
                    this.f70446j = true;
                    this.f70445i = objApply;
                    return objPoll;
                }
                if (!this.f70444h.test(this.f70445i, objApply)) {
                    this.f70445i = objApply;
                    return objPoll;
                }
                this.f70445i = objApply;
            }
        }
    }

    public ObservableDistinctUntilChanged(ObservableSource<T> observableSource, Function<? super T, K> function, BiPredicate<? super K, ? super K> biPredicate) {
        super(observableSource);
        this.f70443c = function;
        this.d = biPredicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DistinctUntilChangedObserver(observer, this.f70443c, this.d));
    }
}
