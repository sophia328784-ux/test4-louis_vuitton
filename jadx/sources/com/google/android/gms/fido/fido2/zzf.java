package com.google.android.gms.fido.fido2;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.fido.zzq;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzf extends zzq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f29518a;

    public zzf(TaskCompletionSource taskCompletionSource) {
        this.f29518a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.fido.zzr
    public final void v0(Status status, PendingIntent pendingIntent) {
        TaskUtil.a(status, pendingIntent, this.f29518a);
    }
}
