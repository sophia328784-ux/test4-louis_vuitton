package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Subject<T> extends Observable<T> implements Observer<T> {
    public final Subject c() {
        return this instanceof SerializedSubject ? this : new SerializedSubject((PublishSubject) this);
    }
}
