package com.perfectcorp.common.downloader;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;

/* JADX INFO: loaded from: classes3.dex */
final class j extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ f f39231a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(f fVar, p.f fVar2, int i2) {
        super(fVar2, 2);
        this.f39231a = fVar;
    }

    @Override // com.perfectcorp.common.downloader.p
    public final void c() throws Exception {
        Log.g(3, "MultiPartTaskManager", "[addDownloadTasksWithoutKnownSize#" + this.f39231a.f39216a + "] notifyPartStart::addDownloadTasksWithoutKnownSize() #1");
        SettableFuture settableFuture = this.f39231a.g;
        if (settableFuture != null) {
            settableFuture.set(null);
        }
    }
}
