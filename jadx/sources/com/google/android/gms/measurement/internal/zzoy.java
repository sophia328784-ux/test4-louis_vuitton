package com.google.android.gms.measurement.internal;

import android.content.Intent;
import android.os.SystemClock;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
final class zzoy extends zzaz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzpg f31966e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzoy(zzpg zzpgVar, zzjg zzjgVar) {
        super(zzjgVar);
        this.f31966e = zzpgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzaz
    public final void a() {
        zzpg zzpgVar = this.f31966e;
        zzpgVar.c().g();
        String str = (String) zzpgVar.q.pollFirst();
        if (str != null) {
            ((DefaultClock) zzpgVar.e()).getClass();
            zzpgVar.I = SystemClock.elapsedRealtime();
            zzpgVar.b().n.b(str, "Sending trigger URI notification to app");
            Intent intent = new Intent();
            intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intent.setPackage(str);
            zzpg.S(zzpgVar.l.f31838a, intent);
        }
        zzpgVar.H();
    }
}
