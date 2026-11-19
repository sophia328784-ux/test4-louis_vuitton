package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDetach<T> extends AbstractObservableWithUpstream<T, T> {

    public static final class DetachObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Observer f70439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f70440c;

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            Disposable disposable = this.f70440c;
            EmptyComponent emptyComponent = EmptyComponent.INSTANCE;
            this.f70440c = emptyComponent;
            this.f70439b = emptyComponent;
            disposable.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70440c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Observer observer = this.f70439b;
            EmptyComponent emptyComponent = EmptyComponent.INSTANCE;
            this.f70440c = emptyComponent;
            this.f70439b = emptyComponent;
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Observer observer = this.f70439b;
            EmptyComponent emptyComponent = EmptyComponent.INSTANCE;
            this.f70440c = emptyComponent;
            this.f70439b = emptyComponent;
            observer.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70439b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70440c, disposable)) {
                this.f70440c = disposable;
                this.f70439b.onSubscribe(this);
            }
        }
    }

    public ObservableDetach(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        DetachObserver detachObserver = new DetachObserver();
        detachObserver.f70439b = observer;
        this.f70226b.subscribe(detachObserver);
    }
}
