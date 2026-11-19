package org.reactivestreams;

/* JADX INFO: loaded from: classes4.dex */
public interface Subscriber<T> {
    void b(Subscription subscription);

    void onComplete();

    void onError(Throwable th);

    void onNext(Object obj);
}
