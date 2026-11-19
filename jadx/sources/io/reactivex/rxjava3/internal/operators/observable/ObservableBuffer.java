package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableBuffer<T, U extends Collection<? super T>> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70273c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Supplier f70274e;

    public static final class BufferExactObserver<T, U extends Collection<? super T>> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70275b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70276c;
        public final Supplier d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Collection f70277e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f70278f;
        public Disposable g;

        public BufferExactObserver(Observer observer, int i2, Supplier supplier) {
            this.f70275b = observer;
            this.f70276c = i2;
            this.d = supplier;
        }

        public final boolean a() {
            try {
                Object obj = this.d.get();
                Objects.requireNonNull(obj, "Empty buffer supplied");
                this.f70277e = (Collection) obj;
                return true;
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70277e = null;
                Disposable disposable = this.g;
                Observer observer = this.f70275b;
                if (disposable == null) {
                    EmptyDisposable.b(th, observer);
                    return false;
                }
                disposable.dispose();
                observer.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Collection collection = this.f70277e;
            if (collection != null) {
                this.f70277e = null;
                boolean zIsEmpty = collection.isEmpty();
                Observer observer = this.f70275b;
                if (!zIsEmpty) {
                    observer.onNext(collection);
                }
                observer.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70277e = null;
            this.f70275b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Collection collection = this.f70277e;
            if (collection != null) {
                collection.add(obj);
                int i2 = this.f70278f + 1;
                this.f70278f = i2;
                if (i2 >= this.f70276c) {
                    this.f70275b.onNext(collection);
                    this.f70278f = 0;
                    a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70275b.onSubscribe(this);
            }
        }
    }

    public static final class BufferSkipObserver<T, U extends Collection<? super T>> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8223395059921494546L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70279b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70280c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Supplier f70281e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70282f;
        public final ArrayDeque g = new ArrayDeque();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f70283h;

        public BufferSkipObserver(Observer observer, int i2, int i3, Supplier supplier) {
            this.f70279b = observer;
            this.f70280c = i2;
            this.d = i3;
            this.f70281e = supplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70282f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70282f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            while (true) {
                ArrayDeque arrayDeque = this.g;
                boolean zIsEmpty = arrayDeque.isEmpty();
                Observer observer = this.f70279b;
                if (zIsEmpty) {
                    observer.onComplete();
                    return;
                }
                observer.onNext(arrayDeque.poll());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.g.clear();
            this.f70279b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            long j2 = this.f70283h;
            this.f70283h = 1 + j2;
            long j3 = j2 % ((long) this.d);
            Observer observer = this.f70279b;
            ArrayDeque arrayDeque = this.g;
            if (j3 == 0) {
                try {
                    Object obj2 = this.f70281e.get();
                    if (obj2 == null) {
                        throw ExceptionHelper.b("The bufferSupplier returned a null Collection.");
                    }
                    Throwable th = ExceptionHelper.f71119a;
                    arrayDeque.offer((Collection) obj2);
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    arrayDeque.clear();
                    this.f70282f.dispose();
                    observer.onError(th2);
                    return;
                }
            }
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) it.next();
                collection.add(obj);
                if (this.f70280c <= collection.size()) {
                    it.remove();
                    observer.onNext(collection);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70282f, disposable)) {
                this.f70282f = disposable;
                this.f70279b.onSubscribe(this);
            }
        }
    }

    public ObservableBuffer(ObservableSource<T> observableSource, int i2, int i3, Supplier<U> supplier) {
        super(observableSource);
        this.f70273c = i2;
        this.d = i3;
        this.f70274e = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70226b;
        Supplier supplier = this.f70274e;
        int i2 = this.d;
        int i3 = this.f70273c;
        if (i2 != i3) {
            observableSource.subscribe(new BufferSkipObserver(observer, i3, i2, supplier));
            return;
        }
        BufferExactObserver bufferExactObserver = new BufferExactObserver(observer, i3, supplier);
        if (bufferExactObserver.a()) {
            observableSource.subscribe(bufferExactObserver);
        }
    }
}
