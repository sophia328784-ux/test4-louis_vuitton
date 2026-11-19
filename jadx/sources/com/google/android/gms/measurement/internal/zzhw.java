package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzhw implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzhz f31829b;

    public zzhw(zzhz zzhzVar, String str) {
        Objects.requireNonNull(zzhzVar);
        this.f31829b = zzhzVar;
        Preconditions.h(str);
        this.f31828a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final synchronized void uncaughtException(Thread thread, Throwable th) {
        zzgu zzguVar = this.f31829b.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31769f.b(th, this.f31828a);
    }
}
