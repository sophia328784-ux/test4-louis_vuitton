package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzam implements zzao {
    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return zzao.l0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof zzam;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return "null";
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        throw new IllegalStateException("null has no function ".concat(str));
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.FALSE;
    }

    public final int hashCode() {
        return 1;
    }
}
