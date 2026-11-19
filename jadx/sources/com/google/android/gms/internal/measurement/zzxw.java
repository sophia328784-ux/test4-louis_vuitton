package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzxw extends zzyl {
    @Override // com.google.android.gms.internal.measurement.zzyl
    public final void b(Object obj, zzzc zzzcVar) {
        zzabe zzabeVar = (zzabe) obj;
        if (zzabeVar == null) {
            return;
        }
        zzabb zzabbVar = (zzabb) zzabeVar.f30340a.d;
        zzabbVar.getClass();
        zzaba zzabaVar = new zzaba(zzabbVar);
        while (zzabaVar.hasNext()) {
            Map.Entry entry = (Map.Entry) zzabaVar.next();
            if (((Set) entry.getValue()).isEmpty()) {
                zzzcVar.a(null, (String) entry.getKey());
            } else {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    zzzcVar.a(it.next(), (String) entry.getKey());
                }
            }
        }
    }
}
