package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class r<T> extends Completable implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42905c;
    public final boolean d;

    public static final class a<T> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.a f42906b;
        public final Function d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f42908e;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f42910h;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c f42907c = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CompositeDisposable f42909f = new CompositeDisposable();

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.r$a$a, reason: collision with other inner class name */
        public final class C0220a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {
            public C0220a() {
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onComplete() {
                a aVar = a.this;
                aVar.f42909f.c(this);
                aVar.onComplete();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onError(Throwable th) throws Throwable {
                a aVar = a.this;
                aVar.f42909f.c(this);
                aVar.onError(th);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar, Function function, boolean z) {
            this.f42906b = aVar;
            this.d = function;
            this.f42908e = z;
            lazySet(1);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            this.f42910h = true;
            this.g.dispose();
            this.f42909f.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42907c);
                com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42906b;
                if (thB != null) {
                    aVar.onError(thB);
                } else {
                    aVar.onComplete();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) throws Throwable {
            com.perfectcorp.thirdparty.io.reactivex.internal.util.c cVar = this.f42907c;
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            boolean z = this.f42908e;
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42906b;
            if (!z) {
                dispose();
                if (getAndSet(0) <= 0) {
                    return;
                }
            } else if (decrementAndGet() != 0) {
                return;
            }
            aVar.onError(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) throws Throwable {
            try {
                com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.d.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0220a c0220a = new C0220a();
                if (this.f42910h || !this.f42909f.b(c0220a)) {
                    return;
                }
                bVar.a(c0220a);
            } catch (Throwable th) {
                this.g.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.g, disposable)) {
                this.g = disposable;
                this.f42906b.onSubscribe(this);
            }
        }
    }

    public r(ObservableSource<T> observableSource, Function<? super T, ? extends com.perfectcorp.thirdparty.io.reactivex.b> function, boolean z) {
        this.f42904b = observableSource;
        this.f42905c = function;
        this.d = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new q(this.f42904b, this.f42905c, this.d);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        this.f42904b.subscribe(new a(aVar, this.f42905c, this.d));
    }
}
