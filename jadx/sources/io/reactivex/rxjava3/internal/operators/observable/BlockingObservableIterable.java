package io.reactivex.rxjava3.internal.operators.observable;

import defpackage.b21;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingObservableIterable<T> implements Iterable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70228c;

    public static final class BlockingObservableIterator<T> extends AtomicReference<Disposable> implements Observer<T>, Iterator<T>, Disposable {
        private static final long serialVersionUID = 6695226475494099826L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70229b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ReentrantLock f70230c;
        public final Condition d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70231e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile Throwable f70232f;

        public BlockingObservableIterator(int i2) {
            this.f70229b = new SpscLinkedArrayQueue(i2);
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f70230c = reentrantLock;
            this.d = reentrantLock.newCondition();
        }

        public final void a() {
            ReentrantLock reentrantLock = this.f70230c;
            reentrantLock.lock();
            try {
                this.d.signalAll();
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
            a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            while (!isDisposed()) {
                boolean z = this.f70231e;
                boolean zIsEmpty = this.f70229b.isEmpty();
                if (z) {
                    Throwable th = this.f70232f;
                    if (th != null) {
                        throw ExceptionHelper.e(th);
                    }
                    if (zIsEmpty) {
                        return false;
                    }
                }
                if (!zIsEmpty) {
                    return true;
                }
                try {
                    this.f70230c.lock();
                    while (!this.f70231e && this.f70229b.isEmpty() && !isDisposed()) {
                        try {
                            this.d.await();
                        } catch (Throwable th2) {
                            this.f70230c.unlock();
                            throw th2;
                        }
                    }
                    this.f70230c.unlock();
                } catch (InterruptedException e2) {
                    DisposableHelper.a(this);
                    a();
                    throw ExceptionHelper.e(e2);
                }
            }
            Throwable th3 = this.f70232f;
            if (th3 == null) {
                return false;
            }
            throw ExceptionHelper.e(th3);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b(get());
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                return this.f70229b.poll();
            }
            b21.x();
            return null;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70231e = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70232f = th;
            this.f70231e = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70229b.offer(obj);
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }

    public BlockingObservableIterable(ObservableSource<? extends T> observableSource, int i2) {
        this.f70227b = observableSource;
        this.f70228c = i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        BlockingObservableIterator blockingObservableIterator = new BlockingObservableIterator(this.f70228c);
        this.f70227b.subscribe(blockingObservableIterator);
        return blockingObservableIterator;
    }
}
