package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class o extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42680c;

    public static final class a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42682c;
        public boolean d;

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
            this.f42681b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42681b;
            if (this.d) {
                aVar.onError(th);
                return;
            }
            this.d = true;
            try {
                com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.f42682c.apply(th);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The errorMapper returned a null CompletableSource");
                bVar.a(this);
            } catch (Throwable th2) {
                aVar.onError(new CompositeException(th, th2));
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
        }
    }

    public o(com.perfectcorp.thirdparty.io.reactivex.b bVar, Function<? super Throwable, ? extends com.perfectcorp.thirdparty.io.reactivex.b> function) {
        this.f42679b = bVar;
        this.f42680c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.f42681b = aVar;
        aVar2.f42682c = this.f42680c;
        aVar.onSubscribe(aVar2);
        this.f42679b.a(aVar2);
    }
}
