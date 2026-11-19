package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.observers.BasicFuseableObserver;
import java.util.Objects;
import java.util.Optional;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMapOptional<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70095c;

    public static final class MapOptionalObserver<T, R> extends BasicFuseableObserver<T, R> {
        public final Function g;

        public MapOptionalObserver(Observer observer, Function function) {
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
                Objects.requireNonNull(objApply, "The mapper returned a null Optional");
                Optional optional = (Optional) objApply;
                if (optional.isPresent()) {
                    observer.onNext(optional.get());
                }
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            Optional optional;
            do {
                Object objPoll = this.d.poll();
                if (objPoll == null) {
                    return null;
                }
                Object objApply = this.g.apply(objPoll);
                Objects.requireNonNull(objApply, "The mapper returned a null Optional");
                optional = (Optional) objApply;
            } while (!optional.isPresent());
            return optional.get();
        }
    }

    public ObservableMapOptional(Observable<T> observable, Function<? super T, Optional<? extends R>> function) {
        this.f70094b = observable;
        this.f70095c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70094b.subscribe(new MapOptionalObserver(observer, this.f70095c));
    }
}
