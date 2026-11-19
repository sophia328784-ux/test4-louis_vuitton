package com.google.android.gms.internal.measurement;

import com.google.android.gms.tasks.Task;
import com.google.common.util.concurrent.AbstractFuture;

/* JADX INFO: loaded from: classes2.dex */
final class zzkz extends AbstractFuture {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Task f30701b;

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        this.f30701b = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        Task task = this.f30701b;
        return task == null ? "" : task.toString();
    }
}
