package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class ai<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f42778c;
    public final long d;

    public static final class a<T> extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42779b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f42780c;
        public ObservableSource d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Predicate f42781e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f42782f;

        public final void a() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.f42780c.isDisposed()) {
                    this.d.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42779b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42779b;
            long j2 = this.f42782f;
            if (j2 != Long.MAX_VALUE) {
                this.f42782f = j2 - 1;
            }
            if (j2 == 0) {
                eVar.onError(th);
                return;
            }
            try {
                if (this.f42781e.test(th)) {
                    a();
                } else {
                    eVar.onError(th);
                }
            } catch (Throwable th2) {
                eVar.onError(new CompositeException(th, th2));
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42779b.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f42780c, disposable);
        }
    }

    public ai(Observable<T> observable, long j2, Predicate<? super Throwable> predicate) {
        super(observable);
        this.f42778c = predicate;
        this.d = j2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();
        eVar.onSubscribe(eVar2);
        a aVar = new a();
        aVar.f42779b = eVar;
        aVar.f42780c = eVar2;
        aVar.d = this.f42749b;
        aVar.f42781e = this.f42778c;
        aVar.f42782f = this.d;
        aVar.a();
    }
}
