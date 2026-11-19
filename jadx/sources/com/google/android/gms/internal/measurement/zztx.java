package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.Futures;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zztx extends zzuw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzuw f30950a = new zztx();

    @Override // com.google.android.gms.internal.measurement.zzuw
    public final void a(zzti zztiVar) {
        zztiVar.getClass();
    }

    @Override // com.google.android.gms.internal.measurement.zzuw
    public final zzui b(zztr zztrVar, String str, Executor executor, zzru zzruVar, zzti zztiVar) {
        zzadf zzadfVarA;
        zztiVar.getClass();
        zzte zzteVar = (zzte) zztrVar;
        if (zzteVar.f30928f) {
            zzadfVarA = zzadf.a();
        } else {
            zzadf zzadfVar = zzadf.f30397b;
            int i2 = zzacf.f30358a;
            zzadfVarA = zzadf.f30398c;
        }
        return new zzui(str, Futures.g(zzteVar.f30924a), new zzvd(zzteVar.f30925b, zzadfVarA), executor, zzruVar, zzteVar.f30926c, new zzwa());
    }
}
