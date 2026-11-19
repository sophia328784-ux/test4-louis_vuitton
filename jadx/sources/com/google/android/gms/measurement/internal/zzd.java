package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzd extends zzf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f31649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayMap f31650c;
    public long d;

    public zzd(zzic zzicVar) {
        super(zzicVar);
        this.f31650c = new ArrayMap();
        this.f31649b = new ArrayMap();
    }

    public final void h(long j2, String str) {
        zzic zzicVar = this.f31850a;
        if (str == null || str.length() == 0) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Ad unit id must be a non-empty string");
        } else {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zza(this, str, j2));
        }
    }

    public final void i(long j2, String str) {
        zzic zzicVar = this.f31850a;
        if (str == null || str.length() == 0) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Ad unit id must be a non-empty string");
        } else {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zzb(this, str, j2));
        }
    }

    public final void j(long j2) {
        zzmb zzmbVar = this.f31850a.l;
        zzic.l(zzmbVar);
        zzlu zzluVarK = zzmbVar.k(false);
        ArrayMap arrayMap = this.f31649b;
        for (String str : arrayMap.keySet()) {
            l(str, j2 - ((Long) arrayMap.get(str)).longValue(), zzluVarK);
        }
        if (!arrayMap.isEmpty()) {
            k(j2 - this.d, zzluVarK);
        }
        m(j2);
    }

    public final void k(long j2, zzlu zzluVar) {
        zzic zzicVar = this.f31850a;
        if (zzluVar == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Not logging ad exposure. No active activity");
        } else if (j2 < 1000) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.n.b(Long.valueOf(j2), "Not logging ad exposure. Less than 1000 ms. exposure");
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j2);
            zzpp.c0(zzluVar, bundle, true);
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.n("am", "_xa", bundle);
        }
    }

    public final void l(String str, long j2, zzlu zzluVar) {
        zzic zzicVar = this.f31850a;
        if (zzluVar == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Not logging ad unit exposure. No active activity");
        } else {
            if (j2 < 1000) {
                zzgu zzguVar2 = zzicVar.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.n.b(Long.valueOf(j2), "Not logging ad unit exposure. Less than 1000 ms. exposure");
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j2);
            zzpp.c0(zzluVar, bundle, true);
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.n("am", "_xu", bundle);
        }
    }

    public final void m(long j2) {
        ArrayMap arrayMap = this.f31649b;
        Iterator it = arrayMap.keySet().iterator();
        while (it.hasNext()) {
            arrayMap.put((String) it.next(), Long.valueOf(j2));
        }
        if (arrayMap.isEmpty()) {
            return;
        }
        this.d = j2;
    }
}
