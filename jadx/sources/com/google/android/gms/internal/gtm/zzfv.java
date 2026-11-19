package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfv extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Double dValueOf = Double.valueOf(Double.NaN);
        Preconditions.a(zzkkVarArr.length == 2);
        double dB = zzdj.b(zzkkVarArr[0]);
        double dB2 = zzdj.b(zzkkVarArr[1]);
        if (Double.isNaN(dB) || Double.isNaN(dB2)) {
            return new zzkm(dValueOf);
        }
        if (Double.isInfinite(dB) || dB2 == 0.0d) {
            return new zzkm(dValueOf);
        }
        if (Double.isInfinite(dB) || !Double.isInfinite(dB2)) {
            return (dB != 0.0d || dB2 == 0.0d || Double.isInfinite(dB2)) ? new zzkm(Double.valueOf(dB % dB2)) : new zzkm(Double.valueOf(dB));
        }
        return new zzkm(Double.valueOf(dB));
    }
}
