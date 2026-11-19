package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public class TaskUtil {
    public static void a(Status status, Object obj, TaskCompletionSource taskCompletionSource) {
        if (status.W1()) {
            taskCompletionSource.b(obj);
        } else {
            taskCompletionSource.a(ApiExceptionUtil.a(status));
        }
    }
}
