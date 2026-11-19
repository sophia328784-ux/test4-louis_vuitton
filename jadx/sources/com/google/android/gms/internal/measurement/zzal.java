package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class zzal implements zzao, zzak {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f30563b = new HashMap();

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return new zzaj(this.f30563b.keySet().iterator());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        zzal zzalVar = new zzal();
        for (Map.Entry entry : this.f30563b.entrySet()) {
            boolean z = entry.getValue() instanceof zzak;
            HashMap map = zzalVar.f30563b;
            if (z) {
                map.put((String) entry.getKey(), (zzao) entry.getValue());
            } else {
                map.put((String) entry.getKey(), ((zzao) entry.getValue()).Q());
            }
        }
        return zzalVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzao a(String str) {
        HashMap map = this.f30563b;
        return map.containsKey(str) ? (zzao) map.get(str) : zzao.k0;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void b(String str, zzao zzaoVar) {
        HashMap map = this.f30563b;
        if (zzaoVar == null) {
            map.remove(str);
        } else {
            map.put(str, zzaoVar);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzal) {
            return this.f30563b.equals(((zzal) obj).f30563b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        return "toString".equals(str) ? new zzas(toString()) : zzak.f(this, new zzas(str), zzgVar, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f30563b.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean i(String str) {
        return this.f30563b.containsKey(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap map = this.f30563b;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }
}
