package com.google.android.gms.internal.fido;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhk extends zzhp {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f29910b;

    public zzhk(long j2) {
        this.f29910b = j2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzhp zzhpVar = (zzhp) obj;
        if (d0() != zzhpVar.d0()) {
            return d0() - zzhpVar.d0();
        }
        long jAbs = Math.abs(this.f29910b);
        long jAbs2 = Math.abs(((zzhk) zzhpVar).f29910b);
        if (jAbs < jAbs2) {
            return -1;
        }
        return jAbs > jAbs2 ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.fido.zzhp
    public final int d0() {
        return zzhp.c(this.f29910b >= 0 ? (byte) 0 : (byte) 32);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && zzhk.class == obj.getClass() && this.f29910b == ((zzhk) obj).f29910b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(d0()), Long.valueOf(this.f29910b)});
    }

    public final String toString() {
        return Long.toString(this.f29910b);
    }
}
