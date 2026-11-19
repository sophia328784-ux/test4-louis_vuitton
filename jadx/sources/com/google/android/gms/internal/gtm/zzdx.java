package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdx extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        Collections.reverse(((zzkr) zzkkVarArr[0]).f30180b);
        return zzkkVarArr[0];
    }
}
