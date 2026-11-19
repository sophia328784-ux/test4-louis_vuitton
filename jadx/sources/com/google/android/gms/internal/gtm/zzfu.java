package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfu extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Double dValueOf = Double.valueOf(Double.NaN);
        Double dValueOf2 = Double.valueOf(0.0d);
        Preconditions.a(zzkkVarArr.length == 2);
        double dB = zzdj.b(zzkkVarArr[0]);
        double dB2 = zzdj.b(zzkkVarArr[1]);
        if (Double.isNaN(dB) || Double.isNaN(dB2)) {
            return new zzkm(dValueOf);
        }
        if (Double.isInfinite(dB) && Double.isInfinite(dB2)) {
            return new zzkm(dValueOf);
        }
        boolean z = (((double) Double.compare(dB, 0.0d)) < 0.0d) ^ (((double) Double.compare(dB2, 0.0d)) < 0.0d);
        if (Double.isInfinite(dB) && !Double.isInfinite(dB2)) {
            return new zzkm(Double.valueOf(true != z ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY));
        }
        if (!Double.isInfinite(dB) && Double.isInfinite(dB2)) {
            return new zzkm(dValueOf2);
        }
        if (dB == 0.0d) {
            return dB2 == 0.0d ? new zzkm(dValueOf) : new zzkm(dValueOf2);
        }
        if (Double.isInfinite(dB) || dB == 0.0d || dB2 != 0.0d) {
            return new zzkm(Double.valueOf(dB / dB2));
        }
        return new zzkm(Double.valueOf(true != z ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY));
    }
}
