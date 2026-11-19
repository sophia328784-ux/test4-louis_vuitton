package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.VolatileSizeArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public class TestObserver<T> extends BaseTestConsumer<T, TestObserver<T>> implements Observer<T>, Disposable, MaybeObserver<T>, SingleObserver<T>, CompletableObserver {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Observer f71141f;
    public final AtomicReference g;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class EmptyObserver implements Observer<Object> {
        private static final /* synthetic */ EmptyObserver[] $VALUES;
        public static final EmptyObserver INSTANCE;

        static {
            EmptyObserver emptyObserver = new EmptyObserver("INSTANCE", 0);
            INSTANCE = emptyObserver;
            $VALUES = new EmptyObserver[]{emptyObserver};
        }

        public static EmptyObserver valueOf(String str) {
            return (EmptyObserver) Enum.valueOf(EmptyObserver.class, str);
        }

        public static EmptyObserver[] values() {
            return (EmptyObserver[]) $VALUES.clone();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
        }
    }

    public TestObserver(Observer<? super T> observer) {
        this.g = new AtomicReference();
        this.f71141f = observer;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.a(this.g);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.b((Disposable) this.g.get());
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        CountDownLatch countDownLatch = this.f71130b;
        if (!this.f71132e) {
            this.f71132e = true;
            if (this.g.get() == null) {
                this.d.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            this.f71141f.onComplete();
        } finally {
            countDownLatch.countDown();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        CountDownLatch countDownLatch = this.f71130b;
        boolean z = this.f71132e;
        VolatileSizeArrayList volatileSizeArrayList = this.d;
        if (!z) {
            this.f71132e = true;
            if (this.g.get() == null) {
                volatileSizeArrayList.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        try {
            Thread.currentThread();
            if (th == null) {
                volatileSizeArrayList.add(new NullPointerException("onError received a null Throwable"));
            } else {
                volatileSizeArrayList.add(th);
            }
            this.f71141f.onError(th);
        } finally {
            countDownLatch.countDown();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        boolean z = this.f71132e;
        VolatileSizeArrayList volatileSizeArrayList = this.d;
        if (!z) {
            this.f71132e = true;
            if (this.g.get() == null) {
                volatileSizeArrayList.add(new IllegalStateException("onSubscribe not called in proper order"));
            }
        }
        Thread.currentThread();
        this.f71131c.add(obj);
        if (obj == null) {
            volatileSizeArrayList.add(new NullPointerException("onNext received a null value"));
        }
        this.f71141f.onNext(obj);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        AtomicReference atomicReference;
        Thread.currentThread();
        VolatileSizeArrayList volatileSizeArrayList = this.d;
        if (disposable == null) {
            volatileSizeArrayList.add(new NullPointerException("onSubscribe received a null Subscription"));
            return;
        }
        do {
            atomicReference = this.g;
            if (atomicReference.compareAndSet(null, disposable)) {
                this.f71141f.onSubscribe(disposable);
                return;
            }
        } while (atomicReference.get() == null);
        disposable.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            volatileSizeArrayList.add(new IllegalStateException("onSubscribe received multiple subscriptions: " + disposable));
        }
    }

    @Override // io.reactivex.rxjava3.core.MaybeObserver
    public final void onSuccess(Object obj) {
        onNext(obj);
        onComplete();
    }

    public TestObserver() {
        this(EmptyObserver.INSTANCE);
    }
}
