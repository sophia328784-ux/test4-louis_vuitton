package com.perfectcorp.common.guava;

import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultFutureCallback<V> implements b<V> {
    @Override // com.perfectcorp.common.guava.b
    public void a() {
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public void onFailure(Throwable th) {
        Log.e("DefaultFutureCallback", "onFailure", th);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public void onSuccess(Object obj) {
    }
}
