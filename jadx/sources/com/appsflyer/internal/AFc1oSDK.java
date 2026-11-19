package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.sdk_base.logger.AFLoggerBase;
import com.appsflyer.sdk_base.logger.LogTag;
import java.util.Queue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.ActionExecutionService;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0013H\u0014¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\n0\f8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017"}, d2 = {"Lcom/appsflyer/internal/AFc1oSDK;", "Ljava/util/concurrent/ThreadPoolExecutor;", "", "p0", "p1", "", "p2", "Ljava/util/concurrent/TimeUnit;", "p3", "Ljava/util/concurrent/BlockingQueue;", "Ljava/lang/Runnable;", "p4", "Ljava/util/Queue;", "p5", "<init>", "(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/Queue;)V", "", "AFKeystoreWrapper", "()V", "", ActionExecutionService.AfterExecActionListener.METHOD_NAME, "(Ljava/lang/Runnable;Ljava/lang/Throwable;)V", "unregisterClient", "Ljava/util/Queue;"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFc1oSDK extends ThreadPoolExecutor implements AutoCloseable {

    /* JADX INFO: renamed from: unregisterClient, reason: from kotlin metadata */
    private final Queue<Runnable> AFKeystoreWrapper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private AFc1oSDK(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, final Queue<Runnable> queue) {
        super(i2, i3, j2, timeUnit, blockingQueue, new RejectedExecutionHandler() { // from class: com.appsflyer.internal.j
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                AFc1oSDK.AFLogger(queue, runnable, threadPoolExecutor);
            }
        });
        timeUnit.getClass();
        blockingQueue.getClass();
        queue.getClass();
        this.AFKeystoreWrapper = queue;
    }

    private final void AFKeystoreWrapper() {
        synchronized (this) {
            int size = this.AFKeystoreWrapper.size();
            for (int i2 = 0; i2 < size; i2++) {
                Runnable runnablePoll = this.AFKeystoreWrapper.poll();
                if (runnablePoll == null) {
                    break;
                }
                execute(runnablePoll);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void AFLogger(Queue queue, Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        runnable.getClass();
        threadPoolExecutor.getClass();
        queue.add(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void afterExecute(Runnable p0, Throwable p1) {
        p0.getClass();
        super.afterExecute(p0, p1);
        p0.getClass();
        if (p1 == null) {
            try {
                AFKeystoreWrapper();
                return;
            } catch (Throwable th) {
                AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.AF_EXECUTOR, "Error while executing rejected tasks", th, true, true, true, false, 64, null);
                return;
            }
        }
        AFLoggerBase.e$default(AFLogger.INSTANCE, LogTag.AF_EXECUTOR, "Error while executing task: " + p0, p1, true, true, true, false, 64, null);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        boolean zIsTerminated;
        if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
            return;
        }
        shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public /* synthetic */ AFc1oSDK(int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue, Queue queue, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i3, j2, timeUnit, blockingQueue, (i4 & 32) != 0 ? new ConcurrentLinkedQueue() : queue);
    }
}
