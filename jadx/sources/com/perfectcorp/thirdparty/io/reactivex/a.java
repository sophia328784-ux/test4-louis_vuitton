package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public interface a {
    void onComplete();

    void onError(Throwable th);

    void onSubscribe(Disposable disposable);
}
