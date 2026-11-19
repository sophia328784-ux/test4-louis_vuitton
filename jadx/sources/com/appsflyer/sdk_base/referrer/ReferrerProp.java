package com.appsflyer.sdk_base.referrer;

import com.appsflyer.sdk_base.logger.AFLoggerBase;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/appsflyer/sdk_base/referrer/ReferrerProp;", "", "listener", "Ljava/lang/Runnable;", "logger", "Lcom/appsflyer/sdk_base/logger/AFLoggerBase;", "backgroundExecutor", "Ljava/util/concurrent/ExecutorService;", "<init>", "(Ljava/lang/Runnable;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Ljava/util/concurrent/ExecutorService;)V", "getListener", "()Ljava/lang/Runnable;", "getLogger", "()Lcom/appsflyer/sdk_base/logger/AFLoggerBase;", "getBackgroundExecutor", "()Ljava/util/concurrent/ExecutorService;", "sdk_base_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ReferrerProp {
    private final ExecutorService backgroundExecutor;
    private final Runnable listener;
    private final AFLoggerBase logger;

    public ReferrerProp(Runnable runnable, AFLoggerBase aFLoggerBase, ExecutorService executorService) {
        runnable.getClass();
        aFLoggerBase.getClass();
        executorService.getClass();
        this.listener = runnable;
        this.logger = aFLoggerBase;
        this.backgroundExecutor = executorService;
    }

    public final ExecutorService getBackgroundExecutor() {
        return this.backgroundExecutor;
    }

    public final Runnable getListener() {
        return this.listener;
    }

    public final AFLoggerBase getLogger() {
        return this.logger;
    }
}
