package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zas implements PendingResult.StatusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PendingResult f29234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f29235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PendingResultUtil.ResultConverter f29236c;
    public final /* synthetic */ zav d = PendingResultUtil.f29199a;

    public zas(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, PendingResultUtil.ResultConverter resultConverter) {
        this.f29234a = pendingResult;
        this.f29235b = taskCompletionSource;
        this.f29236c = resultConverter;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void a(Status status) {
        boolean zW1 = status.W1();
        TaskCompletionSource taskCompletionSource = this.f29235b;
        if (!zW1) {
            taskCompletionSource.a(ApiExceptionUtil.a(status));
        } else {
            this.f29234a.b();
            taskCompletionSource.b(null);
        }
    }
}
