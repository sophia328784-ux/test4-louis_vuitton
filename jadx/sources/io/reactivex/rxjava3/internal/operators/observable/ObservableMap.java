package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70653c;

    public static final class MapObserver<T, U> extends BasicFuseableObserver<T, U> {
        public final Function g;

        public MapObserver(Observer observer, Function function) {
            super(observer);
            this.g = function;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70103e) {
                return;
            }
            int i2 = this.f70104f;
            Observer observer = this.f70101b;
            if (i2 != 0) {
                observer.onNext(null);
                return;
            }
            try {
                Object objApply = this.g.apply(obj);
                Objects.requireNonNull(objApply, "The mapper function returned a null value.");
                observer.onNext(objApply);
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Object objPoll = this.d.poll();
            if (objPoll == null) {
                return null;
            }
            Object objApply = this.g.apply(objPoll);
            Objects.requireNonNull(objApply, "The mapper function returned a null value.");
            return objApply;
        }
    }

    public ObservableMap(ObservableSource<T> observableSource, Function<? super T, ? extends U> function) {
        super(observableSource);
        this.f70653c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new MapObserver(observer, this.f70653c));
    }
}
