package com.perfectcorp.common.network;

import com.perfectcorp.common.concurrent.CallingThread;
import com.perfectcorp.common.guava.FluentFuture;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.SettableFuture;
import java.io.File;
import java.net.URI;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class DownloadTaskHelper$FileDownloader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public URI f39333a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public File f39334b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public File f39335c;
    public int d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public NetworkTaskManager.TaskPriority f39336e = NetworkTaskManager.TaskPriority.NORMAL;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public DownloadTask.Key f39337f = DownloadKey.f39305a;
    public DownloadStateMonitor g = DownloadStateMonitor.f39310a;

    public final DownloadHandle a(NetworkTaskManager networkTaskManager) {
        DownloadTaskHelper$DownloadFileHandle downloadTaskHelper$DownloadFileHandle = new DownloadTaskHelper$DownloadFileHandle(this);
        SettableFuture settableFuture = downloadTaskHelper$DownloadFileHandle.f39300c;
        DownloadTask.Builder builder = new DownloadTask.Builder(downloadTaskHelper$DownloadFileHandle.f39323e, downloadTaskHelper$DownloadFileHandle.f39324f);
        NetworkTaskManager.TaskPriority taskPriority = downloadTaskHelper$DownloadFileHandle.f39326i;
        Objects.requireNonNull(taskPriority, "priority can't be null");
        builder.d = taskPriority;
        DownloadTask.Key key = downloadTaskHelper$DownloadFileHandle.f39327j;
        Objects.requireNonNull(key, "key can't be null");
        builder.f39321e = key;
        builder.f39322f = downloadTaskHelper$DownloadFileHandle.f39328k;
        int i2 = downloadTaskHelper$DownloadFileHandle.f39325h;
        if (i2 != Integer.MAX_VALUE) {
            builder.f39320c = i2;
        }
        downloadTaskHelper$DownloadFileHandle.l = new DownloadTask(builder, (byte) 0);
        DownloadTask downloadTask = downloadTaskHelper$DownloadFileHandle.l;
        DownloadTaskHelper$DownloadFileHandle.AnonymousClass4 anonymousClass4 = new DownloadTaskHelper$DownloadFileHandle.AnonymousClass4();
        anonymousClass4.f39332a = downloadTaskHelper$DownloadFileHandle;
        downloadTask.addProgressCallback(anonymousClass4);
        FluentFuture fluentFutureA = FluentFuture.a(networkTaskManager.a(downloadTaskHelper$DownloadFileHandle.l));
        DownloadTaskHelper$DownloadFileHandle.AnonymousClass3 anonymousClass3 = new DownloadTaskHelper$DownloadFileHandle.AnonymousClass3();
        anonymousClass3.f39331b = downloadTaskHelper$DownloadFileHandle;
        FluentFuture fluentFutureB = fluentFutureA.b(anonymousClass3);
        DownloadTaskHelper$DownloadFileHandle.AnonymousClass2 anonymousClass2 = new DownloadTaskHelper$DownloadFileHandle.AnonymousClass2();
        anonymousClass2.f39330b = downloadTaskHelper$DownloadFileHandle;
        FluentFuture fluentFutureB2 = fluentFutureB.b(anonymousClass2);
        DownloadTaskHelper$DownloadFileHandle.AnonymousClass1 anonymousClass1 = new DownloadTaskHelper$DownloadFileHandle.AnonymousClass1();
        anonymousClass1.f39329a = downloadTaskHelper$DownloadFileHandle;
        CallingThread callingThread = CallingThread.ANY;
        ListenableFuture listenableFuture = fluentFutureB2.n;
        MoreFutures.a(listenableFuture, anonymousClass1, callingThread);
        settableFuture.setFuture(FluentFuture.a(listenableFuture));
        return downloadTaskHelper$DownloadFileHandle;
    }
}
