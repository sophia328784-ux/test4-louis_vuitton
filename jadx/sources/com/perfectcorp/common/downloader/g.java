package com.perfectcorp.common.downloader;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.common.utility.Log;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class g extends DefaultFutureCallback<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f39229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f39230b;

    public g(f fVar, int i2) {
        this.f39230b = fVar;
        this.f39229a = i2;
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        StringBuilder sb = new StringBuilder("[part#");
        f fVar = this.f39230b;
        sb.append(fVar.f39216a);
        sb.append("] part=");
        sb.append(this.f39229a);
        sb.append(" failed, downloadUri=");
        sb.append(fVar.f39218c);
        Log.c("MultiPartTaskManager", sb.toString(), th);
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        StringBuilder sb = new StringBuilder("[part#");
        f fVar = this.f39230b;
        sb.append(fVar.f39216a);
        sb.append("] part=");
        sb.append(this.f39229a);
        sb.append(" end, downloadUri=");
        sb.append(fVar.f39218c);
        Log.g(3, "MultiPartTaskManager", sb.toString());
    }
}
