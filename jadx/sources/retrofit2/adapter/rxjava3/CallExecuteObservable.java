package retrofit2.adapter.rxjava3;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import retrofit2.Call;
import retrofit2.Response;

/* JADX INFO: loaded from: classes5.dex */
final class CallExecuteObservable<T> extends Observable<Response<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Call f79483b;

    public static final class CallDisposable implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Call f79484b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile boolean f79485c;

        public CallDisposable(Call call) {
            this.f79484b = call;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f79485c = true;
            this.f79484b.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f79485c;
        }
    }

    public CallExecuteObservable(Call call) {
        this.f79483b = call;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Call callClone = this.f79483b.clone();
        CallDisposable callDisposable = new CallDisposable(callClone);
        observer.onSubscribe(callDisposable);
        if (callDisposable.f79485c) {
            return;
        }
        boolean z = false;
        try {
            Object objExecute = callClone.execute();
            if (!callDisposable.f79485c) {
                observer.onNext(objExecute);
            }
            if (callDisposable.f79485c) {
                return;
            }
            try {
                observer.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                Exceptions.a(th);
                if (z) {
                    RxJavaPlugins.b(th);
                    return;
                }
                if (callDisposable.f79485c) {
                    return;
                }
                try {
                    observer.onError(th);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    RxJavaPlugins.b(new CompositeException(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
