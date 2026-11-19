package retrofit2.adapter.rxjava3;

import defpackage.r81;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
final class ResultObservable<T> extends Observable<Result<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f79486b;

    public static class ResultObserver<R> implements Observer<Response<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f79487b;

        public ResultObserver(Observer observer) {
            this.f79487b = observer;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f79487b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Observer observer = this.f79487b;
            try {
                if (th == null) {
                    throw new NullPointerException("error == null");
                }
                observer.onNext(new Result());
                observer.onComplete();
            } catch (Throwable th2) {
                try {
                    observer.onError(th2);
                } catch (Throwable th3) {
                    Exceptions.a(th3);
                    RxJavaPlugins.b(new CompositeException(th2, th3));
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (((Response) obj) == null) {
                r81.d("response == null");
            } else {
                this.f79487b.onNext(new Result());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            this.f79487b.onSubscribe(disposable);
        }
    }

    public ResultObservable(Observable observable) {
        this.f79486b = observable;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f79486b.subscribe(new ResultObserver(observer));
    }
}
