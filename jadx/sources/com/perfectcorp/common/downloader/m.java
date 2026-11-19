package com.perfectcorp.common.downloader;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
final class m extends DefaultFutureCallback<f.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f39234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f39235b;

    public m(f fVar, long j2) {
        this.f39235b = fVar;
        this.f39234a = j2;
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        StringBuilder sb = new StringBuilder("[start#");
        f fVar = this.f39235b;
        sb.append(fVar.f39216a);
        sb.append("] failed downloadUri=");
        sb.append(fVar.f39218c);
        Log.c("MultiPartTaskManager", sb.toString(), th);
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        long jNanoTime = (System.nanoTime() - this.f39234a) / 1000000;
        StringBuilder sb = new StringBuilder("[start#");
        f fVar = this.f39235b;
        sb.append(fVar.f39216a);
        sb.append("] end elapsedMs=");
        sb.append(jNanoTime);
        sb.append(", downloadUri=");
        sb.append(fVar.f39218c);
        Log.g(3, "MultiPartTaskManager", sb.toString());
    }
}
