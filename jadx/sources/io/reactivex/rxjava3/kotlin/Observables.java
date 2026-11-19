package io.reactivex.rxjava3.kotlin;

import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lio/reactivex/rxjava3/kotlin/Observables;", "", "rxkotlin"}, k = 1, mv = {1, 4, 0})
public abstract class Observables {
    public static Observable a(Observable observable, Observable observable2) {
        observable.getClass();
        observable2.getClass();
        Observable observableCombineLatest = Observable.combineLatest(observable, observable2, Observables$combineLatest$2.f71127a);
        observableCombineLatest.getClass();
        return observableCombineLatest;
    }
}
