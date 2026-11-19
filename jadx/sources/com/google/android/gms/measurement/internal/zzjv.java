package com.google.android.gms.measurement.internal;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzjv implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzlj f31873b;

    public zzjv(zzlj zzljVar) {
        this.f31873b = zzljVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        zzhz zzhzVar = this.f31873b.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(runnable);
    }
}
