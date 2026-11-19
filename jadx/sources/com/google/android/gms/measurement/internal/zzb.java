package com.google.android.gms.measurement.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzb implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzd zzc;

    public zzb(zzd zzdVar, String str, long j2) {
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
        Integer num = (Integer) arrayMap.get(str);
        zzic zzicVar = zzdVar.f31850a;
        if (num == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(str, "Call to endAdUnitExposure for unknown ad unit id");
            return;
        }
        zzmb zzmbVar = zzicVar.l;
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.l(zzmbVar);
        zzlu zzluVarK = zzmbVar.k(false);
        int iIntValue = num.intValue() - 1;
        if (iIntValue != 0) {
            arrayMap.put(str, Integer.valueOf(iIntValue));
            return;
        }
        arrayMap.remove(str);
        ArrayMap arrayMap2 = zzdVar.f31649b;
        Long l = (Long) arrayMap2.get(str);
        if (l == null) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.a("First ad unit exposure time was never set");
        } else {
            long jLongValue = j2 - l.longValue();
            arrayMap2.remove(str);
            zzdVar.l(str, jLongValue, zzluVarK);
        }
        if (arrayMap.isEmpty()) {
            long j3 = zzdVar.d;
            if (j3 == 0) {
                zzic.m(zzguVar2);
                zzguVar2.f31769f.a("First ad exposure time was never set");
            } else {
                zzdVar.k(j2 - j3, zzluVarK);
                zzdVar.d = 0L;
            }
        }
    }
}
