package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDematerialize<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70435c;

    public static final class DematerializeObserver<T, R> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70436b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70437c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70438e;

        public DematerializeObserver(Observer observer, Function function) {
            this.f70436b = observer;
            this.f70437c = function;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70438e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70438e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.f70436b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.d) {
                RxJavaPlugins.b(th);
            } else {
                this.d = true;
                this.f70436b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.d) {
                if (obj instanceof Notification) {
                    Notification notification = (Notification) obj;
                    if (NotificationLite.f(notification.f70024a)) {
                        RxJavaPlugins.b(notification.a());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                Object objApply = this.f70437c.apply(obj);
                Objects.requireNonNull(objApply, "The selector returned a null Notification");
                Notification notification2 = (Notification) objApply;
                Object obj2 = notification2.f70024a;
                if (NotificationLite.f(obj2)) {
                    this.f70438e.dispose();
                    onError(notification2.a());
                } else if (obj2 == null) {
                    this.f70438e.dispose();
                    onComplete();
                } else {
                    if (obj2 == null || NotificationLite.f(obj2)) {
                        obj2 = null;
                    }
                    this.f70436b.onNext(obj2);
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70438e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70438e, disposable)) {
                this.f70438e = disposable;
                this.f70436b.onSubscribe(this);
            }
        }
    }

    public ObservableDematerialize(ObservableSource<T> observableSource, Function<? super T, ? extends Notification<R>> function) {
        super(observableSource);
        this.f70435c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DematerializeObserver(observer, this.f70435c));
    }
}
