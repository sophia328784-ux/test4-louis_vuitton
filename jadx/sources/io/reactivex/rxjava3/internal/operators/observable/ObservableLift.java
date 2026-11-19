package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableOperator;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableLift<R, T> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableOperator f70652c;

    public ObservableLift(ObservableSource<T> observableSource, ObservableOperator<? extends R, ? super T> observableOperator) {
        super(observableSource);
        this.f70652c = observableOperator;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableOperator observableOperator = this.f70652c;
        try {
            Observer observerApply = observableOperator.apply();
            Objects.requireNonNull(observerApply, "Operator " + observableOperator + " returned a null Observer");
            this.f70226b.subscribe(observerApply);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            Exceptions.a(th);
            RxJavaPlugins.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
