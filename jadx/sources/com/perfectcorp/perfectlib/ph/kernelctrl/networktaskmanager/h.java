package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.network.DownloadHandle;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
final class h implements FutureCallback<DownloadReport.CompleteReport> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ ListenableFuture f41487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ DownloadHandle f41488b;

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        if (this.f41487a.isCancelled()) {
            this.f41488b.cancel();
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
    }
}
