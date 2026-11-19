package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.location.zzv;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzdc extends zzp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f30227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzv f30228b;

    public zzdc(TaskCompletionSource taskCompletionSource, zzv zzvVar) {
        this.f30227a = taskCompletionSource;
        this.f30228b = zzvVar;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void M(zzk zzkVar) {
        TaskUtil.a(zzkVar.f30272b, null, this.f30227a);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void h0() {
        ((zzdu) this.f30228b).I();
    }
}
