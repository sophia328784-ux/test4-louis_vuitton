package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.Arrays;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public final class ab<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterable f42978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42979c;

    public final class a implements Function<T, R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ ab f42980b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
        public final Object apply(Object obj) {
            Object objApply = this.f42980b.f42979c.apply(new Object[]{obj});
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The zipper returned a null value");
            return objApply;
        }
    }

    public ab(Iterable<? extends SingleSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        this.f42978b = iterable;
        this.f42979c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        SingleSource[] singleSourceArr = new SingleSource[8];
        try {
            int i2 = 0;
            for (SingleSource singleSource : this.f42978b) {
                if (singleSource == null) {
                    Throwable nullPointerException = new NullPointerException("One of the sources is null");
                    fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                    fVar.onError(nullPointerException);
                    return;
                } else {
                    if (i2 == singleSourceArr.length) {
                        singleSourceArr = (SingleSource[]) Arrays.copyOf(singleSourceArr, (i2 >> 2) + i2);
                    }
                    int i3 = i2 + 1;
                    singleSourceArr[i2] = singleSource;
                    i2 = i3;
                }
            }
            if (i2 == 0) {
                Throwable noSuchElementException = new NoSuchElementException();
                fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                fVar.onError(noSuchElementException);
            } else {
                if (i2 == 1) {
                    SingleSource singleSource2 = singleSourceArr[0];
                    a aVar = new a();
                    aVar.f42980b = this;
                    singleSource2.a(new t.a(fVar, aVar));
                    return;
                }
                aa.b bVar = new aa.b(fVar, i2, this.f42979c);
                fVar.onSubscribe(bVar);
                for (int i4 = 0; i4 < i2 && !bVar.isDisposed(); i4++) {
                    singleSourceArr[i4].a(bVar.d[i4]);
                }
            }
        } catch (Throwable th) {
            fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            fVar.onError(th);
        }
    }
}
