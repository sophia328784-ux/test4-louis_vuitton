package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMergeWithSingle<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SingleSource f70677c;

    public static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReference f70679c = new AtomicReference();
        public final OtherObserver d = new OtherObserver(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70680e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile SpscLinkedArrayQueue f70681f;
        public Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70682h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70683i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile int f70684j;

        public static final class OtherObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MergeWithObserver f70685b;

            public OtherObserver(MergeWithObserver mergeWithObserver) {
                this.f70685b = mergeWithObserver;
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                MergeWithObserver mergeWithObserver = this.f70685b;
                if (mergeWithObserver.f70680e.a(th)) {
                    DisposableHelper.a(mergeWithObserver.f70679c);
                    if (mergeWithObserver.getAndIncrement() == 0) {
                        mergeWithObserver.a();
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                MergeWithObserver mergeWithObserver = this.f70685b;
                if (mergeWithObserver.compareAndSet(0, 1)) {
                    mergeWithObserver.f70678b.onNext(obj);
                    mergeWithObserver.f70684j = 2;
                } else {
                    mergeWithObserver.g = obj;
                    mergeWithObserver.f70684j = 1;
                    if (mergeWithObserver.getAndIncrement() != 0) {
                        return;
                    }
                }
                mergeWithObserver.a();
            }
        }

        public MergeWithObserver(Observer observer) {
            this.f70678b = observer;
        }

        public final void a() {
            Observer observer = this.f70678b;
            int iAddAndGet = 1;
            while (!this.f70682h) {
                if (this.f70680e.get() != null) {
                    this.g = null;
                    this.f70681f = null;
                    this.f70680e.d(observer);
                    return;
                }
                int i2 = this.f70684j;
                if (i2 == 1) {
                    Object obj = this.g;
                    this.g = null;
                    this.f70684j = 2;
                    observer.onNext(obj);
                    i2 = 2;
                }
                boolean z = this.f70683i;
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70681f;
                Object objPoll = spscLinkedArrayQueue != null ? spscLinkedArrayQueue.poll() : null;
                boolean z2 = objPoll == null;
                if (z && z2 && i2 == 2) {
                    this.f70681f = null;
                    observer.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(objPoll);
                }
            }
            this.g = null;
            this.f70681f = null;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70682h = true;
            DisposableHelper.a(this.f70679c);
            DisposableHelper.a(this.d);
            this.f70680e.b();
            if (getAndIncrement() == 0) {
                this.f70681f = null;
                this.g = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.f70679c.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70683i = true;
            if (getAndIncrement() == 0) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70680e.a(th)) {
                DisposableHelper.a(this.d);
                if (getAndIncrement() == 0) {
                    a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (compareAndSet(0, 1)) {
                this.f70678b.onNext(obj);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70681f;
                if (spscLinkedArrayQueue == null) {
                    spscLinkedArrayQueue = new SpscLinkedArrayQueue(Observable.bufferSize());
                    this.f70681f = spscLinkedArrayQueue;
                }
                spscLinkedArrayQueue.offer(obj);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70679c, disposable);
        }
    }

    public ObservableMergeWithSingle(Observable<T> observable, SingleSource<? extends T> singleSource) {
        super(observable);
        this.f70677c = singleSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f70226b.subscribe(mergeWithObserver);
        this.f70677c.a(mergeWithObserver.d);
    }
}
