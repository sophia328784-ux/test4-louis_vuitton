package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfw extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Double dValueOf = Double.valueOf(Double.NaN);
        Preconditions.a(zzkkVarArr.length == 2);
        double dB = zzdj.b(zzkkVarArr[0]);
        double dB2 = zzdj.b(zzkkVarArr[1]);
        if (Double.isNaN(dB) || Double.isNaN(dB2)) {
            return new zzkm(dValueOf);
        }
        if ((Double.isInfinite(dB) && dB2 == 0.0d) || (dB == 0.0d && Double.isInfinite(dB2))) {
            return new zzkm(dValueOf);
        }
        if (Double.isInfinite(dB) || Double.isInfinite(dB2)) {
            return new zzkm(Double.valueOf(true != (((((double) Double.compare(dB, 0.0d)) > 0.0d ? 1 : (((double) Double.compare(dB, 0.0d)) == 0.0d ? 0 : -1)) < 0) ^ (((double) Double.compare(dB2, 0.0d)) < 0.0d)) ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY));
        }
        return new zzkm(Double.valueOf(dB * dB2));
    }
}
