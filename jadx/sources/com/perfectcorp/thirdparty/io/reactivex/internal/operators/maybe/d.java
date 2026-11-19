package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class d<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42705c;

    public static final class a<T, R> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.d<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.d f42706b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42707c;
        public Disposable d;

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.d$a$a, reason: collision with other inner class name */
        public final class C0215a implements com.perfectcorp.thirdparty.io.reactivex.d<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ a f42708b;

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
            public final void onComplete() {
                this.f42708b.f42706b.onComplete();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
            public final void onError(Throwable th) {
                this.f42708b.f42706b.onError(th);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this.f42708b, disposable);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSuccess(Object obj) {
                this.f42708b.f42706b.onSuccess(obj);
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.d dVar, Function function) {
            this.f42706b = dVar;
            this.f42707c = function;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            this.d.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onComplete() {
            this.f42706b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onError(Throwable th) {
            this.f42706b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42706b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            try {
                MaybeSource maybeSource = (MaybeSource) this.f42707c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(maybeSource, "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                C0215a c0215a = new C0215a();
                c0215a.f42708b = this;
                maybeSource.subscribe(c0215a);
            } catch (Exception e2) {
                this.f42706b.onError(e2);
            }
        }
    }

    public d(MaybeSource<T> maybeSource, Function<? super T, ? extends MaybeSource<? extends R>> function) {
        super(maybeSource);
        this.f42705c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        this.f42703b.subscribe(new a(dVar, this.f42705c));
    }
}
