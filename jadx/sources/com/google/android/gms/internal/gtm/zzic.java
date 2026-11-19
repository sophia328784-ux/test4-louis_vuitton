package com.google.android.gms.internal.gtm;

import android.os.Build;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.pq0;

/* JADX INFO: loaded from: classes2.dex */
public final class zzic implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        return new zzkv(pq0.k(Build.VERSION.SDK_INT, "5.06-"));
    }
}
