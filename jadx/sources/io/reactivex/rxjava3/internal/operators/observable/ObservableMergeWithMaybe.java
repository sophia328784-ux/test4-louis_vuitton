package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMergeWithMaybe<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaybeSource f70668c;

    public static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70669b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReference f70670c = new AtomicReference();
        public final OtherObserver d = new OtherObserver(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70671e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile SpscLinkedArrayQueue f70672f;
        public Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70673h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70674i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile int f70675j;

        public static final class OtherObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MergeWithObserver f70676b;

            public OtherObserver(MergeWithObserver mergeWithObserver) {
                this.f70676b = mergeWithObserver;
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                MergeWithObserver mergeWithObserver = this.f70676b;
                mergeWithObserver.f70675j = 2;
                if (mergeWithObserver.getAndIncrement() == 0) {
                    mergeWithObserver.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                MergeWithObserver mergeWithObserver = this.f70676b;
                if (mergeWithObserver.f70671e.a(th)) {
                    DisposableHelper.a(mergeWithObserver.f70670c);
                    if (mergeWithObserver.getAndIncrement() == 0) {
                        mergeWithObserver.a();
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                MergeWithObserver mergeWithObserver = this.f70676b;
                if (mergeWithObserver.compareAndSet(0, 1)) {
                    mergeWithObserver.f70669b.onNext(obj);
                    mergeWithObserver.f70675j = 2;
                } else {
                    mergeWithObserver.g = obj;
                    mergeWithObserver.f70675j = 1;
                    if (mergeWithObserver.getAndIncrement() != 0) {
                        return;
                    }
                }
                mergeWithObserver.a();
            }
        }

        public MergeWithObserver(Observer observer) {
            this.f70669b = observer;
        }

        public final void a() {
            Observer observer = this.f70669b;
            int iAddAndGet = 1;
            while (!this.f70673h) {
                if (this.f70671e.get() != null) {
                    this.g = null;
                    this.f70672f = null;
                    this.f70671e.d(observer);
                    return;
                }
                int i2 = this.f70675j;
                if (i2 == 1) {
                    Object obj = this.g;
                    this.g = null;
                    this.f70675j = 2;
                    observer.onNext(obj);
                    i2 = 2;
                }
                boolean z = this.f70674i;
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70672f;
                Object objPoll = spscLinkedArrayQueue != null ? spscLinkedArrayQueue.poll() : null;
                boolean z2 = objPoll == null;
                if (z && z2 && i2 == 2) {
                    this.f70672f = null;
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
            this.f70672f = null;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70673h = true;
            DisposableHelper.a(this.f70670c);
            DisposableHelper.a(this.d);
            this.f70671e.b();
            if (getAndIncrement() == 0) {
                this.f70672f = null;
                this.g = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.f70670c.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70674i = true;
            if (getAndIncrement() == 0) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70671e.a(th)) {
                DisposableHelper.a(this.d);
                if (getAndIncrement() == 0) {
                    a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (compareAndSet(0, 1)) {
                this.f70669b.onNext(obj);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70672f;
                if (spscLinkedArrayQueue == null) {
                    spscLinkedArrayQueue = new SpscLinkedArrayQueue(Observable.bufferSize());
                    this.f70672f = spscLinkedArrayQueue;
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
            DisposableHelper.e(this.f70670c, disposable);
        }
    }

    public ObservableMergeWithMaybe(Observable<T> observable, MaybeSource<? extends T> maybeSource) {
        super(observable);
        this.f70668c = maybeSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f70226b.subscribe(mergeWithObserver);
        this.f70668c.a(mergeWithObserver.d);
    }
}
