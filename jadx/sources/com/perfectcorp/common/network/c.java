package com.perfectcorp.common.network;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.subjects.Subject;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class c extends DefaultFutureCallback<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Subject f39366a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseDownloadHandle f39367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f39368c;

    public c(Subject subject, BaseDownloadHandle baseDownloadHandle, ListenableFuture listenableFuture) {
        this.f39366a = subject;
        this.f39367b = baseDownloadHandle;
        this.f39368c = listenableFuture;
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        boolean zIsCancelled = this.f39368c.isCancelled();
        Subject subject = this.f39366a;
        if (zIsCancelled) {
            subject.onError(new SkipCallbackException("Download task had been canceled.", th));
        } else {
            subject.onError(th);
        }
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        BaseDownloadHandle baseDownloadHandle = this.f39367b;
        BaseDownloadHandle.b bVar = new BaseDownloadHandle.b(baseDownloadHandle.f39298a, 1.0d, baseDownloadHandle.f39299b);
        Subject subject = this.f39366a;
        subject.onNext(bVar);
        subject.onComplete();
    }
}
