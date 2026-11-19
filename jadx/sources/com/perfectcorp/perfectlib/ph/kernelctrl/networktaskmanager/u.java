package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.DownloadFolderHelper;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import defpackage.v7;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class u implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f41533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f41534c;

    public /* synthetic */ u(Object obj, int i2) {
        this.f41533b = i2;
        this.f41534c = obj;
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) throws Throwable {
        File file;
        int i2 = this.f41533b;
        Object obj2 = this.f41534c;
        switch (i2) {
            case 0:
                c.b bVar = (c.b) obj2;
                c.b.a aVar = (c.b.a) obj;
                ExecutorService executorService = c.b.z;
                Objects.requireNonNull(aVar);
                synchronized (bVar.u) {
                    if (bVar.f39300c.isCancelled()) {
                        throw new SkipCallbackException("Future had been cancelled.");
                    }
                    bVar.v = true;
                }
                bVar.x = aVar;
                if (bVar.f41451j) {
                    bVar.i();
                }
                return aVar.f41455c;
            case 1:
                c.b bVar2 = (c.b) obj2;
                Throwable th = (Throwable) obj;
                ExecutorService executorService2 = c.b.z;
                File fileE = DownloadFolderHelper.e(bVar2.f41447e.d, bVar2.f41450i);
                if (fileE != null) {
                    try {
                        FileUtils.c(fileE);
                    } catch (Throwable unused) {
                        Log.c("DownloadMakeupHandle", "delete zip file failed. zipFile=" + fileE, th);
                    }
                }
                if (!bVar2.f41452k || (file = bVar2.f39299b) == null) {
                    throw th;
                }
                try {
                    FileUtils.c(file);
                    throw th;
                } catch (Throwable unused2) {
                    Log.c("DownloadMakeupHandle", "delete folder failed. folder=" + file, th);
                    throw th;
                }
                break;
            case 2:
                com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.a aVar2 = (com.perfectcorp.perfectlib.ph.database.ymk.makeup.b.a) obj;
                ExecutorService executorService3 = c.b.z;
                Objects.requireNonNull(aVar2);
                return new com.perfectcorp.perfectlib.ph.template.n(aVar2.f41235b, ((c.b) obj2).f41447e.d);
            case 3:
                c.b bVar3 = (c.b) obj2;
                File file2 = (File) obj;
                boolean z = bVar3.f41452k;
                Objects.requireNonNull(file2);
                File file3 = bVar3.f39299b;
                if (!z) {
                    if (!z) {
                        return file2;
                    }
                    FileUtils.c(file2);
                    return file2;
                }
                try {
                    if (file3.exists()) {
                        FileUtils.a(file2, file3);
                    } else if (!file2.renameTo(file3)) {
                        throw new IOException("Can't rename src=\"" + file2 + "\" to dst=\"" + file3 + "\"");
                    }
                    if (z) {
                        FileUtils.c(file2);
                    }
                    return file3;
                } catch (Throwable th2) {
                    try {
                        FileUtils.c(file3);
                        throw th2;
                    } catch (Throwable th3) {
                        if (z) {
                            FileUtils.c(file2);
                        }
                        throw th3;
                    }
                }
            default:
                DownloadReport.CompleteReport completeReport = (DownloadReport.CompleteReport) obj;
                ExecutorService executorService4 = c.b.z;
                Objects.requireNonNull(completeReport);
                File file4 = (File) completeReport.f39309b;
                File file5 = new File((String) obj2);
                if (file5.exists()) {
                    FileUtils.c(file5);
                }
                boolean zRenameTo = file4.renameTo(file5);
                FileUtils.c(file4);
                if (zRenameTo) {
                    return file5;
                }
                v7.h("Failed to rename look thumbnail file");
                return null;
        }
    }
}
