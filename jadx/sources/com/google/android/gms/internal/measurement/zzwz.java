package com.google.android.gms.internal.measurement;

import defpackage.r81;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes2.dex */
public final class zzwz implements Runnable {
    final /* synthetic */ Ref$ObjectRef zza;
    final /* synthetic */ zzws zzb;
    final /* synthetic */ Runnable zzc;

    public zzwz(Ref$ObjectRef ref$ObjectRef, zzws zzwsVar, Runnable runnable) {
        this.zza = ref$ObjectRef;
        this.zzb = zzwsVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zza.f71921b != null) {
            r81.h();
            return;
        }
        zzws zzwsVar = this.zzb;
        zzwsVar.getClass();
        Runnable runnable = this.zzc;
        zzwq zzwqVarC = zzvy.c();
        zzws zzwsVarB = zzvy.b(zzwqVarC, zzwsVar);
        try {
            runnable.run();
            zzvy.b(zzwqVarC, zzwsVarB);
        } catch (Throwable th) {
            try {
                zzvu.a(th);
                throw th;
            } catch (Throwable th2) {
                zzvy.b(zzwqVarC, zzwsVarB);
                throw th2;
            }
        }
    }

    public final String toString() {
        Runnable runnable = this.zzc;
        StringBuilder sb = new StringBuilder(runnable.toString().length() + 14);
        sb.append("propagating=[");
        sb.append(runnable);
        sb.append("]");
        return sb.toString();
    }
}
