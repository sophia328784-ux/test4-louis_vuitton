package com.google.android.gms.internal.gtm;

import defpackage.md;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfd extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < zzkkVarArr.length - 1; i2 += 2) {
            String strD = zzdj.d(zzkkVarArr[i2]);
            zzkk zzkkVar = zzkkVarArr[i2 + 1];
            if ((zzkkVar instanceof zzko) && zzkkVar != zzko.g && zzkkVar != zzko.f30172h) {
                md.k("Illegal InternalType found in CreateObject.");
                return null;
            }
            map.put(strD, zzkkVar);
        }
        return new zzks(map);
    }
}
