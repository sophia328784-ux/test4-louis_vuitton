package com.perfectcorp.perfectlib.ymk.utility;

import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FileDownloader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f42037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f42038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ThreadPoolExecutor f42039c;
    public static final d d;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(NamedThreadFactory.b("FileDownloader"));
        f42037a = executorServiceNewSingleThreadExecutor;
        f42038b = Schedulers.a(executorServiceNewSingleThreadExecutor);
        int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() << 1) - 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), NamedThreadFactory.c("SkuAndLookDownloadExecutor#"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f42039c = threadPoolExecutor;
        d = Schedulers.a(threadPoolExecutor);
    }
}
