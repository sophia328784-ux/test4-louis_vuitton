package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeToObservable;
import io.reactivex.rxjava3.internal.operators.single.SingleToObservable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
abstract class ScalarXMapZHelper {
    public static boolean a(Object obj, Function function, CompletableObserver completableObserver) {
        CompletableSource completableSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            Object obj2 = ((Supplier) obj).get();
            if (obj2 != null) {
                Object objApply = function.apply(obj2);
                Objects.requireNonNull(objApply, "The mapper returned a null CompletableSource");
                completableSource = (CompletableSource) objApply;
            } else {
                completableSource = null;
            }
            if (completableSource != null) {
                completableSource.a(completableObserver);
                return true;
            }
            completableObserver.onSubscribe(EmptyDisposable.INSTANCE);
            completableObserver.onComplete();
            return true;
        } catch (Throwable th) {
            Exceptions.a(th);
            completableObserver.onSubscribe(EmptyDisposable.INSTANCE);
            completableObserver.onError(th);
            return true;
        }
    }

    public static boolean b(Object obj, Function function, Observer observer) {
        MaybeSource maybeSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            Object obj2 = ((Supplier) obj).get();
            if (obj2 != null) {
                Object objApply = function.apply(obj2);
                Objects.requireNonNull(objApply, "The mapper returned a null MaybeSource");
                maybeSource = (MaybeSource) objApply;
            } else {
                maybeSource = null;
            }
            if (maybeSource == null) {
                EmptyDisposable.a(observer);
                return true;
            }
            maybeSource.a(MaybeToObservable.c(observer));
            return true;
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
            return true;
        }
    }

    public static boolean c(Object obj, Function function, Observer observer) {
        SingleSource singleSource;
        if (!(obj instanceof Supplier)) {
            return false;
        }
        try {
            Object obj2 = ((Supplier) obj).get();
            if (obj2 != null) {
                Object objApply = function.apply(obj2);
                Objects.requireNonNull(objApply, "The mapper returned a null SingleSource");
                singleSource = (SingleSource) objApply;
            } else {
                singleSource = null;
            }
            if (singleSource == null) {
                EmptyDisposable.a(observer);
                return true;
            }
            singleSource.a(SingleToObservable.c(observer));
            return true;
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
            return true;
        }
    }
}
