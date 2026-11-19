package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCache<T> extends AbstractObservableWithUpstream<T, T> implements Observer<T> {
    public static final CacheDisposable[] l = new CacheDisposable[0];
    public static final CacheDisposable[] m = new CacheDisposable[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f70309c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicReference f70310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile long f70311f;
    public final Node g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Node f70312h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f70313i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Throwable f70314j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile boolean f70315k;

    public static final class CacheDisposable<T> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 6770240836423125754L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ObservableCache f70317c;
        public Node d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f70318e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f70319f;
        public volatile boolean g;

        public CacheDisposable(Observer observer, ObservableCache observableCache) {
            this.f70316b = observer;
            this.f70317c = observableCache;
            this.d = observableCache.g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            CacheDisposable[] cacheDisposableArr;
            if (this.g) {
                return;
            }
            this.g = true;
            AtomicReference atomicReference = this.f70317c.f70310e;
            while (true) {
                CacheDisposable<T>[] cacheDisposableArr2 = (CacheDisposable[]) atomicReference.get();
                int length = cacheDisposableArr2.length;
                if (length == 0) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (cacheDisposableArr2[i2] == this) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    cacheDisposableArr = ObservableCache.l;
                } else {
                    CacheDisposable[] cacheDisposableArr3 = new CacheDisposable[length - 1];
                    System.arraycopy(cacheDisposableArr2, 0, cacheDisposableArr3, 0, i2);
                    System.arraycopy(cacheDisposableArr2, i2 + 1, cacheDisposableArr3, i2, (length - i2) - 1);
                    cacheDisposableArr = cacheDisposableArr3;
                }
                while (!atomicReference.compareAndSet(cacheDisposableArr2, cacheDisposableArr)) {
                    if (atomicReference.get() != cacheDisposableArr2) {
                    }
                }
                return;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.g;
        }
    }

    public static final class Node<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object[] f70320a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public volatile Node f70321b;

        public Node(int i2) {
            this.f70320a = new Object[i2];
        }
    }

    public ObservableCache(Observable<T> observable, int i2) {
        super(observable);
        this.d = i2;
        this.f70309c = new AtomicBoolean();
        Node node = new Node(i2);
        this.g = node;
        this.f70312h = node;
        this.f70310e = new AtomicReference(l);
    }

    public final void c(CacheDisposable cacheDisposable) {
        if (cacheDisposable.getAndIncrement() != 0) {
            return;
        }
        long j2 = cacheDisposable.f70319f;
        int i2 = cacheDisposable.f70318e;
        Node node = cacheDisposable.d;
        Observer observer = cacheDisposable.f70316b;
        int i3 = this.d;
        int iAddAndGet = 1;
        while (!cacheDisposable.g) {
            boolean z = this.f70315k;
            boolean z2 = this.f70311f == j2;
            if (z && z2) {
                cacheDisposable.d = null;
                Throwable th = this.f70314j;
                if (th != null) {
                    observer.onError(th);
                    return;
                } else {
                    observer.onComplete();
                    return;
                }
            }
            if (z2) {
                cacheDisposable.f70319f = j2;
                cacheDisposable.f70318e = i2;
                cacheDisposable.d = node;
                iAddAndGet = cacheDisposable.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            } else {
                if (i2 == i3) {
                    node = node.f70321b;
                    i2 = 0;
                }
                observer.onNext(node.f70320a[i2]);
                i2++;
                j2++;
            }
        }
        cacheDisposable.d = null;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        this.f70315k = true;
        for (CacheDisposable cacheDisposable : (CacheDisposable[]) this.f70310e.getAndSet(m)) {
            c(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        this.f70314j = th;
        this.f70315k = true;
        for (CacheDisposable cacheDisposable : (CacheDisposable[]) this.f70310e.getAndSet(m)) {
            c(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        int i2 = this.f70313i;
        if (i2 == this.d) {
            Node node = new Node(i2);
            node.f70320a[0] = obj;
            this.f70313i = 1;
            this.f70312h.f70321b = node;
            this.f70312h = node;
        } else {
            this.f70312h.f70320a[i2] = obj;
            this.f70313i = i2 + 1;
        }
        this.f70311f++;
        for (CacheDisposable cacheDisposable : (CacheDisposable[]) this.f70310e.get()) {
            c(cacheDisposable);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        CacheDisposable cacheDisposable = new CacheDisposable(observer, this);
        observer.onSubscribe(cacheDisposable);
        loop0: while (true) {
            AtomicReference atomicReference = this.f70310e;
            CacheDisposable[] cacheDisposableArr = (CacheDisposable[]) atomicReference.get();
            if (cacheDisposableArr == m) {
                break;
            }
            int length = cacheDisposableArr.length;
            CacheDisposable[] cacheDisposableArr2 = new CacheDisposable[length + 1];
            System.arraycopy(cacheDisposableArr, 0, cacheDisposableArr2, 0, length);
            cacheDisposableArr2[length] = cacheDisposable;
            do {
                if (atomicReference.compareAndSet(cacheDisposableArr, cacheDisposableArr2)) {
                    break loop0;
                }
            } while (atomicReference.get() == cacheDisposableArr);
        }
        AtomicBoolean atomicBoolean = this.f70309c;
        if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
            c(cacheDisposable);
        } else {
            this.f70226b.subscribe(this);
        }
    }
}
