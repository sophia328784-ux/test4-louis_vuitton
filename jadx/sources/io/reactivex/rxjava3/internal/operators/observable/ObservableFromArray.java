package io.reactivex.rxjava3.internal.operators.observable;

import defpackage.n00;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.observers.BasicQueueDisposable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromArray<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f70535b;

    public static final class FromArrayDisposable<T> extends BasicQueueDisposable<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70536b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f70537c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70538e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f70539f;

        public FromArrayDisposable(Observer observer, Object[] objArr) {
            this.f70536b = observer;
            this.f70537c = objArr;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.d = this.f70537c.length;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70539f = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70539f;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.d == this.f70537c.length;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            int i2 = this.d;
            Object[] objArr = this.f70537c;
            if (i2 == objArr.length) {
                return null;
            }
            this.d = i2 + 1;
            Object obj = objArr[i2];
            Objects.requireNonNull(obj, "The array element is null");
            return obj;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            this.f70538e = true;
            return 1;
        }
    }

    public ObservableFromArray(T[] tArr) {
        this.f70535b = tArr;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        FromArrayDisposable fromArrayDisposable = new FromArrayDisposable(observer, this.f70535b);
        observer.onSubscribe(fromArrayDisposable);
        if (fromArrayDisposable.f70538e) {
            return;
        }
        Object[] objArr = fromArrayDisposable.f70537c;
        int length = objArr.length;
        for (int i2 = 0; i2 < length && !fromArrayDisposable.f70539f; i2++) {
            Object obj = objArr[i2];
            Observer observer2 = fromArrayDisposable.f70536b;
            if (obj == null) {
                observer2.onError(new NullPointerException(n00.m(i2, "The element at index ", " is null")));
                return;
            }
            observer2.onNext(obj);
        }
        if (fromArrayDisposable.f70539f) {
            return;
        }
        fromArrayDisposable.f70536b.onComplete();
    }
}
