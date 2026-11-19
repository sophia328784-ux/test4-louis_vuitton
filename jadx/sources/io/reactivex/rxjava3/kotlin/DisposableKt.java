package io.reactivex.rxjava3.kotlin;

import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"rxkotlin"}, k = 2, mv = {1, 4, 0})
public abstract class DisposableKt {
    public static final void a(CompositeDisposable compositeDisposable, Disposable disposable) {
        compositeDisposable.getClass();
        disposable.getClass();
        compositeDisposable.b(disposable);
    }
}
