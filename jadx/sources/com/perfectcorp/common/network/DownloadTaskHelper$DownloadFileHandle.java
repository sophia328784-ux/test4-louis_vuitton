package com.perfectcorp.common.network;

import com.perfectcorp.common.downloader.UnzipHelper;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback;
import defpackage.n00;
import defpackage.r81;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class DownloadTaskHelper$DownloadFileHandle extends BaseDownloadHandle {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final URI f39323e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final File f39324f;
    public final File g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f39325h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NetworkTaskManager.TaskPriority f39326i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DownloadTask.Key f39327j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DownloadStateMonitor f39328k;
    public volatile DownloadTask l;
    public File m;

    /* JADX INFO: renamed from: com.perfectcorp.common.network.DownloadTaskHelper$DownloadFileHandle$1, reason: invalid class name */
    class AnonymousClass1 implements FutureCallback<File> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ DownloadTaskHelper$DownloadFileHandle f39329a;

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
            DownloadTaskHelper$DownloadFileHandle downloadTaskHelper$DownloadFileHandle = this.f39329a;
            FileUtils.c(downloadTaskHelper$DownloadFileHandle.f39324f);
            File file = downloadTaskHelper$DownloadFileHandle.m;
            if (file != null) {
                FileUtils.c(file);
            }
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            File file = this.f39329a.m;
            if (file != null) {
                FileUtils.c(file);
            }
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.common.network.DownloadTaskHelper$DownloadFileHandle$2, reason: invalid class name */
    class AnonymousClass2 implements Function<File, File> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ DownloadTaskHelper$DownloadFileHandle f39330b;

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
        public final Object apply(Object obj) {
            File file = (File) obj;
            DownloadTaskHelper$DownloadFileHandle downloadTaskHelper$DownloadFileHandle = this.f39330b;
            File file2 = downloadTaskHelper$DownloadFileHandle.g;
            File file3 = downloadTaskHelper$DownloadFileHandle.g;
            if (file2 == null || file == null) {
                return file;
            }
            if (!file2.exists()) {
                file3.mkdirs();
            }
            for (File file4 : file.listFiles()) {
                File file5 = new File(file3.getPath() + "/" + file4.getName());
                if (file5.exists()) {
                    FileUtils.c(file5);
                }
                if (!file4.renameTo(file5)) {
                    try {
                        FileUtils.a(file4, file5);
                        FileUtils.c(file4);
                    } catch (IOException e2) {
                        r81.g(n00.o(e2, new StringBuilder("File move failed: ")), e2);
                        return null;
                    }
                }
            }
            return file3;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.common.network.DownloadTaskHelper$DownloadFileHandle$3, reason: invalid class name */
    class AnonymousClass3 implements Function<File, File> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ DownloadTaskHelper$DownloadFileHandle f39331b;

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
        public final Object apply(Object obj) {
            File file = (File) obj;
            DownloadTaskHelper$DownloadFileHandle downloadTaskHelper$DownloadFileHandle = this.f39331b;
            if (downloadTaskHelper$DownloadFileHandle.g == null || file == null) {
                return file;
            }
            File file2 = new File(file.getParent() + "/tmp/" + System.nanoTime() + "_" + downloadTaskHelper$DownloadFileHandle.f39327j);
            downloadTaskHelper$DownloadFileHandle.m = file2;
            UnzipHelper.c(file, file2);
            FileUtils.c(file);
            return downloadTaskHelper$DownloadFileHandle.m;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.common.network.DownloadTaskHelper$DownloadFileHandle$4, reason: invalid class name */
    class AnonymousClass4 implements ProgressCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ DownloadTaskHelper$DownloadFileHandle f39332a;

        @Override // com.perfectcorp.common.network.ProgressCallback
        public final void a(double d) {
            this.f39332a.a(d);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DownloadTaskHelper$DownloadFileHandle(DownloadTaskHelper$FileDownloader downloadTaskHelper$FileDownloader) {
        DownloadTask.Key key = downloadTaskHelper$FileDownloader.f39337f;
        File file = downloadTaskHelper$FileDownloader.f39335c;
        super(key, file == null ? downloadTaskHelper$FileDownloader.f39334b : file);
        URI uri = downloadTaskHelper$FileDownloader.f39333a;
        Objects.requireNonNull(uri);
        this.f39323e = uri;
        this.f39324f = downloadTaskHelper$FileDownloader.f39334b;
        this.g = downloadTaskHelper$FileDownloader.f39335c;
        this.f39325h = downloadTaskHelper$FileDownloader.d;
        this.f39326i = downloadTaskHelper$FileDownloader.f39336e;
        this.f39327j = downloadTaskHelper$FileDownloader.f39337f;
        this.f39328k = downloadTaskHelper$FileDownloader.g;
    }

    @Override // com.perfectcorp.common.network.DownloadHandle
    public final double c() {
        if (this.l != null) {
            return this.l.getProgress();
        }
        return 0.0d;
    }
}
