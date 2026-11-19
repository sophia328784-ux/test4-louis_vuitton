package com.google.firebase.crashlytics.internal.concurrency;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;", "", "Ljava/util/concurrent/ExecutorService;", "backgroundExecutorService", "blockingExecutorService", "<init>", "(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V", "Companion", "com.google.firebase-firebase-crashlytics"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CrashlyticsWorkers {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsWorker f34590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashlyticsWorker f34591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CrashlyticsWorker f34592c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;", "", "com.google.firebase-firebase-crashlytics"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a() {
            return Thread.currentThread().getName();
        }
    }

    public CrashlyticsWorkers(ExecutorService executorService, ExecutorService executorService2) {
        executorService.getClass();
        executorService2.getClass();
        this.f34590a = new CrashlyticsWorker(executorService);
        this.f34591b = new CrashlyticsWorker(executorService);
        new CrashlyticsWorker(executorService);
        this.f34592c = new CrashlyticsWorker(executorService2);
    }

    public static final void a() {
        Companion companion = d;
        companion.getClass();
        if (((Boolean) new CrashlyticsWorkers$Companion$checkBackgroundThread$1(0, companion, Companion.class, "isBackgroundThread", "isBackgroundThread()Z", 0).mo47invoke()).booleanValue()) {
            return;
        }
        Logger logger = Logger.f34483b;
        Companion.a();
        logger.a(3);
    }

    public static final void b() {
        Companion companion = d;
        companion.getClass();
        if (((Boolean) new CrashlyticsWorkers$Companion$checkBlockingThread$1(0, companion, Companion.class, "isBlockingThread", "isBlockingThread()Z", 0).mo47invoke()).booleanValue()) {
            return;
        }
        Logger logger = Logger.f34483b;
        Companion.a();
        logger.a(3);
    }

    public static final void c() {
        Companion companion = d;
        companion.getClass();
        if (((Boolean) new CrashlyticsWorkers$Companion$checkNotMainThread$1(0, companion, Companion.class, "isNotMainThread", "isNotMainThread()Z", 0).mo47invoke()).booleanValue()) {
            return;
        }
        Logger logger = Logger.f34483b;
        Companion.a();
        logger.a(3);
    }
}
