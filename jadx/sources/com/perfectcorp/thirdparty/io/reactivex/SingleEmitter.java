package com.perfectcorp.thirdparty.io.reactivex;

/* JADX INFO: loaded from: classes3.dex */
public interface SingleEmitter<T> {
    boolean a(Throwable th);

    void onError(Throwable th);

    void onSuccess(Object obj);
}
