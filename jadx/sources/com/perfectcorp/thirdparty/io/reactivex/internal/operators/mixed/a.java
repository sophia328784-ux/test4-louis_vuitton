package com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a<R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42729b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f42730c;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.a$a, reason: collision with other inner class name */
    public static final class C0216a<R> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable, e<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e f42731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ObservableSource f42732c;

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
            ObservableSource observableSource = this.f42732c;
            if (observableSource == null) {
                this.f42731b.onComplete();
            } else {
                this.f42732c = null;
                observableSource.subscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42731b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42731b.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
        }
    }

    public a(com.perfectcorp.thirdparty.io.reactivex.b bVar, ObservableSource<? extends R> observableSource) {
        this.f42729b = bVar;
        this.f42730c = observableSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        C0216a c0216a = new C0216a();
        c0216a.f42732c = this.f42730c;
        c0216a.f42731b = eVar;
        eVar.onSubscribe(c0216a);
        this.f42729b.a(c0216a);
    }
}
