package com.appsflyer.internal;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class AFd1xSDK {
    final AFd1mSDK AFLogger;
    final ExecutorService d;

    public AFd1xSDK(AFd1mSDK aFd1mSDK, ExecutorService executorService) {
        this.AFLogger = aFd1mSDK;
        this.d = executorService;
    }
}
