package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzap implements zzao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30567c;

    public zzap(String str, List list) {
        this.f30566b = str;
        ArrayList arrayList = new ArrayList();
        this.f30567c = arrayList;
        arrayList.addAll(list);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzap)) {
            return false;
        }
        zzap zzapVar = (zzap) obj;
        String str = zzapVar.f30566b;
        String str2 = this.f30566b;
        if (str2 == null ? str == null : str2.equals(str)) {
            return this.f30567c.equals(zzapVar.f30567c);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    public final int hashCode() {
        String str = this.f30566b;
        return this.f30567c.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }
}
