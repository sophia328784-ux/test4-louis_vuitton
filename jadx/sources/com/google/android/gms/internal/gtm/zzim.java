package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzim extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 2);
        try {
            double dB = zzdj.b(zzkkVarArr[0]);
            double dB2 = zzdj.b(zzkkVarArr[1]);
            return (Double.isNaN(dB) || Double.isNaN(dB2)) ? new zzkl(Boolean.FALSE) : new zzkl(Boolean.valueOf(c(dB, dB2)));
        } catch (IllegalArgumentException unused) {
            return new zzkl(Boolean.FALSE);
        }
    }

    public abstract boolean c(double d, double d2);
}
