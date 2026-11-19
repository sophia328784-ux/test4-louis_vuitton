package com.perfectcorp.thirdparty.io.reactivex.subjects;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.e;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Subject<T> extends Observable<T> implements e<T> {
    public final Subject d() {
        if (this instanceof a) {
            return this;
        }
        a aVar = new a();
        aVar.f43192b = (ReplaySubject) this;
        return aVar;
    }
}
