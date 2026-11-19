package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.guava.DefaultFutureCallback;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
final class f extends DefaultFutureCallback<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ File f41481a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.b f41482b;

    public f(c.b bVar, File file) {
        this.f41482b = bVar;
        this.f41481a = file;
    }

    public final void b() {
        if (this.f41482b.w != null) {
            try {
                FileUtils.c(this.f41482b.w.getFuture().get());
            } catch (Throwable th) {
                Log.c("DownloadMakeupHandle", "delete zip file failed", th);
            }
        }
        File file = this.f41481a;
        if (file != null) {
            try {
                FileUtils.c(file);
            } catch (Throwable th2) {
                Log.c("DownloadMakeupHandle", "delete zip file failed", th2);
            }
        }
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        b();
    }

    @Override // com.perfectcorp.common.guava.DefaultFutureCallback, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final /* synthetic */ void onSuccess(Object obj) {
        if (this.f41482b.l) {
            b();
        }
    }
}
