package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.ph.template.TemplateUtils;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class q implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41522a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f41523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41524c;

    public /* synthetic */ q(DownloadImageInfo.Builder builder, SettableFuture settableFuture) {
        this.f41524c = builder;
        this.f41523b = settableFuture;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f41522a;
        Object obj2 = this.f41524c;
        SettableFuture settableFuture = this.f41523b;
        switch (i2) {
            case 0:
                DownloadImageInfo.Builder builder = (DownloadImageInfo.Builder) obj2;
                File file = (File) obj;
                ExecutorService executorService = c.b.z;
                builder.f40311b = file.getAbsolutePath();
                builder.f40313e = file.length();
                Log.g(3, "DownloadMakeupHandle", "download succeed");
                settableFuture.set(file);
                break;
            default:
                ExecutorService executorService2 = c.b.z;
                Log.g(3, "DownloadMakeupHandle", "download succeed");
                settableFuture.set((TemplateUtils.c) obj2);
                break;
        }
    }

    public /* synthetic */ q(SettableFuture settableFuture, TemplateUtils.c cVar) {
        this.f41523b = settableFuture;
        this.f41524c = cVar;
    }
}
