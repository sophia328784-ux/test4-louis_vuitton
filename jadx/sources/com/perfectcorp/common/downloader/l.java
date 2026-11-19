package com.perfectcorp.common.downloader;

import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFutureTask;

/* JADX INFO: loaded from: classes3.dex */
final class l implements FutureCallback<f.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ ListenableFutureTask f39232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ ListenableFuture f39233b;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        if (this.f39232a.isCancelled()) {
            this.f39233b.cancel(Thread.currentThread().isInterrupted());
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
    }
}
