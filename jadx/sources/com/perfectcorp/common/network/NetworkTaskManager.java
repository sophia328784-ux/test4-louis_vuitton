package com.perfectcorp.common.network;

import com.perfectcorp.common.concurrent.ThreadFactoryBuilder;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task.InitResponse;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class NetworkTaskManager {
    public static final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f39338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final TimeUnit f39339f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f39340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f39341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InitRequestHandler f39342c;

    /* JADX INFO: renamed from: com.perfectcorp.common.network.NetworkTaskManager$1, reason: invalid class name */
    class AnonymousClass1 implements InitRequestHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public /* synthetic */ NetworkTaskManager f39343a;

        @Override // com.perfectcorp.common.network.NetworkTaskManager.InitRequestHandler
        public final ListenableFuture a(RequestTask requestTask) {
            DebugLog.a("[initFuture] start");
            this.f39343a.f39340a.execute(requestTask);
            DebugLog.a("[initFuture] task executed");
            ListenableFuture<RequestTask.Response<Result>> future = requestTask.getFuture();
            DebugLog.a("[initFuture] end");
            return future;
        }
    }

    public static final class DebugLog {
        public static void a(String str) {
            if (com.perfectcorp.perfectlib.internal.a.f40371a.requestScheduling) {
                Log.g(3, "NetworkTaskManager", str);
            }
        }
    }

    public interface InitRequestHandler {
        ListenableFuture a(RequestTask requestTask);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TaskPriority {
        public static final TaskPriority HIGH;
        public static final TaskPriority LOW;
        public static final TaskPriority NORMAL;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ TaskPriority[] f39344a;

        static {
            TaskPriority taskPriority = new TaskPriority("LOW", 0);
            LOW = taskPriority;
            TaskPriority taskPriority2 = new TaskPriority("NORMAL", 1);
            NORMAL = taskPriority2;
            TaskPriority taskPriority3 = new TaskPriority("HIGH", 2);
            HIGH = taskPriority3;
            f39344a = new TaskPriority[]{taskPriority, taskPriority2, taskPriority3};
        }

        public static TaskPriority valueOf(String str) {
            return (TaskPriority) Enum.valueOf(TaskPriority.class, str);
        }

        public static TaskPriority[] values() {
            return (TaskPriority[]) f39344a.clone();
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() << 1;
        d = iAvailableProcessors;
        f39338e = iAvailableProcessors;
        f39339f = TimeUnit.SECONDS;
    }

    public NetworkTaskManager(int i2, int i3, long j2, TimeUnit timeUnit, h<InitResponse> hVar, int i4) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        anonymousClass1.f39343a = this;
        this.f39342c = anonymousClass1;
        ThreadFactoryBuilder threadFactoryBuilder = new ThreadFactoryBuilder();
        threadFactoryBuilder.f39170a = "NetworkTaskManager";
        threadFactoryBuilder.f39171b = true;
        threadFactoryBuilder.d = i4;
        threadFactoryBuilder.f39172c = true;
        this.f39340a = new k(i2, i3, j2, timeUnit, new l(), threadFactoryBuilder.a());
        Objects.requireNonNull(hVar);
        this.f39341b = hVar;
    }

    public final ListenableFuture a(DownloadTask downloadTask) {
        this.f39340a.execute(downloadTask);
        return downloadTask.getFuture();
    }

    public NetworkTaskManager(h<InitResponse> hVar) {
        this(d, f39338e, 30L, f39339f, hVar, 0);
    }
}
