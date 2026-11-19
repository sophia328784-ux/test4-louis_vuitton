package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdm extends zzp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f30233a;

    public zzdm(TaskCompletionSource taskCompletionSource) {
        this.f30233a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void M(zzk zzkVar) {
        TaskUtil.a(zzkVar.f30272b, Boolean.TRUE, this.f30233a);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void h0() {
    }
}
