package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkj implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzlj zzb;

    public zzkj(zzlj zzljVar, Bundle bundle) {
        this.zza = bundle;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzljVar.g();
        zzljVar.h();
        Bundle bundle = this.zza;
        Preconditions.h(bundle);
        String string = bundle.getString("name");
        Preconditions.e(string);
        zzic zzicVar = zzljVar.f31850a;
        if (!zzicVar.f()) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        zzpl zzplVar = new zzpl(0L, null, string, "");
        try {
            zzpp zzppVar = zzicVar.f31844i;
            zzic.k(zzppVar);
            bundle.getString("app_id");
            zzicVar.p().z(new zzah(bundle.getString("app_id"), "", zzplVar, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), zzppVar.N(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), 0L, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
