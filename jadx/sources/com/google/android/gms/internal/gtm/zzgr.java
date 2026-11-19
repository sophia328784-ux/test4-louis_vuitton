package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgr extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        if (zzkkVarArr.length > 0) {
            zzkkVar = zzkkVarArr[0];
            Preconditions.h(zzkkVar);
        } else {
            zzkkVar = zzko.f30172h;
        }
        try {
            return new zzkv(zzgq.c(zzdj.d(zzkkVar), "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.!~*'()"));
        } catch (UnsupportedEncodingException unused) {
            return zzko.f30172h;
        }
    }
}
