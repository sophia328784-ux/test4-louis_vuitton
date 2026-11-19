package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzhi implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzbs zza;
    final /* synthetic */ ServiceConnection zzb;
    final /* synthetic */ zzhj zzc;

    public zzhi(zzhj zzhjVar, com.google.android.gms.internal.measurement.zzbs zzbsVar, ServiceConnection serviceConnection) {
        this.zza = zzbsVar;
        this.zzb = serviceConnection;
        Objects.requireNonNull(zzhjVar);
        this.zzc = zzhjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhj zzhjVar = this.zzc;
        zzic zzicVar = zzhjVar.f31816c.f31817a;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        Bundle bundle = new Bundle();
        bundle.putString("package_name", zzhjVar.f31815b);
        try {
            if (this.zza.r1(bundle) == null) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.a("Install Referrer Service returned a null response");
            }
        } catch (Exception e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2.getMessage(), "Exception occurred while retrieving the Install Referrer");
        }
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.g();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
