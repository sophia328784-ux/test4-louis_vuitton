package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import defpackage.s3;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class CrashlyticsWorker implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f34588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f34589c = new Object();
    public Task d = Tasks.f(null);

    public CrashlyticsWorker(ExecutorService executorService) {
        this.f34588b = executorService;
    }

    public final Task a(Runnable runnable) {
        Task taskH;
        synchronized (this.f34589c) {
            taskH = this.d.h(this.f34588b, new s3(runnable, 24));
            this.d = taskH;
        }
        return taskH;
    }

    public final Task b(Callable callable) {
        Task taskH;
        synchronized (this.f34589c) {
            taskH = this.d.h(this.f34588b, new s3(callable, 23));
            this.d = taskH;
        }
        return taskH;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f34588b.execute(runnable);
    }
}
