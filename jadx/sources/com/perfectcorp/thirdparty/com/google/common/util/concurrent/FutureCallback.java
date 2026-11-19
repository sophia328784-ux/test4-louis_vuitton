package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes3.dex */
public interface FutureCallback<V> {
    void onFailure(Throwable th);

    void onSuccess(Object obj);
}
