package com.perfectcorp.common.network;

import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class a implements FutureCallback<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ SettableFuture f39361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ ListenableFuture f39362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ BaseDownloadHandle f39363c;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        boolean zIsCancelled = this.f39362b.isCancelled();
        SettableFuture settableFuture = this.f39361a;
        if (zIsCancelled) {
            settableFuture.setException(new SkipCallbackException("Download task had been canceled.", th));
        } else {
            settableFuture.setException(th);
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        SettableFuture settableFuture = this.f39361a;
        BaseDownloadHandle baseDownloadHandle = this.f39363c;
        settableFuture.set(new BaseDownloadHandle.a(baseDownloadHandle.f39298a, baseDownloadHandle.f39299b));
    }
}
