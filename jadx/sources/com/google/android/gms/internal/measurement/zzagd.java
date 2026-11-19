package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzagd extends zzagf {
    @Override // com.google.android.gms.internal.measurement.zzagf
    public final void a(Object obj, long j2, byte b2) {
        if (zzagg.f30480f) {
            zzagg.b(obj, j2, b2);
        } else {
            zzagg.c(obj, j2, b2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final boolean b(long j2, Object obj) {
        return zzagg.f30480f ? zzagg.n(j2, obj) : zzagg.o(j2, obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final void c(Object obj, long j2, boolean z) {
        if (zzagg.f30480f) {
            zzagg.b(obj, j2, z ? (byte) 1 : (byte) 0);
        } else {
            zzagg.c(obj, j2, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final float d(long j2, Object obj) {
        return Float.intBitsToFloat(this.f30475a.getInt(obj, j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final void e(Object obj, long j2, float f2) {
        this.f30475a.putInt(obj, j2, Float.floatToIntBits(f2));
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final double f(long j2, Object obj) {
        return Double.longBitsToDouble(this.f30475a.getLong(obj, j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzagf
    public final void g(Object obj, long j2, double d) {
        this.f30475a.putLong(obj, j2, Double.doubleToLongBits(d));
    }
}
