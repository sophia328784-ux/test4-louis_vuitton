package io.reactivex.rxjava3.internal.operators.observable;

import defpackage.d21;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCreate<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableOnSubscribe f70401b;

    public static final class CreateEmitter<T> extends AtomicReference<Disposable> implements ObservableEmitter<T>, Disposable {
        private static final long serialVersionUID = -3434801548987643227L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70402b;

        public CreateEmitter(Observer observer) {
            this.f70402b = observer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.core.ObservableEmitter, io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return d21.k(CreateEmitter.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public ObservableCreate(ObservableOnSubscribe<T> observableOnSubscribe) {
        this.f70401b = observableOnSubscribe;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        CreateEmitter createEmitter = new CreateEmitter(observer);
        observer.onSubscribe(createEmitter);
        try {
            this.f70401b.a();
        } catch (Throwable th) {
            Exceptions.a(th);
            if (createEmitter.isDisposed()) {
                RxJavaPlugins.b(th);
                return;
            }
            try {
                createEmitter.f70402b.onError(th);
            } finally {
                DisposableHelper.a(createEmitter);
            }
        }
    }
}
