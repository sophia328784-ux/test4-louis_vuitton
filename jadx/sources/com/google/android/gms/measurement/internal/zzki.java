package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzki implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzlj zzb;

    public zzki(zzlj zzljVar, Bundle bundle) {
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
        String string2 = bundle.getString("origin");
        Preconditions.e(string);
        Preconditions.e(string2);
        Preconditions.h(bundle.get("value"));
        zzic zzicVar = zzljVar.f31850a;
        if (!zzicVar.f()) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Conditional property not set since app measurement is disabled");
            return;
        }
        zzpl zzplVar = new zzpl(bundle.getLong("triggered_timestamp"), bundle.get("value"), string, string2);
        try {
            zzpp zzppVar = zzicVar.f31844i;
            zzic.k(zzppVar);
            bundle.getString("app_id");
            zzbh zzbhVarN = zzppVar.N(bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, 0L, true);
            zzic.k(zzppVar);
            bundle.getString("app_id");
            zzbh zzbhVarN2 = zzppVar.N(bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, 0L, true);
            bundle.getString("app_id");
            zzicVar.p().z(new zzah(bundle.getString("app_id"), string2, zzplVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), zzbhVarN2, bundle.getLong("trigger_timeout"), zzbhVarN, bundle.getLong("time_to_live"), zzppVar.N(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, 0L, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
