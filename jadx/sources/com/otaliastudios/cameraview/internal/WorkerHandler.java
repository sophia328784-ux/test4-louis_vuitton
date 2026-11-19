package com.otaliastudios.cameraview.internal;

import android.os.Handler;
import android.os.HandlerThread;
import com.otaliastudios.cameraview.CameraLogger;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class WorkerHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final CameraLogger f39019e = CameraLogger.a("WorkerHandler");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ConcurrentHashMap f39020f = new ConcurrentHashMap(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f39021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HandlerThread f39022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f39023c;
    public Executor d;

    public static WorkerHandler a(String str) {
        ConcurrentHashMap concurrentHashMap = f39020f;
        boolean zContainsKey = concurrentHashMap.containsKey(str);
        CameraLogger cameraLogger = f39019e;
        if (zContainsKey) {
            WorkerHandler workerHandler = (WorkerHandler) ((WeakReference) concurrentHashMap.get(str)).get();
            if (workerHandler != null) {
                HandlerThread handlerThread = workerHandler.f39022b;
                if (handlerThread.isAlive() && !handlerThread.isInterrupted()) {
                    cameraLogger.b(2, "get:", "Reusing cached worker handler.", str);
                    return workerHandler;
                }
                if (handlerThread.isAlive()) {
                    handlerThread.interrupt();
                    handlerThread.quit();
                }
                concurrentHashMap.remove(workerHandler.f39021a);
                cameraLogger.b(2, "get:", "Thread reference found, but not alive or interrupted.", "Removing.", str);
                concurrentHashMap.remove(str);
            } else {
                cameraLogger.b(2, "get:", "Thread reference died. Removing.", str);
                concurrentHashMap.remove(str);
            }
        }
        cameraLogger.b(1, "get:", "Creating new handler.", str);
        WorkerHandler workerHandler2 = new WorkerHandler();
        workerHandler2.f39021a = str;
        HandlerThread handlerThread2 = new HandlerThread(str) { // from class: com.otaliastudios.cameraview.internal.WorkerHandler.1
            @Override // java.lang.Thread
            public String toString() {
                return super.toString() + "[" + getThreadId() + "]";
            }
        };
        workerHandler2.f39022b = handlerThread2;
        handlerThread2.setDaemon(true);
        handlerThread2.start();
        Handler handler = new Handler(handlerThread2.getLooper());
        workerHandler2.f39023c = handler;
        workerHandler2.d = new Executor() { // from class: com.otaliastudios.cameraview.internal.WorkerHandler.2
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                Thread threadCurrentThread = Thread.currentThread();
                WorkerHandler workerHandler3 = WorkerHandler.this;
                if (threadCurrentThread == workerHandler3.f39022b) {
                    runnable.run();
                } else {
                    workerHandler3.f39023c.post(runnable);
                }
            }
        };
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        handler.post(new Runnable() { // from class: com.otaliastudios.cameraview.internal.WorkerHandler.3
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
        }
        concurrentHashMap.put(str, new WeakReference(workerHandler2));
        return workerHandler2;
    }
}
