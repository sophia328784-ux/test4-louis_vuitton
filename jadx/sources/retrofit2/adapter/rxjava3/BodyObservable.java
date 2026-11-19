package retrofit2.adapter.rxjava3;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
final class BodyObservable<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f79476b;

    public static class BodyObserver<R> implements Observer<Response<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f79477b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f79478c;

        public BodyObserver(Observer observer) {
            this.f79477b = observer;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f79478c) {
                return;
            }
            this.f79477b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (!this.f79478c) {
                this.f79477b.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            RxJavaPlugins.b(assertionError);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Response response = (Response) obj;
            boolean z = response.f79449a.r;
            Observer observer = this.f79477b;
            if (z) {
                observer.onNext(response.f79450b);
                return;
            }
            this.f79478c = true;
            HttpException httpException = new HttpException(response);
            try {
                observer.onError(httpException);
            } catch (Throwable th) {
                Exceptions.a(th);
                RxJavaPlugins.b(new CompositeException(httpException, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            this.f79477b.onSubscribe(disposable);
        }
    }

    public BodyObservable(Observable observable) {
        this.f79476b = observable;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f79476b.subscribe(new BodyObserver(observer));
    }
}
