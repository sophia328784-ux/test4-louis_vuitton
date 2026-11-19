package com.perfectcorp.common.rx;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.g;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Singles {
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b a(final ListenableFuture listenableFuture, final CallingThread callingThread) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.b(new g() { // from class: com.perfectcorp.common.rx.d
            @Override // com.perfectcorp.thirdparty.io.reactivex.g
            public final void e(SingleEmitter singleEmitter) {
                Futures.c(listenableFuture, new h(singleEmitter), callingThread);
            }
        });
    }
}
