package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public class PendingResultUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zav f29199a = new zar();

    public interface ResultConverter<R extends Result, T> {
    }

    public static Task a(PendingResult pendingResult) {
        zau zauVar = new zau();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.a(new zas(pendingResult, taskCompletionSource, zauVar));
        return taskCompletionSource.f32085a;
    }
}
