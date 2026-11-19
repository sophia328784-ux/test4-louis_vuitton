package com.google.firebase.crashlytics.internal.concurrency;

import com.google.android.gms.tasks.CancellationTokenSource;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.l8;
import defpackage.y81;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CrashlyticsTasks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l8 f34587a = new l8(1);

    public static Task a(Task task, Task task2) {
        CancellationTokenSource cancellationTokenSource = new CancellationTokenSource();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource(cancellationTokenSource.f32084a);
        y81 y81Var = new y81(taskCompletionSource, new AtomicBoolean(false), cancellationTokenSource, 4);
        l8 l8Var = f34587a;
        task.h(l8Var, y81Var);
        task2.h(l8Var, y81Var);
        return taskCompletionSource.f32085a;
    }
}
