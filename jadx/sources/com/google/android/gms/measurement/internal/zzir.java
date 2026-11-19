package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzir implements Runnable {
    final /* synthetic */ zzbh zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zzjd zzc;

    public zzir(zzjd zzjdVar, zzbh zzbhVar, zzr zzrVar) {
        this.zza = zzbhVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbf zzbfVar;
        zzbh zzbhVar = this.zza;
        zzr zzrVar = this.zzb;
        zzjd zzjdVar = this.zzc;
        zzjdVar.getClass();
        zzpg zzpgVar = zzjdVar.f31847a;
        if ("_cmp".equals(zzbhVar.f31603b) && (zzbfVar = zzbhVar.f31604c) != null) {
            Bundle bundle = zzbfVar.f31602b;
            if (bundle.size() != 0) {
                String string = bundle.getString("_cis");
                if ("referrer broadcast".equals(string) || "referrer API".equals(string)) {
                    zzpgVar.b().l.b(zzbhVar.toString(), "Event has been filtered ");
                    zzbhVar = new zzbh("_cmpx", zzbfVar, zzbhVar.d, zzbhVar.f31605e, zzbhVar.f31606f);
                }
            }
        }
        String str = zzbhVar.f31603b;
        zzht zzhtVar = zzpgVar.f31980a;
        zzpk zzpkVar = zzpgVar.g;
        zzpg.U(zzhtVar);
        String str2 = zzrVar.f32016b;
        com.google.android.gms.internal.measurement.zzc zzcVar = TextUtils.isEmpty(str2) ? null : (com.google.android.gms.internal.measurement.zzc) zzhtVar.f31827k.b(str2);
        if (zzcVar == null) {
            zzpgVar.b().n.b(zzrVar.f32016b, "EES not loaded for");
            zzpgVar.W();
            zzpgVar.j(zzbhVar, zzrVar);
            return;
        }
        try {
            com.google.android.gms.internal.measurement.zzab zzabVar = zzcVar.f30597c;
            zzpg.U(zzpkVar);
            HashMap mapU = zzpk.U(zzbhVar.f31604c.Z1(), true);
            String strB = zzlt.b(str, zzjm.f31859f, zzjm.f31855a);
            if (strB == null) {
                strB = str;
            }
            if (zzcVar.a(new com.google.android.gms.internal.measurement.zzaa(strB, zzbhVar.f31605e, mapU))) {
                if (zzabVar.f30328b.equals(zzabVar.f30327a)) {
                    zzpgVar.W();
                    zzpgVar.j(zzbhVar, zzrVar);
                } else {
                    zzpgVar.b().n.b(str, "EES edited event");
                    zzpg.U(zzpkVar);
                    zzbh zzbhVarK = zzpk.k(zzabVar.f30328b);
                    zzpgVar.W();
                    zzpgVar.j(zzbhVarK, zzrVar);
                }
                if (zzabVar.f30329c.isEmpty()) {
                    return;
                }
                for (com.google.android.gms.internal.measurement.zzaa zzaaVar : zzabVar.f30329c) {
                    zzpgVar.b().n.b(zzaaVar.f30294a, "EES logging created event");
                    zzpg.U(zzpkVar);
                    zzbh zzbhVarK2 = zzpk.k(zzaaVar);
                    zzpgVar.W();
                    zzpgVar.j(zzbhVarK2, zzrVar);
                }
                return;
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            zzpgVar.b().f31769f.c("EES error. appId, eventName", zzrVar.f32017c, str);
        }
        zzpgVar.b().n.b(str, "EES was not applied to event");
        zzpgVar.W();
        zzpgVar.j(zzbhVar, zzrVar);
    }
}
