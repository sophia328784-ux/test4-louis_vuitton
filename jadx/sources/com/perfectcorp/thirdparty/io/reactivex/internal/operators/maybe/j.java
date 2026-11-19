package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public final class j<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaybeSource f42726b;

    public static final class a<T> implements com.perfectcorp.thirdparty.io.reactivex.d<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42728c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42728c.dispose();
            this.f42728c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42728c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onComplete() {
            this.f42728c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42727b.onError(new NoSuchElementException("The MaybeSource is empty"));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onError(Throwable th) {
            this.f42728c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42727b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42728c, disposable)) {
                this.f42728c = disposable;
                this.f42727b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f42728c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42727b.onSuccess(obj);
        }
    }

    public j(MaybeSource<T> maybeSource, T t) {
        this.f42726b = maybeSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42727b = fVar;
        this.f42726b.subscribe(aVar);
    }
}
