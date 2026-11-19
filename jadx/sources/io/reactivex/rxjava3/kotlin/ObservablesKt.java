package io.reactivex.rxjava3.kotlin;

import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"rxkotlin"}, k = 2, mv = {1, 4, 0})
public abstract class ObservablesKt {
    public static final Observable a(Observable observable, Observable observable2) {
        observable.getClass();
        observable2.getClass();
        Observable observableWithLatestFrom = observable.withLatestFrom(observable2, ObservablesKt$withLatestFrom$2.f71128a);
        observableWithLatestFrom.getClass();
        return observableWithLatestFrom;
    }
}
