package com.google.firebase.inject;

/* JADX INFO: loaded from: classes2.dex */
public interface Deferred<T> {

    public interface DeferredHandler<T> {
        void g(Provider provider);
    }

    void a(DeferredHandler deferredHandler);
}
