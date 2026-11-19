package retrofit2.adapter.rxjava3;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
final class CallEnqueueObservable<T> extends Observable<Response<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Call f79479b;

    public static final class CallCallback<T> implements Disposable, Callback<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Call f79480b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Observer f79481c;
        public volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f79482e = false;

        public CallCallback(Call call, Observer observer) {
            this.f79480b = call;
            this.f79481c = observer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d = true;
            this.f79480b.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // retrofit2.Callback
        public final void onFailure(Call call, Throwable th) {
            if (call.isCanceled()) {
                return;
            }
            try {
                this.f79481c.onError(th);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                RxJavaPlugins.b(new CompositeException(th, th2));
            }
        }

        @Override // retrofit2.Callback
        public final void onResponse(Call call, Response response) {
            if (this.d) {
                return;
            }
            try {
                this.f79481c.onNext(response);
                if (this.d) {
                    return;
                }
                this.f79482e = true;
                this.f79481c.onComplete();
            } catch (Throwable th) {
                Exceptions.a(th);
                if (this.f79482e) {
                    RxJavaPlugins.b(th);
                    return;
                }
                if (this.d) {
                    return;
                }
                try {
                    this.f79481c.onError(th);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    RxJavaPlugins.b(new CompositeException(th, th2));
                }
            }
        }
    }

    public CallEnqueueObservable(Call call) {
        this.f79479b = call;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Call callClone = this.f79479b.clone();
        CallCallback callCallback = new CallCallback(callClone, observer);
        observer.onSubscribe(callCallback);
        if (callCallback.d) {
            return;
        }
        callClone.p(callCallback);
    }
}
