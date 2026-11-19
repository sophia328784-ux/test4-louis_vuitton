package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f41526b;

    public /* synthetic */ r(SettableFuture settableFuture, int i2) {
        this.f41525a = i2;
        this.f41526b = settableFuture;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41525a;
        SettableFuture settableFuture = this.f41526b;
        switch (i2) {
            case 0:
                Throwable th = (Throwable) obj;
                ExecutorService executorService = c.b.z;
                Log.e("DownloadMakeupHandle", "download look thumbnail failed", th);
                settableFuture.setException(th);
                break;
            case 1:
                Throwable th2 = (Throwable) obj;
                ExecutorService executorService2 = c.b.z;
                Log.e("DownloadMakeupHandle", "download background task failed", th2);
                settableFuture.setException(th2);
                break;
            case 2:
                ExecutorService executorService3 = c.b.z;
                settableFuture.set(null);
                break;
            case 3:
                Throwable th3 = (Throwable) obj;
                ExecutorService executorService4 = c.b.z;
                Log.e("DownloadMakeupHandle", "download by id system JSON failed", th3);
                settableFuture.setException(th3);
                break;
            case 4:
                Throwable th4 = (Throwable) obj;
                ExecutorService executorService5 = c.b.z;
                Log.e("DownloadMakeupHandle", "download by id system ZIP failed", th4);
                settableFuture.setException(th4);
                break;
            default:
                Throwable th5 = (Throwable) obj;
                ExecutorService executorService6 = c.b.z;
                Log.e("DownloadMakeupHandle", "download sku task failed", th5);
                settableFuture.setException(th5);
                break;
        }
    }
}
