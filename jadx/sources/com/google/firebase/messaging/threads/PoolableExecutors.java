package com.google.firebase.messaging.threads;

import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PoolableExecutors {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorFactory f35358a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile ExecutorFactory f35359b = new DefaultExecutorFactory();

    public static class DefaultExecutorFactory implements ExecutorFactory {
        @Override // com.google.firebase.messaging.threads.ExecutorFactory
        public final ExecutorService a(NamedThreadFactory namedThreadFactory) {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), namedThreadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            return Executors.unconfigurableExecutorService(threadPoolExecutor);
        }
    }
}
