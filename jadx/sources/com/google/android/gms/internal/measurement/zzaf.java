package com.google.android.gms.internal.measurement;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaf implements zzao {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f30433b;

    public zzaf(Boolean bool) {
        this.f30433b = bool == null ? false : bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Iterator I() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao Q() {
        return new zzaf(Boolean.valueOf(this.f30433b));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzaf) && this.f30433b == ((zzaf) obj).f30433b;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final String f0() {
        return Boolean.toString(this.f30433b);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Double g0() {
        return Double.valueOf(true != this.f30433b ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final zzao h(String str, zzg zzgVar, ArrayList arrayList) {
        boolean zEquals = "toString".equals(str);
        boolean z = this.f30433b;
        if (zEquals) {
            return new zzas(Boolean.toString(z));
        }
        md.n(d21.k(Boolean.toString(z), FileUtils.HIDDEN_PREFIX, str, " is not a function."));
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzao
    public final Boolean h0() {
        return Boolean.valueOf(this.f30433b);
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f30433b).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f30433b);
    }
}
