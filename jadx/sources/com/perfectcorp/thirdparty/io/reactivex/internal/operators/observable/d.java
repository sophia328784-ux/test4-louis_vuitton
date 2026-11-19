package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class d<T, U extends Collection<? super T>> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f42816c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Callable f42817e;

    public static final class a<T, U extends Collection<? super T>> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42818b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42819c;
        public Callable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Collection f42820e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f42821f;
        public Disposable g;

        public final boolean a() {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42818b;
            try {
                Collection collection = (Collection) this.d.call();
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(collection, "Empty buffer supplied");
                this.f42820e = collection;
                return true;
            } catch (Throwable th) {
                this.f42820e = null;
                Disposable disposable = this.g;
                if (disposable == null) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.c(th, eVar);
                    return false;
                }
                disposable.dispose();
                eVar.onError(th);
                return false;
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42818b;
            Collection collection = this.f42820e;
            if (collection != null) {
                this.f42820e = null;
                if (!collection.isEmpty()) {
                    eVar.onNext(collection);
                }
                eVar.onComplete();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.f42820e = null;
            this.f42818b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            Collection collection = this.f42820e;
            if (collection != null) {
                collection.add(obj);
                int i2 = this.f42821f + 1;
                this.f42821f = i2;
                if (i2 >= this.f42819c) {
                    this.f42818b.onNext(collection);
                    this.f42821f = 0;
                    a();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.g, disposable)) {
                this.g = disposable;
                this.f42818b.onSubscribe(this);
            }
        }
    }

    public static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42823c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Callable f42824e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f42825f;
        public ArrayDeque g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public long f42826h;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42825f.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42825f.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            ArrayDeque arrayDeque = this.g;
            while (true) {
                boolean zIsEmpty = arrayDeque.isEmpty();
                com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42822b;
                if (zIsEmpty) {
                    eVar.onComplete();
                    return;
                }
                eVar.onNext(arrayDeque.poll());
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.g.clear();
            this.f42822b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42822b;
            ArrayDeque arrayDeque = this.g;
            long j2 = this.f42826h;
            this.f42826h = 1 + j2;
            if (j2 % ((long) this.d) == 0) {
                try {
                    Collection collection = (Collection) this.f42824e.call();
                    com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(collection, "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
                    arrayDeque.offer(collection);
                } catch (Throwable th) {
                    arrayDeque.clear();
                    this.f42825f.dispose();
                    eVar.onError(th);
                    return;
                }
            }
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                Collection collection2 = (Collection) it.next();
                collection2.add(obj);
                if (this.f42823c <= collection2.size()) {
                    it.remove();
                    eVar.onNext(collection2);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42825f, disposable)) {
                this.f42825f = disposable;
                this.f42822b.onSubscribe(this);
            }
        }
    }

    public d(ObservableSource<T> observableSource, int i2, int i3, Callable<U> callable) {
        super(observableSource);
        this.f42816c = i2;
        this.d = i3;
        this.f42817e = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        ObservableSource observableSource = this.f42749b;
        Callable callable = this.f42817e;
        int i2 = this.d;
        int i3 = this.f42816c;
        if (i2 == i3) {
            a aVar = new a();
            aVar.f42818b = eVar;
            aVar.f42819c = i3;
            aVar.d = callable;
            if (aVar.a()) {
                observableSource.subscribe(aVar);
                return;
            }
            return;
        }
        b bVar = new b();
        bVar.f42822b = eVar;
        bVar.f42823c = i3;
        bVar.d = i2;
        bVar.f42824e = callable;
        bVar.g = new ArrayDeque();
        observableSource.subscribe(bVar);
    }
}
