package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzai implements zzao, zzak {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f30529c = new HashMap();

    public zzai(String str) {
        this.f30528b = str;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return new zzaj(this.f30529c.keySet().iterator());
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public zzao Q() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final zzao a(String str) {
        HashMap map = this.f30529c;
        return map.containsKey(str) ? (zzao) map.get(str) : zzao.k0;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final void b(String str, zzao zzaoVar) {
        HashMap map = this.f30529c;
        if (zzaoVar == null) {
            map.remove(str);
        } else {
            map.put(str, zzaoVar);
        }
    }

    public abstract zzao c(zzg zzgVar, List list);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        String str = this.f30528b;
        if (str != null) {
            return str.equals(zzaiVar.f30528b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return this.f30528b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        return "toString".equals(str) ? new zzas(this.f30528b) : zzak.f(this, new zzas(str), zzgVar, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        String str = this.f30528b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzak
    public final boolean i(String str) {
        return this.f30529c.containsKey(str);
    }
}
