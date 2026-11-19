package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class aa<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource[] f42970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42971c;

    public final class a implements Function<T, R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ aa f42972b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final Object apply(Object obj) {
            Object objApply = this.f42972b.f42971c.apply(new Object[]{obj});
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The zipper returned a null value");
            return objApply;
        }
    }

    public static final class b<T, R> extends AtomicInteger implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f42973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42974c;
        public final c[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Object[] f42975e;

        public b(com.perfectcorp.thirdparty.io.reactivex.f fVar, int i2, Function function) {
            super(i2);
            this.f42973b = fVar;
            this.f42974c = function;
            c[] cVarArr = new c[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                c cVar = new c();
                cVar.f42976b = this;
                cVar.f42977c = i3;
                cVarArr[i3] = cVar;
            }
            this.d = cVarArr;
            this.f42975e = new Object[i2];
        }

        public final void a(int i2, Throwable th) {
            if (getAndSet(0) <= 0) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            c[] cVarArr = this.d;
            int length = cVarArr.length;
            for (int i3 = 0; i3 < i2; i3++) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(cVarArr[i3]);
            }
            while (true) {
                i2++;
                if (i2 >= length) {
                    this.f42973b.onError(th);
                    return;
                }
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(cVarArr[i2]);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (getAndSet(0) > 0) {
                for (c cVar : this.d) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(cVar);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get() <= 0;
        }
    }

    public static final class c<T> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public b f42976b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f42977c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f42976b.a(this.f42977c, th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            b bVar = this.f42976b;
            int i2 = this.f42977c;
            Object[] objArr = bVar.f42975e;
            com.perfectcorp.thirdparty.io.reactivex.f fVar = bVar.f42973b;
            objArr[i2] = obj;
            if (bVar.decrementAndGet() == 0) {
                try {
                    Object objApply = bVar.f42974c.apply(bVar.f42975e);
                    com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The zipper returned a null value");
                    fVar.onSuccess(objApply);
                } catch (Throwable th) {
                    fVar.onError(th);
                }
            }
        }
    }

    public aa(SingleSource<? extends T>[] singleSourceArr, Function<? super Object[], ? extends R> function) {
        this.f42970b = singleSourceArr;
        this.f42971c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        SingleSource[] singleSourceArr = this.f42970b;
        int length = singleSourceArr.length;
        if (length == 1) {
            SingleSource singleSource = singleSourceArr[0];
            a aVar = new a();
            aVar.f42972b = this;
            singleSource.a(new t.a(fVar, aVar));
            return;
        }
        b bVar = new b(fVar, length, this.f42971c);
        fVar.onSubscribe(bVar);
        for (int i2 = 0; i2 < length && !bVar.isDisposed(); i2++) {
            SingleSource singleSource2 = singleSourceArr[i2];
            if (singleSource2 == null) {
                bVar.a(i2, new NullPointerException("One of the sources is null"));
                return;
            }
            singleSource2.a(bVar.d[i2]);
        }
    }
}
