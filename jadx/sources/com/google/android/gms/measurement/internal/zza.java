package com.google.android.gms.measurement.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zza implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzd zzc;

    public zza(zzd zzdVar, String str, long j2) {
        this.zza = str;
        this.zzb = j2;
        Objects.requireNonNull(zzdVar);
        this.zzc = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzd zzdVar = this.zzc;
        String str = this.zza;
        long j2 = this.zzb;
        zzdVar.g();
        Preconditions.e(str);
        ArrayMap arrayMap = zzdVar.f31650c;
        if (arrayMap.isEmpty()) {
            zzdVar.d = j2;
        }
        Integer num = (Integer) arrayMap.get(str);
        if (num != null) {
            arrayMap.put(str, Integer.valueOf(num.intValue() + 1));
            return;
        }
        if (arrayMap.d < 100) {
            arrayMap.put(str, 1);
            zzdVar.f31649b.put(str, Long.valueOf(j2));
        } else {
            zzgu zzguVar = zzdVar.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Too many ads visible");
        }
    }
}
