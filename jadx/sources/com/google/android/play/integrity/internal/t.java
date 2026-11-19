package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TaskCompletionSource f33334a;

    public t() {
        this.f33334a = null;
    }

    public void a(Exception exc) {
        TaskCompletionSource taskCompletionSource = this.f33334a;
        if (taskCompletionSource != null) {
            taskCompletionSource.c(exc);
        }
    }

    public abstract void b();

    public final TaskCompletionSource c() {
        return this.f33334a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            b();
        } catch (Exception e2) {
            a(e2);
        }
    }

    public t(TaskCompletionSource taskCompletionSource) {
        this.f33334a = taskCompletionSource;
    }
}
